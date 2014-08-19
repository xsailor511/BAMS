/**
 * 
 */
package bams.servlet.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bams.service.UserService;

/**
 * @author xsailor
 *
 */
public class LoginServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html;charset=utf-8");
        try{
	      	String name=request.getParameter("name");
	      	String password=request.getParameter("password");
	      	UserService userService=new UserService();
	      	HttpSession session=request.getSession();
	        PrintWriter out = response.getWriter();
	      	if(userService.login(name,password)){
	    	  	session.setAttribute("name",name);
		        out.println("<center><font color='blue'>你已登录成功！</font></center>");
	      	}else{
		        out.println("<center><font color='red'>用户名或密码错误!</font><a href='#' onclick='history.back();'>返回</a></center>");
	      	}
        }catch(Exception e){
        	e.printStackTrace();
    		request.setAttribute("errMsg","登录出错！");
		 	this.getServletContext().getRequestDispatcher("/error.jsp").forward(request,response);  
		 	return;
        }
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request,response);
	}
}
