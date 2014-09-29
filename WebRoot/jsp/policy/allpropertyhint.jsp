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
	if(null==session_name){//if the user is not login or a manager.
		
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
<title>财产一切险投保流程</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="author" content="">



<!-- Stylesheets -->
<link rel="stylesheet" href="<%=basePath %>style/testbootstrap.css" >
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
table{
border-collapse:collapse;
border:1px;
}
table td{
border:solid#000 1px;
}

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
					<li><a  class="open br-red"><i
							class="icon-home"></i>财产一切险投保流程</a> <!-- Sub menu markup 
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
					<div class="box-body" style="background:#CCDDFF;color:black">
						

					<h4>一、	企业统保说明及险种简介</h4>
企业的风险从保险角度上讲主要包括财产损失风险、责任风险、人身风险等，其中财产损失风险指由于自然灾害或意外事故所致的财产损失，包括财产直接损失风险、财产间接损失（如：利润）风险；责任风险指企业生产运营中依法应当承担的赔偿责任，包括公众责任风险、雇主责任风险、产品责任风险等。企业面临风险事故的类型及大小与其行业特点、发展阶段、生产特性、管理水平等因素密切相关。不同行业客户的风险关注点又各有不同，现通过集团统一保险招标，统一了各下属单位保险投保方案，大幅压低了保险价格，获取了保险公司的诸多VIP服务。望各单位依据集团下发文件及通知，尽快按集团统保规定，完成未到期保险信息报备及到期保险的网上投保工作。
<h4>二、统保及建议险种简介</h4>
<h5>财产一切险：</h5>
此险种保障企业存放在固定地点且处于静止状态中的财产因遭遇自然灾害和意外事故而造成的损失，
<h5>建筑/安装工程一切险：</h5>此险种责任包括物质损失部分和第三者责任部分，主要保障处于建设/安装过程中的保险标的由于自然灾害或意外事故造成保险标的（工程项目本身）的直接物质损坏或灭失，以及在建设/安装过程中的施工原因导致的第三者人身伤亡或财产损失而依法由被保险人承担的赔偿责任。
<h5>施工机具保险：</h5>此险种保障建筑或安装施工机具、设备在建设期因意外事故导致的损失。
<h5>机器损坏险：</h5>此险种保障机器设备在运行过程中因设计、制造或安装错误、铸造或原材料缺陷；工人操作错误、疏忽、过失、恶意行为；超负荷、超电压、短路等电气原因造成的突然的、不可预料的意外事故造成的物质损坏或灭失。
<h5>利润损失保险（营业中断保险）：</h5>此险种保障因物质损失保险（财产保险、机器损坏险）约定的保险事故造成营业所使用的物质财产遭受损失，导致被保险人的营业干扰或中断，由此产生的赔偿期间内的毛利润损失及相关审计费用。
<h5>雇主责任险：</h5>是指企业所雇佣的员工在受雇过程中从事与企业经营有关的工作而遭受意外或患与业务有关的国家规定的职业性疾病，所致伤、残或死亡，企业根据《中华人民共和国劳动法》及劳动合同应承担的医药费用及经济赔偿责任，包括应支出的诉讼费用，保险公司在规定的赔偿限额内负责赔偿的一种保险。随着《劳动法》的实施及我国劳动合同制的不断完善，雇主责任险将是企事业单位及个人转嫁上述风险的重要途径。
<h5>公众责任险：</h5>主要承保企业经营者在进行生产、经营或其他活动时，因发生意外事故而造成的他人人身伤亡和财产损失，依法应由企业经营者承担的经济赔偿责任。随着我国法律制度的逐步健全，机关、企事业单位及个人在经济活动过程中常常因疏忽或意外事故造成他人人身伤亡或财产损失，依照法律须承担一定的经济赔偿责任，伴随着公众索赔意识的增强，此类索赔逐渐增多，影响当事人经济利益及正常的经营活动顺利进行。
<h5>产品责任险：</h5>指产品生产者对其产品造成第三者人身伤害或财产损失所承担的法律责任。我国已颁布了"产品质量法"和"消费者权益保护法" ，近年来由于产品责任导致的人身伤害或财产损失的索赔案件屡屡发生，产品的生产者或经销者将被产品责任所产生的法律赔偿责任所困扰。同时随着我国经济对外交往的扩大，出口商品通常根据国际惯例要求必须投保产品责任险，以满足进口商的要求，一些外资企业在中国开展经营活动时也习惯投保产品责任险，因此该险种越来越受到人们的关注。 
<h5>（团体）意外伤害保险：</h5>企业在为员工投保工伤保险的同时，还可以再投保员工团体意外伤害保险，员工因交通事故、烧烫伤等意外事故导致死亡或残疾等产生的费用由保险公司赔偿。
<h5>补充医疗保险：</h5>此保险是相对于基本医疗保险而言的一个概念。即企业员工超过基本医疗保险范围的医疗需求可以通过补充医疗保险的方式予以补充，提高员工的养老、医疗保障程度。与基本医疗保险不同，补充医疗保险不是通过国家立法强制实施的，而是由用人单位自愿参加的商业保险。

<br/><br/>
<h5>财产一切险投保流程</h5><br/>
<img src="<%=basePath %>img/hint/allpropertyhint.jpg" />
<br/><br/><br/>
<p style="text-align:center;color:red">
<a href="<%=basePath %>servlet/AllPropertyFeilvServlet"><font color="blue">我已详细了解投保流程</font></a>
</p>
					

						
					</div>
				</div>
			</div>
			<hr />
		</div>
		<!-- Mainbar ends -->

		<!-- Foot starts -->
		<div class="foot">
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span4">
						<div class="fwidget">

							<div class="col-l">

								<h6>下载</h6>
								<ul>
									<li><a href="<%=basePath %>">链接一</a></li>
									<li><a href="<%=basePath %>">链接二</a></li>
									<li><a href="<%=basePath %>">链接三</a></li>
									<li><a href="<%=basePath %>">链接四</a></li>
									<li><a href="<%=basePath %>">链接五</a></li>
								</ul>
							</div>

							<div class="col-r">
								<h6>产品导读</h6>
								<ul>
									<li><a href="<%=basePath %>">链接一</a></li>
									<li><a href="<%=basePath %>">链接二</a></li>
									<li><a href="<%=basePath %>">链接三</a></li>
									<li><a href="<%=basePath %>">链接四</a></li>
									<li><a href="<%=basePath %>">链接五</a></li>
								</ul>
							</div>

							<div class="clearfix"></div>

						</div>
					</div>

					<div class="span4">
						<div class="fwidget">
							<h6>行业新闻</h6>
							<ul>
								<li><a href="<%=basePath %>">链接一</a></li>
								<li><a href="<%=basePath %>">链接二</a></li>
								<li><a href="<%=basePath %>">链接三</a></li>
								<li><a href="<%=basePath %>">链接四</a></li>
								<li><a href="<%=basePath %>">链接五</a></li>
							</ul>
						</div>
					</div>

					<div class="span4">
						<div class="fwidget">
							<h6>友情链接</h6>
							<ul>
								<li><a href="<%=basePath %>">链接一</a></li>
								<li><a href="<%=basePath %>">链接二</a></li>
								<li><a href="<%=basePath %>">链接三</a></li>
								<li><a href="<%=basePath %>">链接四</a></li>
								<li><a href="<%=basePath %>">链接五</a></li>
							</ul>
						</div>
					</div>

				</div>

				<div class="row-fluid">
					<div class="span12">
						<hr class="visible-desktop">
						<div class="copy">
							Copyright 2014 &copy; - <a href="<%=basePath %>#">http://www.ybztc.com</a> - Collect from
							<a href="<%=basePath %>http://www.ybztc.com" title="银保直通车" target="_blank">银保直通车</a>
						</div>
					</div>
				</div>

			</div>
		</div>
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
	<!-- date picker -->
	<script src="<%=basePath %>js/My97DatePicker/WdatePicker.js"></script>
	<!-- Main js file -->
</body>
</html>