package bams.servlet.user;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import bams.entity.File;
import bams.service.FileService;
import bams.util.StringUtil;

public class SearchFileServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * Constructor of the object.
	 */
	public SearchFileServlet() {
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
		response.setContentType("text/html");
		//PrintWriter out = response.getWriter();
		String key = request.getParameter("key");
		key = new String(key.getBytes(StringUtil.getEncoding(key)),"UTF-8");
		System.out.println(key);
		FileService fs = new FileService();
		List<File> filelist= fs.searchFile(key);
		request.setAttribute("filelist", filelist);
		String result = "";
		if(filelist.size()>0){
			result = "some";
		}else{
			result = "none";
		}
		request.getRequestDispatcher("/jsp/user/queryfile.jsp?key="+key+"&result="+result).forward(request, response);
	
		//Gson gson = new Gson();
		//String jsonstring = gson.toJson(filelist);
		//System.out.println(StringUtil.getEncoding(jsonstring));
		//jsonstring = new String(jsonstring.getBytes(StringUtil.getEncoding(jsonstring)),"UTF-8");
		//out.write(jsonstring);
		//out.flush();
		//out.close();
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
	public void init() throws ServletException {
		// Put your code here
	}

}
