package bams.servlet.policy;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bams.entity.PolicyIndex;
import bams.service.DataToWordService;
import bams.service.PolicyIndexService;

public class DownPolicyAsMSWord extends HttpServlet {

	private String filePath;
	private String tempPath;
	
	private String tag;
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * Constructor of the object.
	 */
	public DownPolicyAsMSWord() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		filePath = config.getInitParameter("filepath");
		tempPath = config.getInitParameter("temppath");
		ServletContext context = this.getServletContext();
		filePath = context.getRealPath(filePath);
		tempPath = context.getRealPath(tempPath);
	}

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//保存最近一个月的下载文件，超过一个月就会被删除
		File file = new File(tempPath);
		File files[] = file.listFiles();
		long onemonth = 30*24*60*60;
		onemonth = onemonth*1000;
		
		for(int i=0;i<files.length;i++){
			//System.out.println(files[i].getName());
			long lasttime = files[i].lastModified();
			long current = System.currentTimeMillis();
			long cha = current - lasttime;
			//Date date = new Date(lasttime);
			if(cha>onemonth){
				files[i].delete();
			}
		}
		tag = request.getParameter("tag");
		PolicyIndexService s = new PolicyIndexService();
		PolicyIndex policyindex = s.getPolicyIndexByTag(tag);
		String tablename = policyindex.getTablename();
		DataToWordService service = new DataToWordService();
		service.setDownloadPath(tempPath+"/");//下载文件临时文件夹
		service.setTemplateWordPath(filePath+"/");//word 模板存放文件夹
		String ffname = policyindex.getPolicyname()+".doc";
		service.setPolicyname(ffname);
		boolean mark = false;
		//查看待下载的文件是否已经存在
		for(int i=0;i<files.length;i++){
			if(files[i].getName().equals(ffname)){
				mark = true;
				System.out.println("the "+ffname+" is already exsits");
			}
				
		}
		
		if(mark){//已经存在，直接下载
			download(tempPath+"/"+ffname,request,response);
		}else{//不存在，向数据库访问，生成word文档
			String fileName = getData(tablename,service,tag);
			
			download(fileName,request,response);
		}
		
		
	}
	
	private String getData(String tablename,DataToWordService service,String tag){
		String filename="";
		if(tablename.equals("allproperty")){
			filename = service.getAllPropertyFile(tag);//the doc file is written to /temp.
		}else if(tablename.equals("employerduty")){
			filename = service.getEmployerDutyFile(tag);//the doc file is written to /temp.
		}else if(tablename.equals("enterprisepackage")){
			filename = service.getEnterprisePackageFile(tag);
		}else if(tablename.equals("family")){
			filename = service.getFamilyFile(tag);
		}else if(tablename.equals("freight")){
			filename = service.getFreightFile(tag);
		}else if(tablename.equals("office")){
			filename = service.getOfficeFile(tag);
		}else if(tablename.equals("vehicle")){
			filename = service.getVehicleFile(tag);
		}
		return filename;
	}
	
	public HttpServletResponse download(String path,
			HttpServletRequest request, HttpServletResponse response) {
		try {
			// path是指欲下载的文件的路径。
			File file = new File(path);
			// 取得文件名。
			String filename = file.getName();
			// 取得文件的后缀名。
			// String ext = filename.substring(filename.lastIndexOf(".") +
			// 1).toUpperCase();

			// 以流的形式下载文件。
			InputStream fis = new BufferedInputStream(new FileInputStream(file));
			byte[] buffer = new byte[fis.available()];
			fis.read(buffer);
			fis.close();
//			 Date dt = new Date(System.currentTimeMillis());
//		     SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSSS");
//		     String   fileName   =   sdf.format(dt);
		     String temp = filename;
			// 清空response
			response.reset();
			// 设置response的Header
			response.addHeader("Content-Disposition", "attachment;filename="
					+ encodingFileName(temp));
			response.addHeader("Content-Length", "" + file.length());
			OutputStream toClient = new BufferedOutputStream(
					response.getOutputStream());
			response.setContentType("application/octet-stream");
			toClient.write(buffer);
			toClient.flush();
			toClient.close();
		} catch (IOException ex) {
			ex.printStackTrace();
		}
		return response;
	}
	
	public static String encodingFileName(String fileName) { 
        String returnFileName = ""; 
        try { 
            returnFileName = URLEncoder.encode(fileName, "UTF-8");
            returnFileName = returnFileName.replace( "+", "%20");
            if (returnFileName.length() > 150) { 
                returnFileName = new String(fileName.getBytes("GB2312"), "ISO8859-1"); 
                returnFileName = returnFileName.replace(" ", "%20"); 
            } 
        } catch (UnsupportedEncodingException e) { 
            e.printStackTrace(); 
           
        } 
        return returnFileName; 
    } 

}
