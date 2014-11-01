<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>信息</title>
<script type="text/javascript">
    setTimeout(function(){ //IE6、7不会提示关闭
        window.opener=null;
        window.open("","_self");
        window.close();
    }, 3000);
</script>
</head>
<link rel="shortcut icon" href="<%=basePath %>img/favicon/favicon.png">
<body>
提交成功,3秒后自动关闭
</body>

</html>