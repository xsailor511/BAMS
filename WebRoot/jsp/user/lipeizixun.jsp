<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="bams.entity.User" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String session_name = (String)session.getAttribute("name");
Integer role_int = (Integer)session.getAttribute("role");
String url = basePath+"jsp/user/login.jsp";//then go back to login page
if(null==role_int||null==session_name){
	response.setHeader("refresh","0;URL="+url) ;
}

%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html">
<!-- Title and other stuffs -->
<title>理赔咨询</title>
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
					<!-- Main menu with font awesome icon -->
					<li><a  class="open br-red" style="color:blue"><i class="icon-home" ></i>理赔咨询</a></li>
					<li><a href="<%=basePath %>servlet/ListQuestionByUserServlet?start=0&tag=unreply&key=<%=session_name %>" class="open br-red"><i
							class="icon-home"></i>未回复</a></li>
					<li><a href="<%=basePath %>servlet/ListQuestionByUserServlet?start=0&tag=replyed&key=<%=session_name %>" class="open br-red"><i
							class="icon-home"></i>已回复</a>
							<!-- Sub menu markup 
              <ul>
                <li><a href="<%=basePath %>#">Submenu #1</a></li>
                <li><a href="<%=basePath %>#">Submenu #2</a></li>
                <li><a href="<%=basePath %>#">Submenu #3</a></li>
              </ul>--></li>


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
					<form action="<%=basePath%>servlet/AddQuestionServlet" onsubmit="return checkForm()">
					<p>标&nbsp;&nbsp;&nbsp;题：<input type="text" id="title" name="title" ></p>
					<p>单&nbsp;&nbsp;&nbsp;位：<input type="text" id="company" name="company" ></p>
					<p>联系人：<input type="text" id="people" name="people" ></p>
					<p>电&nbsp;&nbsp;&nbsp;话：<input type="text" id="tel" name="tel" ></p>
					<p>传&nbsp;&nbsp;&nbsp;真：<input type="text" id="fax" name="fax" ></p>
					<p>邮&nbsp;&nbsp;&nbsp;箱：<input type="text" id="email" name="email" ></p>
					<p>具体咨询内容:</p>
					<p><textarea cols="10" rows="5" style="width:535px" name="content" id="content" ></textarea></p>
					<input type="submit" value="提交" />
					</form>
						
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
	<script type="text/javascript">
	function isEmpty(str){
		if(str==null || str.trim().length==0)
			return true;
		else 
			return false;
	}
	
	function emailFormatCheck(email){
	    if ((email.length > 128) || (email.length < 6)) {
	        return false;
	    }
	    var format = /^[A-Za-z0-9+]+[A-Za-z0-9\.\_\-+]*@([A-Za-z0-9\-]+\.)+[A-Za-z0-9]+$/;
	    if (!email.match(format)) {
	        return false;
	    }
	    return true;
	}
	
	function checkForm(){
		var title = document.getElementById("title").value;
		var company = document.getElementById("company").value;
		var people = document.getElementById("people").value;
		var tel = document.getElementById("tel").value;
		var fax = document.getElementById("fax").value;
		var email = document.getElementById("email").value;
		var content = document.getElementById("content").value;
		
		if(isEmpty(title)){
			alert("标题不能为空");
			return false;
		}
		if(isEmpty(company)){
			alert("单位不能为空");
			return false;
		}
		if(isEmpty(people)){
			alert("联系人不能为空");
			return false;
		}
		if(isEmpty(fax)){
			alert("传真不能为空");
			return false;
		}
		//alert("tset");
		if(isEmpty(email)){
			alert("邮箱不能为空");
			return false;
		}
		
		if(isEmpty(content)){
			alert("内容不能为空");
			return false;
		}
		
		if(tel.length!=11){
			alert("电话号码长度为11位，不能为空");
			return false;
		}
		if(!emailFormatCheck(email)){
			alert("邮箱格式不对");
			return false;
		}
		
		return true;
	}
	
	</script>
	
	<!-- Main js file -->
</body>
</html>

