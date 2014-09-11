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
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bams.entity.PolicyIndex;
import bams.service.DataToWordService;
import bams.service.PolicyIndexService;
import bams.util.ZipFileUtil;

public class DownPoliciesAsZip extends HttpServlet {

	private String filePath;
	private String tempPath;
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * Constructor of the object.
	 */
	public DownPoliciesAsZip() {
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
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		filePath = config.getInitParameter("filepath");
		tempPath = config.getInitParameter("tempPath");
		ServletContext context = getServletContext();
		filePath = context.getRealPath(filePath);
		tempPath = context.getRealPath(tempPath);
	}

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = (String)request.getSession().getAttribute("name");
		File file = new File(tempPath);
		File fs[] = file.listFiles();
		for(int i=0;i<fs.length;i++){
			if(fs[i].getName().contains(username)){
				fs[i].delete();
			}
		}
		
		String tags[] = request.getParameterValues("tag");//checkbox value = tag.
		String files[] = new String[tags.length];
		PolicyIndexService s = new PolicyIndexService();
		DataToWordService service = new DataToWordService();
		service.setDownloadPath(tempPath);//下载文件临时文件夹
		service.setTemplateWordPath(filePath);//word 模板存放文件夹
		for(int i=0;i<tags.length;i++){
			PolicyIndex policyindex = s.getPolicyIndexByTag(tags[i]);
			String tablename = policyindex.getTablename();
			files[i] = getData(tablename,service,tags[i]);
		}
		try {
			ZipFileUtil.zipFiles(files, tempPath);
		} catch (Exception e) {
			e.printStackTrace();
		}
		 Date dt = new Date(System.currentTimeMillis());
	     SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSSS");
	     String   fileName   =   sdf.format(dt);
		download(tempPath+username+"_"+fileName+".zip",request,response);
		
	}
	
	private String getData(String tablename,DataToWordService service,String tag){
		String filename = "";
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
