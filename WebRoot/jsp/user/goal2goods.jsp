<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="bams.entity.Goods" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String session_name = (String)session.getAttribute("name");
Integer role_int = (Integer)session.getAttribute("role");
Integer goal_int = (Integer)request.getAttribute("goal");
String url = basePath+"jsp/user/login.jsp";//then go back to login page
if(null==role_int||null==session_name){
	response.setHeader("refresh","0;URL="+url) ;
}
int goal = goal_int.intValue();
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html">
<!-- Title and other stuffs -->
<title>积分兑换</title>
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
<link rel="stylesheet" href="<%=basePath %>style/goal2goods.css" >
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
					

					<li><a class="br-blue" style="color:blue"><i class="icon-user"></i>积分兑换</a></li>
					<li><a  class="br-blue" href="<%=basePath %>servlet/ListOrderByUserServlet?start=0&page=undeal&username=<%=session_name %>" >
					<i class="icon-user"></i>未受理订单</a></li>
					<li><a href="<%=basePath %>servlet/ListOrderByUserServlet?start=0&page=dealed&username=<%=session_name %>" class="br-blue" >
					<i class="icon-user"></i>已受理订单</a></li>
					<li><a  class="br-blue" href="<%=basePath %>jsp/user/wikiOfgoal.jsp" target="_blank">
					<i class="icon-user"></i>积分说明</a></li>
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
					<h4>积分商城</h4>您的当前积分为：<%=goal %>
<hr/>
<div class="section">
<div class="content">
<%
List<Goods> goodslist = (List)request.getAttribute("goodslist");
if(null==goodslist){
	  this.getServletContext()
	  	.getRequestDispatcher("/error.jsp")
	  	.forward(request,response);
}
int start = 0 ;
String str_start = request.getParameter("start");
if(null!=str_start)
	start = Integer.parseInt(str_start);
int pageSize = 9;
int pageCount = start/pageSize+1;
Iterator<Goods> it = goodslist.iterator();
while(it.hasNext()){
	Goods goods = it.next();
	String imageURL = goods.getImageURL();
	String description = goods.getDescription();
	int value = goods.getValue();
	int id = goods.getId();

%>





<div class="policy">
<div class="image">
<a href="<%=basePath%>servlet/GetGoodsServlet?id=<%=id %>" target="_blank">
<img alt="test" src="<%=imageURL %>" width="100%">
</a>
</div>
<div class="showtext"><a href="<%=basePath%>servlet/GetGoodsServlet?id=<%=id %>" target="_blank">
<font color="blue"><%=description %>&nbsp;<%=value %>积分</font></a></div>
</div>

<%
}
%>

</div>

</div>

<!-- <a name="duigong"></a> -->


<div>
<p align="center">
<a href = "<%=basePath%>servlet/ListGoodsServlet?start=0" ><font color="blue"><B>首页</B></font></a>
<%
if(start==0){
%>
上一页

<%
}else{
%>
<a href = "<%=basePath%>servlet/ListGoodsServlet?start=<%=start-pageSize%>" ><font color="blue">上一页</font></a>
<%
}
%>

<%
if(goodslist.size()<pageSize){
%>
下一页
<%
}else{
%>
<a href = "<%=basePath%>servlet/ListGoodsServlet?start=<%=start+pageSize%>" ><font color="blue">下一页</font></a>
<%
}
%>
第<%=pageCount%>页</p>

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
	<!-- Main js file -->
</body>
</html>

