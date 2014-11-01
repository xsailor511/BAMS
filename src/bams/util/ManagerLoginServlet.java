package bams.util;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ManagerLoginServlet extends HttpServlet {

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
		String password=request.getParameter("password");
		String username=request.getParameter("username");
		ManagerUtil mu = new ManagerUtil();
		
		HttpSession session=request.getSession();
		if(password.equals(mu.getPassword())){
			if(username.equals(mu.getUsername())){
				session.setAttribute("role", 5);
				session.setAttribute("name", username);
				this.getServletContext()
	    	  	.getRequestDispatcher("/jsp/user/loginAction.jsp")
	    	  	.forward(request,response);
			}else{
				request.setAttribute("error", "wrongusername");
				this.getServletContext()
	    	  	.getRequestDispatcher("/jsp/manage/manager_login.jsp?error=wrongusername")
	    	  	.forward(request,response);
			}
		}else{
			request.setAttribute("error", "wrongpassword");
			this.getServletContext()
    	  	.getRequestDispatcher("/jsp/manage/manager_login.jsp?error=wrongpassword")
    	  	.forward(request,response);
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

		doGet(request,response);
	}

}
