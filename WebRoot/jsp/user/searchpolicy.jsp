<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="bams.entity.CaseDeal" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String session_name = (String)session.getAttribute("name");
Integer role_int = (Integer)session.getAttribute("role");
String url = basePath+"jsp/user/login.jsp";//then go back to login page
if(null==role_int){
	response.setHeader("refresh","0;URL="+url) ;
}else{
	int role = role_int.intValue();
	if(null==session_name){//if the user is not login or a manager.
		
		response.setHeader("refresh","0;URL="+url) ;
		//response.sendRedirect(basePath+"jsp/user/login.jsp");
	}
}
String key = request.getParameter("key");
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html">
<!-- Title and other stuffs -->
<title>保单查询</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="author" content="">



<!-- Stylesheets -->
<link rel="stylesheet" href="<%=basePath %>style/bootstrap.css" >
<!-- Font awesome icon -->
<link rel="stylesheet" href="<%=basePath %>style/font-awesome.css">
<!-- Flexslider -->
<link rel="stylesheet" href="<%=basePath %>style/flexslider.css">
<!-- prettyPhoto -->
<link rel="stylesheet" href="<%=basePath %>style/prettyPhoto.css">
<!-- Main stylesheet -->
<link rel="stylesheet" href="<%=basePath %>style/style.css" >

<!-- Bootstrap responsive -->
<link rel="stylesheet" href="<%=basePath %>style/bootstrap-responsive.css" >
<style type="text/css">
table{
border-collapse:collapse;
border:1px;
}
table td{
border:solid#000 1px;
}

input.user_goal{
width:50px;
height:15px;
}
</style>
<!-- HTML5 Support for IE -->
<!--[if lt IE 9]>
  <script src="<%=basePath %>js/html5shim.js"></script>
  <![endif]-->

<!-- Favicon -->
<link rel="shortcut icon" href="<%=basePath %>img/favicon/favicon.png">
</head>
<body>
	<!-- Navbar starts -->
<jsp:useBean id="user" class="bams.entity.User" scope="request"/>
	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container-fluid">
			    <div id="logo">
				<a href="<%=basePath %>index.jsp"><img src="<%=basePath %>img/b-logo.png" alt="mainlogo" /></a>
				</div>
				<div class="nav-collapse collapse">
					<ul class="nav pull-right">

						<li class="dropdown"><a href="<%=basePath %>#" class="dropdown-toggle"
							data-toggle="dropdown"><%=session.getAttribute("name") %><b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="<%=basePath %>servlet/Logout">注销</a></li>
							</ul></li>


					</ul>
				</div>
			</div>
		</div>
	</div>

	<!-- Navbar ends -->

	<!-- Main content starts -->

	<div class="content">

		<!-- Sidebar starts -->
		<div class="sidebar">
			<div class="sidebar-dropdown">
				<a href="<%=basePath %>#">Navigation</a>
			</div>

			<!--- Sidebar navigation -->
			<!-- If the main navigation has sub navigation, then add the class "has_sub" to "li" of main navigation. -->

			<!-- Colors: Add the class "br-red" or "br-blue" or "br-green" or "br-orange" or "br-purple" or "br-yellow" to anchor tags to create colorful left border -->
			<div class="s-content">

				<ul id="nav">
					
					<li><a style="color:blue" class="br-blue">
					<i class="icon-user"></i>保单查询</a></li>
					<li><a  class="br-blue" href="<%=basePath %>servlet/ListCaseDealByUserServlet?username=<%=session_name %>&start=0" >
					<i class="icon-user"></i>所有保单</a></li>
					
				


				</ul>
				
			</div>



		</div>
		<!-- Sidebar ends -->
		<!-- Mainbar starts -->
		<div class="mainbar">

			<div class="matter">
				<div class="container-fluid">

					<!-- Element -->
					<div class="box-body" style="background:#CCDDFF;color:black;height:520px">
					<form action="<%=basePath %>servlet/SearchCaseDealServlet" name="myform" onsubmit="return checkForm()">	
<table width="100%" border="1">
  <tr>
    <td colspan="2" align="center">输入查询条件</td>
  </tr>
  <tr>
    <td width="49%" align="right">
    <select name="keytype" style="width: 100px;height: 30px;margin-top:9px;">
					  <option value ="1" selected = "selected">保单号码</option>
					  <option value ="2">身份证号码</option>
					  <option value="3">手机号码</option>
					  </select>
					  <input type="hidden" value="query" name="tag"/></td>
    <td width="51%"  style="align:left;valign:bottom">
     <%
    String oldkey = "";
    if(key==null||key=="")
    	oldkey = "";
    else
    	oldkey = key;
    %>
    <input type="text" name="key" id="key" value="<%=oldkey %>" style="margin-top:10px" onkeypress="if (event.keyCode == 13) document.myform.submit;"/>
    </td>
  </tr>
  <tr>
    <td colspan="2" align="center"><input type="submit" name="search_button" id="search_button" value="查询" /></td>
  </tr>
</table>
</form>
<br/><hr/><font color='blue'>查询结果</font>
<div id="result">
<%

String result = request.getParameter("result");
if(key!=null){
	if(result.equals("some")){
%>
<table width='100%' border='1'>
<tr>
<th scope='col'>编号</th>
<th scope='col'>保单名称</th>
<th scope='col'>查看</th>
</tr>
<%
CaseDeal casedeal = (CaseDeal)request.getAttribute("casedeal");
	int id = casedeal.getId();
	String policyname = casedeal.getPolicyname();
	%>
	<tr>
	<td align='center'><%=id %></td>
	<td align='center'><%=policyname %></td>
	<td align='center'><a href="<%=basePath %>servlet/GetCaseDealServlet?id=<%=id %>" target="_blank"><font color='blue' >查看</font></a></td>
		</tr>
</table>
<%
	}else if(result.equals("none")){
%>
未查询到任何数据。
<%
	}
	}else{
%>

<%
	}
%>
<%

%>
</div>

						
					</div>
				</div>
			</div>
			
		</div>
		<!-- Mainbar ends -->

		<!-- Foot starts -->
		<jsp:include page="/jsp/user/some_url.jsp"></jsp:include>
		<!-- Foot ends -->

	</div>

	<div class="clearfix"></div>

	<!-- Main content ends -->



	<!-- Scroll to top -->
	<span class="totop"><a href="<%=basePath %>#"><i class="icon-chevron-up"></i></a></span>

	<!-- JS -->
	<script src="<%=basePath %>js/jquery.js"></script>
	<script src="<%=basePath %>js/bootstrap.js"></script>
	<!-- Bootstrap -->
	<script src="<%=basePath %>js/imageloaded.js"></script>
	<!-- Imageloaded -->
	<script src="<%=basePath %>js/jquery.isotope.js"></script>
	<!-- Isotope -->
	<script src="<%=basePath %>js/jquery.prettyPhoto.js"></script>
	<!-- prettyPhoto -->
	<script src="<%=basePath %>js/jquery.flexslider-min.js"></script>
	<!-- Flexslider -->
	<script src="<%=basePath %>js/custom.js"></script>
	<script src="<%=basePath %>js/xmlhttp.js"></script>
<!-- 	<script src="<%=basePath %>js/manage/search_file.js" charset="utf-8"></script> -->
	<script type="text/javascript">
	function checkForm(){
		var key = document.getElementById("key").value;
		if(isEmpty(key)){
			alert("请输入查询关键字");
			return false;
		}
	}
	
	
	function isEmpty(str){
		if(str==null || str.length==0)
			return true;
		else 
			return false;
	}
	</script>
	<!-- Main js file -->
</body>
</html>

