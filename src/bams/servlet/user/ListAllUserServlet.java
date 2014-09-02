package bams.servlet.user;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import bams.entity.User;
import bams.service.UserService;

public class ListAllUserServlet extends HttpServlet {

	/**
	 * @author xsailor
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int start = 0 ;
		String str_start = request.getParameter("start");
		if(null!=str_start)
			start = Integer.parseInt(str_start);
		UserService service = new UserService();
		List<User> list;
	
		try {
			list = service.listAllUser(start);
			request.setAttribute("userlist", list);
			this.getServletContext()
    	  	.getRequestDispatcher("/jsp/manage/all_user.jsp?start="+start)
    	  	.forward(request,response);
		} catch (Exception e) {

			e.printStackTrace();
		}

		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(req, response);
	}

	
}
