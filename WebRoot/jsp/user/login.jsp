<!DOCTYPE html>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	String session_name = (String)session.getAttribute("name");
	Integer str_role = (Integer)session.getAttribute("role");
	String url = "";
	int role = str_role.intValue();
	if(session_name!=null){
		
		
		if(role==1){
			url = basePath+"jsp/home/gold_home.jsp";
		}else if(role==2){
			url = basePath+"jsp/home/bank_home.jsp";
		}else if(role==3){
			url = basePath+"jsp/home/economy_home.jsp";
		}else if(role==4){
			url = basePath+"jsp/home/agent_home.jsp";
		}else if(role==6){
			url = basePath+"jsp/home/mail_home.jsp";
		}
		if(role!=5){
			response.setHeader("refresh","0;URL="+url) ;
		}
		
	}
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html">
<!-- Title and other stuffs -->
<title>易宝通</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="author" content="">

<!-- <link rel='stylesheet' href='<%=basePath %>style/fonts_googleapi.css'> -->

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

<!-- HTML5 Support for IE -->
<!--[if lt IE 9]>
  <script src="<%=basePath %>js/html5shim.js"></script>
  <![endif]-->

<!-- Favicon -->
<link rel="shortcut icon" href="<%=basePath %>img/favicon/favicon.png">

<script>
function checkForm(form){
	if(isEmpty(form.name.value) || isEmpty(form.password.value)){
		alert("请将必填项填写完整!");
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
</head>

<body>

	<!-- Navbar starts -->

	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container-fluid">
			    <div id="logo">
				<a href="<%=basePath %>index.jsp"><img src="<%=basePath %>img/b-logo.png" alt="mainlogo" /></a>
				</div>
				<div class="nav-collapse collapse">
					<ul class="nav pull-right">
						<li><a href="<%=basePath %>login.html">投保必读</a></li>
						
						<li><a href="<%=basePath %>jsp/user/userRegister.jsp">注册</a></li>
						


					</ul>
				</div>
			</div>
		</div>
	</div>

	<!-- Navbar ends -->

<!-- Sliding box starts -->
	<div class="slide-box">
		<div class="bor"></div>
		<div class="padd">
			<div class="slide-box-button">
				<i class="icon-chevron-left"></i>
			</div>
			<h5>欢迎</h5>
			银保直通车为您服务。

			<hr />

			<div class="social">
				<a href="<%=basePath %>#"><i class="icon-facebook facebook"></i></a> 
				<a href="<%=basePath %>#"><i class="icon-twitter twitter"></i></a> 
				<a href="<%=basePath %>#"><i class="icon-linkedin linkedin"></i></a> 
				<a href="<%=basePath %>#"><i class="icon-google-plus google-plus"></i></a> 
				<a href="<%=basePath %>#"><i class="icon-pinterest pinterest"></i></a>
			</div>

		</div>
	</div>

	<!-- Sliding box ends -->

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
					<!-- Main menu with font awesome icon -->
					<li><a  class="open br-red" style="color:blue"><i
							class="icon-home"></i>登陆</a> <!-- Sub menu markup
              <ul>
                <li><a href="<%=basePath %>#">Submenu #1</a></li>
                <li><a href="<%=basePath %>#">Submenu #2</a></li>
                <li><a href="<%=basePath %>#">Submenu #3</a></li>
              </ul>--></li>

					<li><a href="<%=basePath %>jsp/user/userRegister.jsp" class="br-blue"><i
							class="icon-user"></i> 注册</a></li>
					
				</ul>
				
			</div>



		</div>
		<!-- Sidebar ends -->
		<!-- Mainbar starts -->
		<div class="mainbar">

			<div class="matter">
				<div class="container-fluid">

					<!-- Element -->
					<div class="box-body"  style="background:#CCDDFF;color:black;height:520px">
<!-- 						<div class="flexslider"> -->
							
  <span id="error_message"></span>
  	<form name="loginForm" method="post" action="<%=basePath %>Login" onsubmit="return checkForm(this)">
  	<br/>
  	<br/>
  	<br/>
    <table width="50%"  border="0" style=" border:1px solid #191970;" cellpadding="0" cellspacing="1" align="center" >
    <tr >
    <td colspan="3" align="center"  style="font-size: 20px"><font color="blue">登录</font></td>
  </tr>
      <tr align="left">
        <th width="40%" height="35" align="center" scope="row">用户名:</th>
        <td width="60%"><input name="name" type="text" id="name"  style="width: 180px;height: 20px"></td>
      </tr>
      <tr align="left">
        <th height="35" align="center" scope="row">密&nbsp;&nbsp;&nbsp;&nbsp;码:</th>
        <td><input name="password" type="password" id="password"  style="width: 180px;height: 20px"></td>
      </tr>
      <tr>
  <th height="35" align="center" scope="row">身&nbsp;&nbsp;&nbsp;&nbsp;份:</th>
  <td>
						<select name="role" style="width: 195px;height: 30px">
					  <option value ="1" selected = "selected">企业黄金</option>
					  <option value ="2">银行</option>
					  <option value="3">经济服务</option>
					  <option value="4">代理人</option>
					  <option value="6">企业邮政</option>
					  </select>
						</td>
  </tr>
      <tr align="center">
        <th height="35" colspan="2" scope="row">&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="submit" name="Submit" value="登录" style="width: 100px;height: 30px">&nbsp;&nbsp;
        <input type="button" name="Submit2" value="注册" style="width: 100px;height: 30px" onclick="javascript:window.location='<%=basePath%>/jsp/user/userRegister.jsp'"> </th>
      </tr>
    </table>
    </form>
						</div>

						
<!-- 					</div> -->
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
 <script type="text/javascript">
    	var error ='<%=request.getParameter("error")%>';
    	
    	if(error=="yes"){
			//alert(error);
    		document.getElementById("error_message").innerHTML = "<center><font color='red'>用户名,密码或者登陆角色错误!</font></center>";
    	}
</script>
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
	<!-- Main js file -->
</body>
</html>
