package bams.servlet.user;

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

public class FileDownLoadServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String filePath;

	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		filePath = config.getInitParameter("filepath");
		ServletContext context = this.getServletContext();
		filePath = context.getRealPath(filePath);
	}

	@Override
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String filename = request.getParameter("filename");
		//filename = encodingFileName(filename);
		filename = new String(filename.getBytes("ISO-8859-1"), "utf-8");
		download(filePath + "/" + filename, request, response);
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
