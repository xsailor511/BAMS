package bams.servlet.deal;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bams.entity.CaseDeal;
import bams.service.CaseDealService;

public class SearchCaseDealServlet extends HttpServlet {

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
		String key = request.getParameter("key");
		String keytype = request.getParameter("keytype");
		
		CaseDealService cds = new CaseDealService();
		CaseDeal cd = cds.searchCaseDeal(username, key,keytype);
		String result = "";
		request.setAttribute("casedeal", cd);
		if(null==cd.getPolicyname()||cd.getPolicyname().equals("")){
			result = "none";
		}else{
			result = "some";
		}
		request.getRequestDispatcher("/jsp/user/searchpolicy.jsp?key="+key+"&result="+result).forward(request, response);
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

		doGet(request,response);
	}

}
