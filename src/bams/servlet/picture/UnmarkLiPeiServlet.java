package bams.servlet.picture;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bams.service.PictureService;

public class UnmarkLiPeiServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;


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
		String str_id = request.getParameter("id");
		int id = 0;
		if(str_id!=null){
			id = Integer.parseInt(str_id);
		}
		PictureService service = new PictureService();
		System.out.println("un mark id  "+id);
		if(service.unmarkCase(id)){
			request.getRequestDispatcher("/servlet/DeleteReplyCaseServlet?case_id="+id)
			.forward(request, response);
		}else{
			request.setAttribute("errMsg", "unmark case failed");
			request.getRequestDispatcher("/error.jsp")
			.forward(request, response);
		}
		
	
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

}
