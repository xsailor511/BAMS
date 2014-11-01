<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
	if(null==session_name||role!=5){//if the user is not login or a manager.
		
		response.setHeader("refresh","0;URL="+url) ;
		//response.sendRedirect(basePath+"jsp/user/login.jsp");
	}
}
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html">
<!-- Title and other stuffs -->
<title>管理员</title>
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
<style type="text/css"> 

#main {text-align:center;MARGIN-RIGHT: auto; MARGIN-LEFT: auto;MARGIN-top: 10px;} 
#main ul {width:605px;height:165px;list-style:none}
#main li.caidan {border:1px solid #000;border-right:0px solid #000;float:left;width:150px;height:33px;text-align:center;line-height:33px} 
#main li.last {border:1px solid #000;border-top:1px solid #000;float:left;width:150px;height:33px;text-align:center;line-height:33px} 

</style> 
<!-- Favicon -->
<link rel="shortcut icon" href="<%=basePath %>img/favicon/favicon.png">
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
				<a href="<%=basePath %>"><i class="icon-facebook facebook"></i></a> 
				<a href="<%=basePath %>"><i class="icon-twitter twitter"></i></a> 
				<a href="<%=basePath %>"><i class="icon-linkedin linkedin"></i></a> 
				<a href="<%=basePath %>"><i class="icon-google-plus google-plus"></i></a> 
				<a href="<%=basePath %>"><i class="icon-pinterest pinterest"></i></a>
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
					<li ><a style="color:blue" class="open br-red">
					<i class="icon-home"></i>管理员 </a></li>
					<li ><a href="<%=basePath %>jsp/manage/search_user.jsp" target="_blank" class="open br-red">
					<i class="icon-home"></i>用户管理 </a></li>
					
					<li><a href="<%=basePath %>servlet/ListAllPolicyIndexServlet?start=0" class="br-blue" target="_blank"><i
							class="icon-user"></i>下载保单</a></li>
					<li><a href="<%=basePath %>servlet/ListAllFileServlet?start=0" class="br-blue" target="_blank"><i
							class="icon-user"></i>文件管理</a></li>
					
					<li><a href="<%=basePath %>servlet/ListAllFeilvServlet" class="br-blue" target="_blank"><i
							class="icon-user"></i>费率管理</a></li>
					<li><a href="<%=basePath %>jsp/manage/lipeibaoanchaxun.jsp" class="br-blue" target="_blank"><i
							class="icon-user"></i>理赔报案管理</a></li>
					<li><a  class="br-blue" href="<%=basePath %>servlet/ListOrderServlet?start=0&page=undeal" target="_blank">
					<i class="icon-user"></i>订单管理</a></li>
					<li><a  class="br-blue" href="<%=basePath %>servlet/ListGoodsServlet?start=0" target="_blank">
					<i class="icon-user"></i>商品管理</a></li>
					<li><a  class="br-blue" href="<%=basePath %>jsp/manage/query_question.jsp" target="_blank">
					<i class="icon-user"></i>咨询管理</a></li>
					<li><a  class="br-blue" href="<%=basePath %>servlet/ListAllCaseDealServlet?start=0" target="_blank">
					<i class="icon-user"></i>保单管理</a></li>
					
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
<!-- 						<div class="flexslider"> -->
<!-- 						</div> -->
					<div id="main">
					<h4>快捷入口</h4>
<ul>
<li class="caidan"><a href="<%=basePath %>jsp/manage/search_user.jsp" target="_blank" style="color:blue">查找用户</a></li>
<li class="caidan"><a href="<%=basePath %>servlet/ListAllUserServlet" target="_blank" style="color:blue" >所有用户</a></li> 
<li class="caidan"><a href="<%=basePath %>servlet/ListAllPolicyIndexServlet?start=0" target="_blank" style="color:blue">下载word保单</a></li>
<li class="last"><a href="<%=basePath %>servlet/ListAllFileServlet?start=0" target="_blank" style="color:blue">文件管理</a></li>

<li class="caidan"><a href="<%=basePath %>jsp/manage/upload.jsp" target="_blank" style="color:blue">文件上传</a></li> 
<li class="caidan"><a href="<%=basePath %>servlet/ListAllFeilvServlet" target="_blank" style="color:blue">费率管理</a></li>
<li class="caidan"><a href="<%=basePath %>jsp/manage/lipeibaoanchaxun.jsp" target="_blank" style="color:blue">理赔报案查询</a></li>
<li class="last"><a href="<%=basePath %>servlet/ManageLiPeiServlet?start=0&page=unreply" target="_blank" style="color:blue">理赔报案未回复</a></li>

<li class="caidan"><a href="<%=basePath %>servlet/ManageLiPeiServlet?start=0&page=unreply" target="_blank" style="color:blue">理赔报案已回复</a></li>
<li class="caidan"><a href="<%=basePath %>servlet/ListOrderServlet?start=0&page=undeal" target="_blank" style="color:blue">未受理订单</a></li> 
<li class="caidan"><a href="<%=basePath %>servlet/ListOrderServlet?start=0&page=dealed" target="_blank" style="color:blue">已受理订单</a></li> 
<li class="last"><a href="<%=basePath %>servlet/ListGoodsServlet?start=0" target="_blank" style="color:blue">商品管理</a></li>

<li class="caidan"><a href="<%=basePath %>jsp/manage/addgoods.jsp" target="_blank" style="color:blue">添加商品</a></li>
<li class="caidan"><a href="<%=basePath %>servlet/ListAllQuestionServlet?start=0&page=unreply" target="_blank" style="color:blue">咨询未回复</a></li>
<li class="caidan"><a href="<%=basePath %>jsp/manage/query_question.jsp" target="_blank" style="color:blue">咨询查询</a></li>
<li class="last"><a href="<%=basePath %>servlet/ListAllQuestionServlet?start=0&page=replyed" target="_blank" style="color:blue">咨询已回复</a></li>

<li class="caidan"><a href="<%=basePath %>servlet/ListAllCaseDealServlet?start=0" target="_blank" style="color:blue">保单管理</a></li>
<li class="caidan"><a href="<%=basePath %>jsp/manage/addcasedeal.jsp" target="_blank" style="color:blue">保单上传</a></li>
<li class="caidan"><a href="" target="_blank" style="color:blue"></a></li>
<li class="last"><a href="" target="_blank" style="color:blue"></a></li>



</ul>
</div>
					</div>
				</div>
			</div>
			<hr />
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
	<script src="<%=basePath %>js/manage/search_user.js"></script>
	<!-- Main js file -->
</body>
</html>

