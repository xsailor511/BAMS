<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="bams.service.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>检查用户名</title>
<style type="text/css">
body{
margin-top: 0;
margin-left: 0
}
</style>
</head>
<body  >
<%
	String name=request.getParameter("name");
	UserService service=new UserService();
	boolean isExist=service.checkName(name);
%>
<table width="300" height="200" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr style="width:100%">
    <td width="100%" height="119" background="img/user/t2.gif" ><div align="center"><font color="#FFFFFF"><strong><font size="4"> </font></strong>             
	<br>
	<%if(isExist){%>
		此用户名已经存在，请选用一个新用户名！
	<%}else{%>
		此用户名尚未被使用！
	<%}%>
    </font></div><br>
	<p align="center"> <a href="javascript:window.close()" >关 闭</a><br>
	  <br>
	</p>
	</td>
  </tr>
</table>
<p align="center">&nbsp;</p>
</body>
</html>