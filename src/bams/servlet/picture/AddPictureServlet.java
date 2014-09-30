package bams.servlet.picture;


import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.*;  
import org.apache.commons.fileupload.servlet.*;  
import org.apache.commons.fileupload.disk.*;  

import bams.entity.Case;
import bams.service.PictureService;

public class AddPictureServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * Constructor of the object.
	 */
	public AddPictureServlet() {
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
		response.setContentType("text/html;charset=utf-8");
		//PrintWriter out = response.getWriter();
		Case c = new Case();
		try {
			boolean isMultipart = ServletFileUpload.isMultipartContent(request);
			 if (isMultipart) {
			  // Create a factory for disk-based file items
			  org.apache.commons.fileupload.FileItemFactory factory = new DiskFileItemFactory();

			  // Create a new file upload handler
			  ServletFileUpload upload = new ServletFileUpload(factory);
			  // Parse the request
			  @SuppressWarnings("unchecked")
			  List<FileItem> items = upload.parseRequest(request);

			  // Process the uploaded items
			  Iterator<FileItem> iter = items.iterator();
			 
			  while (iter.hasNext()) {
				  FileItem item = (FileItem) iter.next();
				  
				  //if(item.isFormField()) {
					  String name = item.getFieldName();
					  System.out.println(name);
					  String value = item.getString("UTF-8");
					  if(name.equals("baodanhao")){
						  c.setBaoxiandanhao(value);
					  }else if(name.equals("shigujingguo")){
						  c.setShigujingguo(value);
					  }else if(name.equals("tel")){
						  c.setTel(value);
					  }
					  //params.put(name.toUpperCase(), value.trim());
				 // }
			
			  }
			
			 }
		} catch (FileUploadException e) {
			e.printStackTrace();
		}
		
		
		String username = (String)request.getSession().getAttribute("name");
		c.setUsername(username);
		
		
		PictureService service = new PictureService();
		if(service.addCase(c)){
			request.getRequestDispatcher("/servlet/UploadPictureServlet").forward(request, response);
		}else{
			request.setAttribute("errMsg", "理赔报案失败，请重新提交");
			request.getRequestDispatcher("/error.jsp").forward(request, response);
		}
		//doGet(request,response);
	}

}
