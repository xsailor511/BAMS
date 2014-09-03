package bams.servlet.user;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bams.service.FileService;

public class DeleteFileServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String filePath;    // 文件存放目录 
	/**
	 * Constructor of the object.
	 */
	public DeleteFileServlet() {
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
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter writer = response.getWriter();
		String filename = request.getParameter("filename");
		FileService service = new FileService();
		filename = new String(filename.getBytes(getEncoding(filename)), "UTF-8");
		//System.out.println("filename encoding:"+getEncoding(filename));
		File file=null;
		boolean result=false;
		try {
			file = new File(filePath+"\\"+filename);
			if(file.exists())
				result = file.delete();
			else
				result = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		//System.out.println("result:"+result);
		if(result&&service.deleteFile(filename)){
			writer.write("success");
		}else{
			writer.write("failed");
		}
		writer.flush();
		writer.close();
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

		doGet(request, response);
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		filePath = config.getInitParameter("filepath");
		ServletContext context = this.getServletContext();
		filePath = context.getRealPath(filePath);
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
