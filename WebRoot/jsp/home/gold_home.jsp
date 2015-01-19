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
	if(null==session_name||role!=1){//if the user is not login or a manager.
		
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
<title>企业</title>
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
<link rel="stylesheet" href="<%=basePath %>style/policy.css" >
<!-- HTML5 Support for IE -->
<!--[if lt IE 9]>
  <script src="<%=basePath %>js/html5shim.js"></script>
  <![endif]-->

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
						<li><a href="<%=basePath %>login.html">投保必读</a></li>
						<li class="dropdown"><a href="<%=basePath %>#" class="dropdown-toggle"
							data-toggle="dropdown"><%=session.getAttribute("name") %><b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="<%=basePath %>contactus.html">联系我们</a></li>
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
					<li><a style="color:blue" class="open br-red"><i
							class="icon-home"></i>企业黄金用户</a> <!-- Sub menu markup 
              <ul>
                <li><a href="<%=basePath %>#">Submenu #1</a></li>
                <li><a href="<%=basePath %>#">Submenu #2</a></li>
                <li><a href="<%=basePath %>#">Submenu #3</a></li>
              </ul>--></li>

					<li class="has_sub"><a href="<%=basePath %>#" class="br-green"><i
							class="icon-list-alt"></i> 会员专区 <span class="pull-right"><i
								class="icon-chevron-right"></i></span></a>
						<ul>
						<li><a href="<%=basePath %>jsp/user/lipeibaoan.jsp" target="_blank">理赔报案</a></li>
							<li><a href="<%=basePath %>jsp/user/searchpolicy.jsp" target="_blank">保单查询</a></li>
							<li><a href="<%=basePath %>servlet/ListAllFileServlet?start=0" target="_blank">资料下载</a></li>
							<li><a href="<%=basePath %>jsp/user/lipeizixun.jsp" target="_blank">理赔咨询</a></li>
						</ul></li>
<!-- 					<li class="has_sub"><a href="<%=basePath %>#" class="br-green"><i -->
<!-- 							class="icon-list-alt"></i> 在线投保专区 <span class="pull-right"><i -->
<!-- 								class="icon-chevron-right"></i></span></a> -->
<!-- 						<ul> -->
<!-- 							<li><a href="#huangjin">黄金</a></li> -->
							
							
<!-- 						</ul></li> -->
					
					<li><a href="<%=basePath %>jsp/home/gold_shuoming.jsp" target="_blank" class="br-blue"><i
							class="icon-user"></i> 统保说明</a></li>
					<li><a href="<%=basePath %>servlet/ListGoodsServlet?start=0" target="_blank" class="br-blue"><i
							class="icon-user"></i> 积分兑换</a></li>
					
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
					<div class="box-body" id="box-body" style="background:#CCDDFF;color:black">
						<div class="flexslider" id="flexslider">
							<ul class="slides">
								<!-- Each slide should be enclosed inside li tag. -->

								<!-- Slide #1 -->
								<li>
									<!-- Image --> <img src="<%=basePath %>img/photos/s1.jpg" alt="" /> <!-- Caption -->
								</li>

								<!-- Slide #2 -->
								<li><img src="<%=basePath %>img/photos/s2.jpg" alt="" />
								</li>

								<li><img src="<%=basePath %>img/photos/s3.jpg" alt="" />
								</li>
							</ul>
						</div>
<!-- <a name="huangjin"></a> -->

<br/>
<h4>在线投保专区</h4>

<hr/>
<div class="section" >
<div class="description">黄金对公专区</div>
<div class="content">
<div class="policy">
<div class="image"><a href="<%=basePath%>jsp/policy/employerdutyhint.jsp" target="_blank">
<img alt="test" src="<%=basePath %>img/policy/employer_duty.jpg" width="100%"></a></div>
<div class="showtext"><a href="<%=basePath%>jsp/policy/employerdutyhint.jsp" target="_blank"><font color="blue">雇主责任保险</font></a></div>
</div>
<div class="policy">
<div class="image">
<a href="<%=basePath%>jsp/policy/freighthint.jsp" target="_blank">
<img alt="test" src="<%=basePath %>img/policy/freight.jpg" width="100%">
</a>
</div>
<div class="showtext"><a href="<%=basePath%>jsp/policy/freighthint.jsp" target="_blank"><font color="blue">货运险</font></a></div>
</div>
<div class="policy">
<div class="image">
<a href="<%=basePath%>jsp/policy/allpropertyhint.jsp" target="_blank">
<img alt="test" src="<%=basePath %>img/policy/enterprise.jpg" width="100%">
</a>
</div>
<div class="showtext">
<a href="<%=basePath%>jsp/policy/allpropertyhint.jsp" target="_blank"><font color="blue">企业财产险</font></a>
</div>
</div>
</div>
</div>
<hr/>
<div class="section">
<div class="description">个人专区</div>
<div class="content">
<div class="policy">
<div class="image"></div>
<div class="showtext"></div>
</div>
<div class="policy">
<div class="image">
<a href="<%=basePath%>jsp/policy/familyhint.jsp" target="_blank">
<img alt="test" src="<%=basePath %>img/policy/family.jpg" width="100%">
</a>
</div>
<div class="showtext"><a href="<%=basePath%>jsp/policy/familyhint.jsp" target="_blank"><font color="blue">家庭综合保险</font></a></div>
</div>
<div class="policy">
<div class="image">
<a href="<%=basePath%>jsp/policy/vehiclehint.jsp" target="_blank">
<img alt="test" src="<%=basePath %>img/policy/car.jpg" width="100%">
</a>
</div>
<div class="showtext">
<a href="<%=basePath%>jsp/policy/vehiclehint.jsp" target="_blank"><font color="blue">私家车保险</font></a>
</div>
</div>
</div>
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

<script type="text/javascript">
//var width = document.getElementById("flexslider").offsetWidth;
//alert("flexslider width: "+width);
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
