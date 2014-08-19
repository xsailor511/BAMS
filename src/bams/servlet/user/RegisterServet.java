/**
 * 
 */
package bams.servlet.user;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bams.service.UserService;

import bams.entity.User;

/**
 * @author Administrator
 *
 */
public class RegisterServet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
        response.setContentType("text/html;charset=utf-8");
    	String name=request.getParameter("name");
    	String role_str = request.getParameter("role");
    	int role = Integer.parseInt(role_str);
    	String password=request.getParameter("password");
    	String confirmPassword=request.getParameter("confirmPassword");
    	String email=request.getParameter("email");
    	String socialid = request.getParameter("socialid");
    	String realname=request.getParameter("realname");
    	String phone=request.getParameter("phone");
    	if(role==0||
    			name==null || name.trim().equals("")||
    			password.trim().equals("") || password.trim().equals("") ||
    			confirmPassword==null || confirmPassword.trim().equals("") || 
    			email==null || email.trim().equals("") || 
    			realname==null || realname.trim().equals("")||
    			socialid==null || socialid.equals("")||
    			phone==null || phone.equals("")){
    			 	request.setAttribute("errMsg","请将必填的数据填写完整!");
    			 	this.getServletContext().getRequestDispatcher("/error.jsp").forward(request,response);
    			 	return;
    	}else if(!password.equals(confirmPassword)){
		 	request.setAttribute("errMsg","两次密码不匹配!");
		 	this.getServletContext().getRequestDispatcher("/error.jsp").forward(request,response);  
		 	return;
    	}
    	UserService service=new UserService();
    	try{
	    	boolean isExist=service.checkName(name);
	    	if(isExist){
	    		request.setAttribute("errMsg","用户名已经存在！");
			 	this.getServletContext().getRequestDispatcher("/error.jsp").forward(request,response);
			 	return;
	    	}
	    	User user=new User();
	    	user.setName(name);
	    	user.setEmail(email);
	    	user.setPassword(password);
	    	user.setPhone(phone);
	    	user.setSocialid(socialid);
	    	user.setRole(role);
	    	String path = request.getContextPath();
	    	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	    	service.addUser(user,basePath);
	    	this.getServletContext().getRequestDispatcher("/jsp/user/loginAction.jsp").forward(request,response);
	        //PrintWriter out = response.getWriter();
	        //out.println("<center>注册成功！</center>");
    	}catch(Exception e){
    		e.printStackTrace();  
    		request.setAttribute("errMsg","注册出错！");
		 	this.getServletContext().getRequestDispatcher("/error.jsp").forward(request,response);
    	}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request,response);
	}
	
}
