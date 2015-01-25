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
	if(null==session_name||role!=4){//if the user is not login or a manager.
		
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
<title><%=session.getAttribute("name") %>-代理人之家</title>
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
					<li><a style="color:blue" class="open br-red"><i
							class="icon-home"></i>代理人专区</a> <!-- Sub menu markup 
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
					<li><a href="<%=basePath %>servlet/ListGoodsServlet?start=0" target="_blank" class="br-blue"><i
							class="icon-user"></i> 积分兑换</a></li>
					
				</ul>
				
			</div>



		</div>
		<!-- Sidebar ends -->
		<!-- Mainbar starts -->
		<div class="mainbar">

			<div class="matter">
				<div class="container-fluid">

					<!-- Element -->
					<div class="box-body" style="background:#CCDDFF;color:black">
						
<!-- 						<a name="geren"></a> -->


<h4>在线投保专区</h4>
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
<hr/>

<!-- <a name="duigong"></a> -->

<div class="section">
<div class="description">对公专区</div>
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
<div class="section">
<div class="description"></div>
<div class="content">
<div class="policy">
<div class="image"></div>
<div class="showtext"></div>
</div>
<div class="policy">
<div class="image"></div>
<div class="showtext"></div>
</div>
<div class="policy">
<div class="image"><a href="<%=basePath%>jsp/policy/officehint.jsp" target="_blank">
<img alt="test" src="<%=basePath %>img/policy/office.jpg" width="100%"></a></div>
<div class="showtext"><a href="<%=basePath%>jsp/policy/officehint.jsp" target="_blank"><font color="blue">办公室综合保险</font></a></div>
</div>

</div>
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
	<!-- Main js file -->
</body>
</html>

