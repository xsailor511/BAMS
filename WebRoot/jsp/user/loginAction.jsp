<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="bams.service.UserService" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>用户登录</title> 
  </head>  
  <body >
  <center>
  <%
  	String name=request.getParameter("name");
  	String password=request.getParameter("password");
  	UserService userService=new UserService();
  	if(userService.login(name,password)){
	  	session.setAttribute("name",name);
	  	this.getServletContext().getRequestDispatcher("/home.jsp").forward(request,response);
	  	
  %>
  		<font color="blue">你已登录成功！</font>
  <%}else{ %>
  		<font color="red">用户名或密码错误!</font>
  <%}%>
  <a href="#" onclick="history.back();">返回</a>
  </center>
  </body>
</html>
