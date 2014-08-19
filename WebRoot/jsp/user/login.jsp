<%@ page contentType="text/html;charset=utf-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>用户登录</title> 
    <meta http-equiv="expires" content="0">
    <style type="text/css">
<!--
.style1 {color: #0000CC;font-size: 16px;font-weight: bold;}
-->
    </style>
  </head>  
  <body>
  	<form name="loginForm" method="post" action="loginAction.jsp">
    <table width="50%"  border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#CCCCCC">
      <caption>
      <span class="style1">      登 录      </span><br>
      </caption>
      <tr align="left">
        <th width="40%" height="35" align="center" scope="row">用户名:</th>
        <td width="60%"><input name="uid" type="text" id="uid" maxlength="20"></td>
      </tr>
      <tr align="left">
        <th height="35" align="center" scope="row">密&nbsp;&nbsp;码:</th>
        <td><input name="password" type="password" id="password" maxlength="30"></td>
      </tr>
      <tr align="center">
        <th height="35" colspan="2" scope="row"><input type="submit" name="Submit" value="登录">
        <input type="button" name="Submit2" value="注册" onclick="javascript:window.location='userRegister.jsp'"> </th>
      </tr>
    </table>
    </form>
  </body>
</html>
