/**
 * 
 */
package bams.servlet.user;

import java.io.IOException;
//import java.io.PrintWriter;

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
        	int role = Integer.parseInt(request.getParameter("role"));
        	System.out.println("login servlet role-----"+role);
	      	String name=request.getParameter("name");
	      	String password=request.getParameter("password");
	      	System.out.println("login servlet name-----"+name);
	      	System.out.println("login servlet password-----"+password);
	      	UserService userService=new UserService();
	      	HttpSession session=request.getSession();
	       // PrintWriter out = response.getWriter();
	      	if(userService.login(role,name,password)){
	      		session.setAttribute("role",role);
	    	  	session.setAttribute("name",name);
	    	  	this.getServletContext()
	    	  	.getRequestDispatcher("/jsp/user/loginAction.jsp?name="+name+"&password="+password)
	    	  	.forward(request,response);
		        //out.println("<center><font color='blue'>你已登录成功！</font></center>");
	      	}else{
	      		this.getServletContext()
	    	  	.getRequestDispatcher("/jsp/user/login.jsp?error=yes")
	    	  	.forward(request,response);
	      	}
        }catch(Exception e){
        	e.printStackTrace();
    		request.setAttribute("errMsg","登录出错！");
		 	this.getServletContext().getRequestDispatcher("/error.jsp").forward(request,response);  
		 	return;
        }
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request,response);
	}
}
