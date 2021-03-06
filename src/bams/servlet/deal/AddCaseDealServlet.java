package bams.servlet.deal;

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

import bams.entity.CaseDeal;
import bams.entity.Picture;
import bams.service.CaseDealService;
import bams.service.PictureService;
import bams.util.StringUtil;

public class AddCaseDealServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String filePath;    // 文件存放目录 
    private String tempPath;    // 临时文件目录
    String name;
    String basePath;
    String relativePath;
    String baodanhao;
 // 初始化  
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
        System.out.println("文件存放目录、临时文件目录准备完毕 ...");  
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
//		String policyname = request.getParameter("policyname");
//		String policynum = request.getParameter("policynum");
//		String username = request.getParameter("username");
//		policyname = new String(policyname.getBytes(StringUtil.getEncoding(policyname)),"UTF-8");
//		policynum = new String(policynum.getBytes(StringUtil.getEncoding(policynum)),"UTF-8");
//		username = new String(username.getBytes(StringUtil.getEncoding(username)),"UTF-8");
//		
//		CaseDeal deal = new CaseDeal();
//		deal.setPolicyname(policyname);
//		deal.setPolicynum(policynum);
//		deal.setUsername(username);
//		CaseDealService service = new CaseDealService();
//		if(service.addCaseDeal(deal)){
//			request.getRequestDispatcher("/success.jsp").forward(request, response);
//		}else{
//			request.setAttribute("errMsg", "添加保单处理失败");
//			request.getRequestDispatcher("/error.jsp").forward(request, response);
//		}
	
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


    	response.setContentType("text/plain;charset=UTF-8");
    	CaseDeal deal = new CaseDeal();
    	
    	String path = request.getContextPath();
    	basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    	//name = (String)request.getSession().getAttribute("name");
        CaseDealService cds = new CaseDealService();
        PictureService service = new PictureService();
        List<Picture> picturelist = new ArrayList<Picture>();
        
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
				  if(fieldname.equals("policynum")){
					  baodanhao = value;
					  deal.setPolicynum(value);
				  }else if(fieldname.equals("policyname")){
					  deal.setPolicyname(value);
				  }else if(fieldname.equals("username")){
					  name = value;
					  deal.setUsername(value);
				  }
                if(fieldname.equals("commonfile"))
                {  
                	System.out.println("处理file ...");
                	Picture picture = new Picture();
                	
                	 //System.out.println("field value: "+item.getString());
                	processUploadFile(item,picture);
                	
                	FileItem item2 = (FileItem)iter.next();
                	processFormField(item2,picture);
                	picture.setBaodanhao(baodanhao);
                    picturelist.add(picture);
                }else if(fieldname.equals("description")){
                    System.out.println("处理text ...");
                }  
            }// end while()
            //检测是否存在空的图片
            for(int j=0;j<picturelist.size();j++){
            	String test = picturelist.get(j).getPicture_name();
            	if(test==null||test.equals("")){
            		picturelist.remove(j);//图片为空则不会添加到数据库，如果填写说明，那么说明也是无效的。
            	}
            }
          
            if(cds.addCaseDeal(deal)){
            	if(service.addPictures(picturelist)){
                	this.getServletContext().getRequestDispatcher("/success.jsp").forward(request, response);
                }else{
                	request.setAttribute("errMsg", "保单添加成功，但是照片添加失败，详细信息联系我们");
                	this.getServletContext().getRequestDispatcher("/error.jsp").forward(request, response);
                }
    		}else{
    			request.setAttribute("errMsg", "保单添加失败，请重新提交");
    			request.getRequestDispatcher("/error.jsp").forward(request, response);
    		}
            
            //pw.close();
        }catch(Exception e){  
            System.out.println("使用 fileupload 包时发生异常 ...");  
            e.printStackTrace();  
        }// end try ... catch ...
    
	}

    // 处理表单内容  
    private void processFormField(FileItem item,Picture picture)  
        throws Exception  
    {  
        String name = item.getFieldName();
        String value = item.getString();
        //System.out.println("value encoding before   "+getEncoding(value));//ISO-8859-1
        value = new String(value.getBytes(StringUtil.getEncoding(value)), "UTF-8");
        picture.setDescription(value);
        System.out.println("-----"+name + " : " + value + "\r\n");
    }  
      
    // 处理上传的文件  
    private void processUploadFile(FileItem item,Picture picture)  
        throws Exception  
    {  
        // 此时的文件名包含了完整的路径，得注意加工一下  
        String filename = item.getName();
        //System.out.println(getEncoding("我的测试"));//GB2312
        System.out.println("filename----"+filename);//print correctly.
       // System.out.println("before===="+getEncoding(filename));//GB2312
        //filename = new String(filename.getBytes(getEncoding(filename)), "UTF-8");
        //System.out.println("完整的文件名：" + filename);//UTF-8. we think that gb2312 is included in UTF-8, but how can this happen?
        if(null==filename||"".equals(filename) ){
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
        picture.setPicture_owner(name);
        picture.setPicture_name(fileName);
        picture.setPicture_url(basePath + relativePath + "/"+fileName);
    }  
}
