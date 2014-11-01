package bams.servlet.goal;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import bams.entity.Goods;
import bams.service.GoodsService;

public class AddGoodsServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String filePath;    // 文件存放目录 
    private String tempPath;    // 临时文件目录

    String basePath;
    String relativePath;
   
    public void init(ServletConfig config) throws ServletException
    {  
        super.init(config);  
        // 从配置文件中获得初始化参数 
        
        filePath = config.getInitParameter("filepath");
        relativePath = config.getInitParameter("filepath");
        tempPath = config.getInitParameter("temppath");
       // System.out.println("filepaht;alksdfkla==="+filePath);
        ServletContext context = getServletContext();  
 
        filePath = context.getRealPath(filePath);
        //filePath = "D://";
        tempPath = context.getRealPath(tempPath);  
        //System.out.println("文件存放目录、临时文件目录准备完毕 ...");  
    }  

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
		
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		 List<String> descriptionlist = new ArrayList<String>();
		    List<String> valuelist = new ArrayList<String>();
		    List<String> urllist = new ArrayList<String>();
    	response.setContentType("text/plain;charset=UTF-8");
    	
    	String path = request.getContextPath();
    	basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
        
        GoodsService service = new GoodsService();
        List<Goods> goodslist = new ArrayList<Goods>();
        
        //PrintWriter pw = response.getWriter();
        try{  
            DiskFileItemFactory diskFactory = new DiskFileItemFactory();  
            // threshold 极限、临界值，即硬盘缓存 1M  
            diskFactory.setSizeThreshold(4 * 1024);
            // repository 贮藏室，即临时文件目录  
            diskFactory.setRepository(new File(tempPath));
          
            ServletFileUpload upload = new ServletFileUpload(diskFactory);  
            // 设置允许上传的最大文件大小 4M  
            upload.setSizeMax(4 * 1024 * 1024);  
            // 解析HTTP请求消息头  
            @SuppressWarnings("unchecked")
			List<FileItem> fileItems = upload.parseRequest(request);
            Iterator<FileItem> iter = fileItems.iterator();
           
            while(iter.hasNext())
            {  
                FileItem item = (FileItem)iter.next();
                String fieldname = item.getFieldName();
               
                System.out.println("field name:"+fieldname);
                String value = item.getString("UTF-8");
               // System.out.println("value :"+value);
				  if(fieldname.equals("description")){
					  descriptionlist.add(value);
				  }else if(fieldname.equals("value")){
					  valuelist.add((value));
				  }else if(fieldname.equals("commonfile")){
                	System.out.println("处理goods图片 ...");
                	processUploadFile(item,urllist);
				  }
            }// end while()
            for(int i=0;i<urllist.size();i++){
            	 Goods goods = new Goods();
            	 goods.setDescription(descriptionlist.get(i));
            	 goods.setValue(Integer.parseInt(valuelist.get(i)));
            	 goods.setImageURL(urllist.get(i));
            	 if(goods.getImageURL()!=null&&!goods.getImageURL().equals(""))
            		 goodslist.add(goods);
            }
            if(service.addGoods(goodslist)){
            	request.setAttribute("errMsg", "商品添加成功");
                this.getServletContext().getRequestDispatcher("/success.jsp").forward(request, response);
            }else{
                request.setAttribute("errMsg", "商品添加失败");
                this.getServletContext().getRequestDispatcher("/error.jsp").forward(request, response);
            }
    		
            
            //pw.close();
        }catch(Exception e){  
            System.out.println("使用 fileupload 包时发生异常 ...");  
            e.printStackTrace();  
        }// end try ... catch ...
    
	}
	
      
    // 处理上传的文件  
    private void processUploadFile(FileItem item,List<String> urllist) throws Exception  {  
        // 此时的文件名包含了完整的路径，得注意加工一下  
        String filename = item.getName();
        if(filename==null||"".equals(filename)){
        	System.out.println("文件名为空 ...");  
            return;  
        }
        int index = filename.lastIndexOf(".");
       String suffix = filename.substring(index);
 
        long fileSize = item.getSize();  
 
        if(fileSize == 0)
        {             
            System.out.println("文件为空 ...");  
            return;  
        }
        Date dt = new Date(System.currentTimeMillis());
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSSS");
        String   fileName   =   sdf.format(dt);
        System.out.println(fileName);
        fileName = fileName+suffix;
        File uploadFile = new File(filePath + "/" +fileName);
        item.write(uploadFile);
        System.out.println(fileName + " 文件保存完毕 ...");
        //System.out.println(filePath);
        System.out.println("文件大小为 ：" + fileSize + "\r\n");
        urllist.add(basePath + relativePath + "/"+fileName);
    }


}
