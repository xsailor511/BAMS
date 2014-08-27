<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
  <head>
    <title>upload2.html</title>
	
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="this is my page">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    
    <!--<link rel="stylesheet" type="text/css" href="./styles.css">-->

  </head>
  
  <body>
   <form name="uploadForm" method="POST" 
        enctype="MULTIPART/FORM-DATA" 
        action="upload"> 
 
        User Name:<input type="text" name="username" size="30"/>
        Upload File1:<input type="file" name="file1" size="30"/>
        Upload File2:<input type="file" name="file2" size="30"/>  
        <input type="submit" name="submit" value="提交"> 
        <input type="reset" name="reset" value="重置">
      </form> 
  </body>
</html>
