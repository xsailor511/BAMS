package bams.servlet.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bams.service.UserService;

public class DeleteServlet extends HttpServlet {
	/**
	 * @author xsailor
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		UserService userService=new UserService();
		try {
			if(userService.deleteUser(name)){
				PrintWriter writer = response.getWriter();
				writer.write("success");
				writer.flush();
				writer.close();
			}
		} catch (Exception e) {
			PrintWriter writer = response.getWriter();
			writer.write("failed");
			writer.flush();
			writer.close();
			e.printStackTrace();
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request,response);
	}
}
