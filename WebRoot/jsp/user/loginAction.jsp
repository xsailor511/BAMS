<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="bams.service.UserService" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
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
  	String session_name=(String)session.getAttribute("name");
  	String url = "";
  	if(session_name==null){
  		this.getServletContext()
	  	.getRequestDispatcher(basePath+"jsp/user/login.jsp")
	  	.forward(request,response);
  	}else{
	  	
	  	
  %>
  		<font color="blue">你已登录成功！2秒后跳转</font>
  <%
  Integer str_role = (Integer)session.getAttribute("role");
	int role = str_role.intValue();
	if(role==1){
		url = basePath+"jsp/home/enterprise_home.jsp";
	}else if(role==2){
		url = basePath+"jsp/home/bank_home.jsp";
	}else if(role==3){
		url = basePath+"jsp/home/economy_home.jsp";
	}else if(role==4){
		url = basePath+"jsp/home/agent_home.jsp";
	}else if(role==5){
		url = basePath+"jsp/home/bams_manager.jsp";
	}
  response.setHeader("refresh","2;URL="+url) ;
  	}%>
  
  </center>
  </body>
</html>
