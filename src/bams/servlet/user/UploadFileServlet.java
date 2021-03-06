package bams.servlet.user;

import javax.servlet.*;  
import javax.servlet.http.*;  

import java.io.*;  
import java.util.*;

import org.apache.commons.fileupload.*;  
import org.apache.commons.fileupload.servlet.*;  
import org.apache.commons.fileupload.disk.*;  

import bams.service.FileService;
 
// Servlet 文件上传  
public class UploadFileServlet extends HttpServlet
{  
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String filePath;    // 文件存放目录  
    private String tempPath;    // 临时文件目录  
    
    String basePath;
    String relativePath;
    // 初始化  
    public void init(ServletConfig config) throws ServletException
    {  
        super.init(config);  
        // 从配置文件中获得初始化参数 
        
        filePath = config.getInitParameter("filepath");  
        tempPath = config.getInitParameter("temppath");  
        relativePath = config.getInitParameter("filepath");
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
    	List<bams.entity.File> filelist = new ArrayList<bams.entity.File>();
        response.setContentType("text/plain;charset=UTF-8");
        String path = request.getContextPath();
    	basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
        
        FileService service = new FileService();
        
        
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
                System.out.println("field name:"+item.getFieldName());
                if(item.isFormField())
                {  
                    System.out.println("处理表单内容 ...");
                    processFormField(item);
                }else{  
                    System.out.println("处理上传的文件 ...");
                    processUploadFile(item,filelist);  
                }  
            }// end while()
            
            for(int j=0;j<filelist.size();j++){
            	String test = filelist.get(j).getFilename();
            	if(test==null||test.trim().equals("")){
            		filelist.remove(j);
            	}
            }
            if(service.addFiles(filelist)){
            	this.getServletContext().getRequestDispatcher("/success.jsp").forward(request, response);
            }else{
            	this.getServletContext().getRequestDispatcher("/error.jsp").forward(request, response);
            }
            
            pw.close();
        }catch(Exception e){  
            System.out.println("使用 fileupload 包时发生异常 ...");
            e.printStackTrace();
        }// end try ... catch ...
    }// end doPost()  
 
 
    // 处理表单内容  
    private void processFormField(FileItem item)  
        throws Exception  
    {  
        String name = item.getFieldName();
        String value = item.getString();          
        System.out.println(name + " : " + value + "\r\n");
    }  
      
    // 处理上传的文件  
    private void processUploadFile(FileItem item, List<bams.entity.File> filelist)
        throws Exception  
    {  
        // 此时的文件名包含了完整的路径，得注意加工一下 
        String filename = item.getName();
        if(null==filename||filename.equals("")){
        	 System.out.println("文件名为空 ...");
             return;
        }
       // filename = new String(filename.getBytes("gbk"), "UTF-8");
        System.out.println("完整的文件名：" + filename);
        int index = filename.lastIndexOf("\\");
        filename = filename.substring(index + 1, filename.length());
 
        long fileSize = item.getSize();
 
        if(fileSize == 0)
        {             
            System.out.println("文件为空 ...");
            return;
        }
 
        File uploadFile = new File(filePath + "/" + filename);
        bams.entity.File file = new bams.entity.File();
        file.setFilename(filename);
        file.setFileurl(basePath+relativePath+ "/"+filename);
        filelist.add(file);
        item.write(uploadFile);  
        //pw.println(filename + " 文件保存完毕 ...");
        System.out.println(filePath);
        //pw.println("文件大小为 ：" + fileSize + "\r\n");
    }  
      
    // doGet  
    public void doGet(HttpServletRequest req, HttpServletResponse res)  
        throws IOException, ServletException  
    {  
        doPost(req, res);  
    }  
} 