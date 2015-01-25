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
<title>易保通</title>
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
						<li><a href="<%=basePath %>jsp/user/login.jsp">登录</a></li>
						<li><a href="<%=basePath %>jsp/user/userRegister.jsp">注册</a></li>


					</ul>
				</div>
			</div>
		</div>
	</div>

	<!-- Navbar ends -->

<!-- Sliding box starts -->
	

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
					<li><a style="color:blue" href="<%=basePath %>index.jsp" class="br-red"><i class="icon-home"></i>首页</a> </li>

					
					<li><a href="<%=basePath %>jsp/user/login.jsp" class="br-blue"><i
							class="icon-user"></i> 登陆</a></li>
					<li><a href="<%=basePath %>jsp/user/userRegister.jsp" class="br-blue"><i
							class="icon-plus"></i> 注册</a></li>
<!-- 					<li><a href="<%=basePath %>error.jsp" class="br-blue"><i -->
<!-- 							class="icon-user"></i> 更多</a></li> -->
				</ul>
				
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
									<!-- Image --> <img src="img/photos/s1.jpg" alt=""  /> <!-- Caption -->
								</li>

								<!-- Slide #2 -->
								<li><img src="img/photos/s2.jpg" alt="" />
								</li>

								<li><img src="img/photos/s3.jpg" alt="" />
								</li>
							</ul>
						</div>

						<h4>易保通</h4>
						<div style="font-size:15px">
						 <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;易保通作为集中国内外一流保险经纪公司，提供专业保险经纪服务的，经过多年的稳健发展，不仅拥有600多名高素质的风险管理和保险经纪专业人才，
						 形成了于风险管理和保险经纪为一体的专业团队，而且凭借优质服务赢得了良好的市场口碑，成为了保险经纪行业的领军网站。</p>
						 <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;易保通目前业务范围已覆盖到国家机关、金融机构、航空航天、石油化工、电力能源、水利水电、电信邮电、交通运输、
						 工业制造、冶金矿产、工程建筑、商业外贸、医药卫生、烟草酿酒、文化教育、旅游环保、农业养殖等领域，客户数量已超过3000家。</p>
						 <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;易保通愿同我们的客户一同成长，为客户提供全方位、专业的保险经纪服务。</p></div>
						 <div id='mybrowser'></div>
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
	
	<script type="text/javascript">
//alert("test");
var browser=navigator.appName;
var b_version=navigator.appVersion;
var version=parseFloat(b_version);
if(browser=="Microsoft Internet Explorer"){
	
	document.getElementById("mybrowser").innerHTML = "<font color='red'>如果页面有问题，请使用IE8及以后的版本浏览器，或者任何非IE浏览器</font>";
}

</script>
</body>
</html>
