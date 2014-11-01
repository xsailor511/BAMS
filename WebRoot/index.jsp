<!DOCTYPE html>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html">
<!-- Title and other stuffs -->
<title>银保直通车</title>
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
  <script src="js/html5shim.js"></script>
  <![endif]-->

<!-- Favicon -->
<link rel="shortcut icon" href="<%=basePath %>img/favicon/favicon.png">

<script type="text/javascript" language="javascript">
 
    //加入收藏
        function AddFavorite(sURL, sTitle) {
            sURL = encodeURI(sURL); 
        try{   
            window.external.addFavorite(sURL, sTitle);
        }catch(e) {   
            try{   
                window.sidebar.addPanel(sTitle, sURL, "");   
            }catch (e) {
                alert("加入收藏失败，请使用Ctrl+D进行添加,或手动在浏览器里进行设置.");
            }
        }
 
    }
 
    //设为首页
    function SetHome(url){
        if (document.all) {
            document.body.style.behavior='url(#default#homepage)';
               document.body.setHomePage(url);
        }else{
            alert("您好,您的浏览器不支持自动设置页面为首页功能,请您手动在浏览器里设置该页面为首页!");
        }
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
						<li><a onclick="AddFavorite(window.location,document.title)" href="javascript:void(0)">加入收藏</a></li>
						<li><a onclick="SetHome(window.location)" href="javascript:void(0)">设为首页</a></li>
						<li><a href="login.html">投保必读</a></li>
						<li><a href="<%=basePath %>jsp/user/login.jsp">登录</a></li>
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
				<a href="#"><i class="icon-facebook facebook"></i></a> 
				<a href="#"><i class="icon-twitter twitter"></i></a> 
				<a href="#"><i class="icon-linkedin linkedin"></i></a> 
				<a href="#"><i class="icon-google-plus google-plus"></i></a> 
				<a href="#"><i class="icon-pinterest pinterest"></i></a>
			</div>

		</div>
	</div>

	<!-- Sliding box ends -->

	<!-- Main content starts -->

	<div class="content">

		<!-- Sidebar starts -->
		<div class="sidebar">
			<div class="sidebar-dropdown">
				<a href="#">Navigation</a>
			</div>

			<!--- Sidebar navigation -->
			<!-- If the main navigation has sub navigation, then add the class "has_sub" to "li" of main navigation. -->

			<!-- Colors: Add the class "br-red" or "br-blue" or "br-green" or "br-orange" or "br-purple" or "br-yellow" to anchor tags to create colorful left border -->
			<div class="s-content">

				<ul id="nav">
					<!-- Main menu with font awesome icon -->
					<li><a style="color:blue" href="<%=basePath %>index.jsp" class="open br-red"><i
							class="icon-home"></i>主页</a> <!-- Sub menu markup 
              <ul>
                <li><a href="#">Submenu #1</a></li>
                <li><a href="#">Submenu #2</a></li>
                <li><a href="#">Submenu #3</a></li>
              </ul>--></li>

					
					<li><a href="<%=basePath %>jsp/user/login.jsp" class="br-blue"><i
							class="icon-user"></i> 登陆</a></li>
					<li><a href="<%=basePath %>jsp/user/userRegister.jsp" class="br-blue"><i
							class="icon-user"></i> 注册</a></li>
<!-- 					<li><a href="<%=basePath %>error.jsp" class="br-blue"><i -->
<!-- 							class="icon-user"></i> 更多</a></li> -->
				</ul>
				<div class="s-widget">
					<h6>咨询热线</h6>
					<p>TEL:0532-88886666</p>
					<p>8:30-24:00(周一到周五)</p>
					<p>9:00-18:00(周六到周日)</p>
					<p></p>
				</div>
			</div>



		</div>
		<!-- Sidebar ends -->
		<!-- Mainbar starts -->
		<div class="mainbar">

			<div class="matter">
				<div class="container-fluid">

					<!-- Element -->
					<div class="box-body">
						<div class="flexslider">
							<ul class="slides">
								<!-- Each slide should be enclosed inside li tag. -->

								<!-- Slide #1 -->
								<li>
									<!-- Image --> <img src="img/photos/s1.jpg" alt="" /> <!-- Caption -->
								</li>

								<!-- Slide #2 -->
								<li><img src="img/photos/s2.jpg" alt="" />
								</li>

								<li><img src="img/photos/s3.jpg" alt="" />
								</li>
							</ul>
						</div>

						<h4>银保直通车</h4>
						 <p>简介：银保直通车是国内银保直通车是国内银保直通车是国内银保直通车是国内银保直通车是国内银保直通车是国内</p>
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
	<span class="totop"><a href="#"><i class="icon-chevron-up"></i></a></span>

	<!-- JS -->
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.js"></script>
	<!-- Bootstrap -->
	<script src="js/imageloaded.js"></script>
	<!-- Imageloaded -->
	<script src="js/jquery.isotope.js"></script>
	<!-- Isotope -->
	<script src="js/jquery.prettyPhoto.js"></script>
	<!-- prettyPhoto -->
	<script src="js/jquery.flexslider-min.js"></script>
	<!-- Flexslider -->
	<script src="js/custom.js"></script>
	<!-- Main js file -->
</body>
</html>
