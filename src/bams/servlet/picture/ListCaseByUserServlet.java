package bams.servlet.picture;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bams.entity.Case;
import bams.service.PictureService;

public class ListCaseByUserServlet extends HttpServlet {

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

		String username = (String)request.getSession().getAttribute("name");
		String page = request.getParameter("page");
		String str_start = request.getParameter("start");
		int start =0 ;
		if(str_start!=null){
			start = Integer.parseInt(str_start);
		}
		int mark = 0;
		if(page.equals("replyed")){
			mark = 1;
		}else{
			mark = 0;
		}
		PictureService service = new PictureService();
		List<Case> caselist = service.listCaseByUser(username, start, mark);
		request.setAttribute("caselist", caselist);
		String url = "";
		if(mark ==1){
			url = "/jsp/user/lipeibaoanreplyed.jsp?start="+start;
		}else{
			url = "/jsp/user/lipeibaoanunreply.jsp?start="+start;
		}
		request.getRequestDispatcher(url).forward(request, response);
		
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
