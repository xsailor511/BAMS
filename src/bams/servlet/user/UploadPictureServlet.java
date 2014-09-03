package bams.servlet.user;

import javax.servlet.*;  
import javax.servlet.http.*;  

import java.io.*;  
import java.util.*;  

import org.apache.commons.fileupload.*;  
import org.apache.commons.fileupload.servlet.*;  
import org.apache.commons.fileupload.disk.*;  

import bams.entity.Picture;
import bams.service.PictureService;
 
// Servlet 文件上传  
public class UploadPictureServlet extends HttpServlet  
{  
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String filePath;    // 文件存放目录 
    private String tempPath;    // 临时文件目录
    String name;
    String basePath;
    String relativePath;
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
      
    // doPost  
    public void doPost(HttpServletRequest request, HttpServletResponse response)  
        throws IOException, ServletException
    {
    	response.setContentType("text/plain;charset=UTF-8");
    	String path = request.getContextPath();
    	basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    	name = (String)request.getSession().getAttribute("name");
        
        PictureService service = new PictureService();
        List<Picture> picturelist = new ArrayList<Picture>();
        
        PrintWriter pw = response.getWriter();
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
                if(fieldname.equals("commonfile"))
                {  
                	System.out.println("处理file ...");
                	Picture picture = new Picture();
                	
                	 //System.out.println("field value: "+item.getString());
                	processUploadFile(item,picture);
                	
                	FileItem item2 = (FileItem)iter.next();
                	processFormField(item2,picture);
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
            if(service.addPictures(picturelist)){
            	this.getServletContext().getRequestDispatcher("/success.jsp").forward(request, response);
            }else{
            	this.getServletContext().getRequestDispatcher("/error.jsp").forward(request, response);
            }
            //pw.close();
        }catch(Exception e){  
            System.out.println("使用 fileupload 包时发生异常 ...");  
            e.printStackTrace();  
        }// end try ... catch ...
    }// end doPost()  
 
 
    // 处理表单内容  
    private void processFormField(FileItem item,Picture picture)  
        throws Exception  
    {  
        String name = item.getFieldName();
        String value = item.getString();
        //System.out.println("value encoding before   "+getEncoding(value));//ISO-8859-1
        value = new String(value.getBytes(getEncoding(value)), "UTF-8");
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
        //System.out.println("filename----"+filename);//print correctly.
       // System.out.println("before===="+getEncoding(filename));//GB2312
        //filename = new String(filename.getBytes(getEncoding(filename)), "UTF-8");
        //System.out.println("完整的文件名：" + filename);//UTF-8. we think that gb2312 is included in UTF-8, but how can this happen?
        
        int index = filename.lastIndexOf("\\");
        filename = filename.substring(index + 1, filename.length());
 
        long fileSize = item.getSize();  
 
        if("".equals(filename) && fileSize == 0)
        {             
            System.out.println("文件名为空 ...");  
            return;  
        }
 
        File uploadFile = new File(filePath + "/" + name+"_"+filename);
        item.write(uploadFile);
        System.out.println(filename + " 文件保存完毕 ...");
        //System.out.println(filePath);
        System.out.println("文件大小为 ：" + fileSize + "\r\n");
        picture.setPicture_owner(name);
        picture.setPicture_name(name+"_"+filename);
        picture.setPicture_url(basePath + relativePath + "/"+name+"_"+filename);
    }  
      
    // doGet  
    public void doGet(HttpServletRequest req, HttpServletResponse res)  
        throws IOException, ServletException  
    {  
        doPost(req, res);  
    }
    
    
    public  String getEncoding(String str) {
        String encode = "GB2312";
        try {
            if (str.equals(new String(str.getBytes(encode), encode))) {
                String s = encode;
                return s;
            }
        } catch (Exception exception) {
        }
        encode = "ISO-8859-1";
        try {
            if (str.equals(new String(str.getBytes(encode), encode))) {
                String s1 = encode;
                return s1;
            }
        } catch (Exception exception1) {
        }
        encode = "UTF-8";
        try {
            if (str.equals(new String(str.getBytes(encode), encode))) {
                String s2 = encode;
                return s2;
            }
        } catch (Exception exception2) {
        }
        encode = "GBK";
        try {
            if (str.equals(new String(str.getBytes(encode), encode))) {
                String s3 = encode;
                return s3;
            }
        } catch (Exception exception3) {
        }
        return "";
    }
} 
