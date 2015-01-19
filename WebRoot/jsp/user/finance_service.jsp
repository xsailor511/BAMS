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
<title>经纪人服务一览表</title>
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
<style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:宋体;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:"\@宋体";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	font-size:10.5pt;
	font-family:"Times New Roman","serif";}
 /* Page Definitions */
 @page WordSection1
	{size:595.3pt 841.9pt;
	margin:54.55pt 90.0pt 72.0pt 90.0pt;
	layout-grid:15.6pt;}
div.WordSection1
	{page:WordSection1;}
-->
</style>

<!-- Favicon -->
<link rel="shortcut icon" href="<%=basePath %>img/favicon/favicon.png">
</head>
<body lang=ZH-CN style='text-justify-trim:punctuation'>
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
					<li><a  class="open br-red" style="color:blue"><i class="icon-home" ></i>经纪人服务一览表</a>
					
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
					<div class="box-body" style="background:#CCDDFF;color:black">
					
					
					<div class=WordSection1 style='layout-grid:15.6pt'>

<p class=MsoNormal align=center style='text-align:center'><b><span
style='font-size:22.0pt;font-family:宋体'>服</span></b><b><span style='font-size:
22.0pt'> </span></b><b><span style='font-size:22.0pt;font-family:宋体'>务</span></b><b><span
style='font-size:22.0pt'> </span></b><b><span style='font-size:22.0pt;
font-family:宋体'>工</span></b><b><span style='font-size:22.0pt'> </span></b><b><span
style='font-size:22.0pt;font-family:宋体'>作</span></b><b><span style='font-size:
22.0pt'> </span></b><b><span style='font-size:22.0pt;font-family:宋体'>计</span></b><b><span
style='font-size:22.0pt'> </span></b><b><span style='font-size:22.0pt;
font-family:宋体'>划</span></b><b><span style='font-size:22.0pt'> </span></b><b><span
style='font-size:22.0pt;font-family:宋体'>表</span></b></p>

<p class=MsoNormal align=center style='text-align:center'><b><span
style='font-size:12.0pt;font-family:宋体'>第一阶段：</span></b><b><span
style='font-size:12.0pt'> </span></b><b><span style='font-size:12.0pt;
font-family:宋体'>保险采购与培训</span></b></p>

<p class=MsoNormal align=center style='text-align:center'><span lang=EN-US
style='font-size:12.0pt'>&nbsp;</span></p>

<div align=center>

<table class=MsoNormalTable border=1 cellspacing=0 cellpadding=0 width=662
 style='width:496.65pt;border-collapse:collapse;border:none'>
 <tr style='height:1.0pt'>
  <td width=108 style='width:80.85pt;border-top:double 1.5pt;border-left:double 1.5pt;
  border-bottom:solid 1.0pt;border-right:solid 1.0pt;border-color:windowtext;
  background:#E6E6E6;padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><b><span
  style='line-height:115%;font-family:宋体'>保险安排服务</span></b></p>
  </td>
  <td width=102 style='width:76.85pt;border-top:double windowtext 1.5pt;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  background:#E6E6E6;padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><b><span
  style='line-height:115%;font-family:宋体'>完成时间</span></b></p>
  </td>
  <td width=144 style='width:108.0pt;border-top:double windowtext 1.5pt;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  background:#E6E6E6;padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><b><span
  style='line-height:115%;font-family:宋体'>委托方</span></b></p>
  </td>
  <td width=230 style='width:172.15pt;border-top:double windowtext 1.5pt;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  background:#E6E6E6;padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><b><span
  style='line-height:115%;font-family:宋体'>我司</span></b></p>
  </td>
  <td width=78 style='width:58.8pt;border-top:double windowtext 1.5pt;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:double windowtext 1.5pt;
  background:#E6E6E6;padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><b><span
  style='line-height:115%;font-family:宋体'>备注</span></b></p>
  </td>
 </tr>
 <tr style='height:1.0pt'>
  <td width=108 style='width:80.85pt;border-top:none;border-left:double windowtext 1.5pt;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><b><span
  style='line-height:115%;font-family:宋体'>明确采购工作</span></b></p>
  </td>
  <td width=102 style='width:76.85pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  lang=EN-US style='line-height:115%'>--</span></p>
  </td>
  <td width=144 style='width:108.0pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  style='line-height:115%;font-family:宋体'>提出需求，明确计划</span></p>
  </td>
  <td width=230 style='width:172.15pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  style='line-height:115%;font-family:宋体'>详细了解招标项目信息</span></p>
  </td>
  <td width=78 style='width:58.8pt;border-top:none;border-left:none;border-bottom:
  solid windowtext 1.0pt;border-right:double windowtext 1.5pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  style='line-height:115%;font-family:宋体'>√</span></p>
  </td>
 </tr>
 <tr style='height:1.0pt'>
  <td width=108 style='width:80.85pt;border-top:none;border-left:double windowtext 1.5pt;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><b><span
  style='line-height:115%;font-family:宋体'>风险查勘及调研</span></b></p>
  </td>
  <td width=102 style='width:76.85pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  lang=EN-US style='line-height:115%'>--</span></p>
  </td>
  <td width=144 style='width:108.0pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  style='line-height:115%;font-family:宋体'>提供项目联系方式，配合查勘</span></p>
  </td>
  <td width=230 style='width:172.15pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  style='line-height:115%;font-family:宋体'>现场查勘、访谈，取得工程资料</span></p>
  </td>
  <td width=78 style='width:58.8pt;border-top:none;border-left:none;border-bottom:
  solid windowtext 1.0pt;border-right:double windowtext 1.5pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  style='line-height:115%;font-family:宋体'>视具体情况取舍</span></p>
  </td>
 </tr>
 <tr style='height:43.3pt'>
  <td width=108 style='width:80.85pt;border-top:none;border-left:double windowtext 1.5pt;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:43.3pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><b><span
  style='line-height:115%;font-family:宋体'>编制招标文件和保险方案</span></b></p>
  </td>
  <td width=102 style='width:76.85pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:43.3pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  lang=EN-US style='line-height:115%'>--</span></p>
  </td>
  <td width=144 style='width:108.0pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:43.3pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  style='line-height:115%;font-family:宋体'>提出需求，讨论并决策</span></p>
  </td>
  <td width=230 style='width:172.15pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:43.3pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  style='line-height:115%;font-family:宋体'>完成编制招标文件</span></p>
  </td>
  <td width=78 style='width:58.8pt;border-top:none;border-left:none;border-bottom:
  solid windowtext 1.0pt;border-right:double windowtext 1.5pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:43.3pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  style='line-height:115%;font-family:宋体'>视具体情况选择</span></p>
  </td>
 </tr>
 <tr style='height:32.5pt'>
  <td width=108 style='width:80.85pt;border-top:none;border-left:double windowtext 1.5pt;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:32.5pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><b><span
  style='line-height:115%;font-family:宋体'>保险发标</span></b></p>
  </td>
  <td width=102 style='width:76.85pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:32.5pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  lang=EN-US style='line-height:115%'>--</span></p>
  </td>
  <td width=144 style='width:108.0pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:32.5pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  style='line-height:115%;font-family:宋体'>确定邀请的保险公司</span></p>
  </td>
  <td width=230 style='width:172.15pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:32.5pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  style='line-height:115%;font-family:宋体'>发出招标文件</span></p>
  </td>
  <td width=78 style='width:58.8pt;border-top:none;border-left:none;border-bottom:
  solid windowtext 1.0pt;border-right:double windowtext 1.5pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:32.5pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  style='line-height:115%;font-family:宋体'>视具体情况取舍</span></p>
  </td>
 </tr>
 <tr style='height:59.25pt'>
  <td width=108 style='width:80.85pt;border-top:none;border-left:double windowtext 1.5pt;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:59.25pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><b><span
  style='line-height:115%;font-family:宋体'>风险说明</span></b></p>
  </td>
  <td width=102 style='width:76.85pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:59.25pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  lang=EN-US style='line-height:115%'>--</span></p>
  </td>
  <td width=144 style='width:108.0pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:59.25pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  style='line-height:115%;font-family:宋体'>邀请投标保险公司参加</span></p>
  </td>
  <td width=230 style='width:172.15pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:59.25pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  style='line-height:115%;font-family:宋体'>协助威海商行召开风险说明会，着重阐述风险查勘报告及再保安排计划</span></p>
  </td>
  <td width=78 style='width:58.8pt;border-top:none;border-left:none;border-bottom:
  solid windowtext 1.0pt;border-right:double windowtext 1.5pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:59.25pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  style='line-height:115%;font-family:宋体'>视具体情况取舍</span></p>
  </td>
 </tr>
 <tr style='height:30.75pt'>
  <td width=108 style='width:80.85pt;border-top:none;border-left:double windowtext 1.5pt;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:30.75pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><b><span
  style='line-height:115%;font-family:宋体'>保险招标（谈判）或询价</span></b></p>
  </td>
  <td width=102 style='width:76.85pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:30.75pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  lang=EN-US style='line-height:115%'>--</span></p>
  </td>
  <td width=144 style='width:108.0pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:30.75pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  style='line-height:115%;font-family:宋体'>现场评标</span></p>
  </td>
  <td width=230 style='width:172.15pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:30.75pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  style='line-height:115%;font-family:宋体'>组织招标</span></p>
  </td>
  <td width=78 style='width:58.8pt;border-top:none;border-left:none;border-bottom:
  solid windowtext 1.0pt;border-right:double windowtext 1.5pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:30.75pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  style='line-height:115%;font-family:宋体'>视具体情况选择</span></p>
  </td>
 </tr>
 <tr style='height:1.0pt'>
  <td width=108 style='width:80.85pt;border-top:none;border-left:double windowtext 1.5pt;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><b><span
  style='line-height:115%;font-family:宋体'>确定中标人</span></b></p>
  </td>
  <td width=102 style='width:76.85pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  lang=EN-US style='line-height:115%'>--</span></p>
  </td>
  <td width=144 style='width:108.0pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  style='line-height:115%;font-family:宋体'>最终确定中选公司</span></p>
  </td>
  <td width=230 style='width:172.15pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  style='line-height:115%;font-family:宋体'>提供保险采购报告，协助客户准备上报材料</span></p>
  </td>
  <td width=78 style='width:58.8pt;border-top:none;border-left:none;border-bottom:
  solid windowtext 1.0pt;border-right:double windowtext 1.5pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  style='line-height:115%;font-family:宋体'>视具体情况取舍</span></p>
  </td>
 </tr>
 <tr style='height:52.5pt'>
  <td width=108 style='width:80.85pt;border-top:none;border-left:double windowtext 1.5pt;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:52.5pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><b><span
  style='line-height:115%;font-family:宋体'>签订保险协议</span></b></p>
  </td>
  <td width=102 style='width:76.85pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:52.5pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  lang=EN-US style='line-height:115%'>--</span></p>
  </td>
  <td width=144 style='width:108.0pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:52.5pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  style='line-height:115%;font-family:宋体'>审阅保险协议、决策最终条件、出具投保申请、签订保险协议</span></p>
  </td>
  <td width=230 style='width:172.15pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:52.5pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  style='line-height:115%;font-family:宋体'>协助签订保险协议、协助投保</span></p>
  </td>
  <td width=78 style='width:58.8pt;border-top:none;border-left:none;border-bottom:
  solid windowtext 1.0pt;border-right:double windowtext 1.5pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:52.5pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  style='line-height:115%;font-family:宋体'>√</span></p>
  </td>
 </tr>
 <tr style='height:36.75pt'>
  <td width=108 style='width:80.85pt;border-top:none;border-left:double windowtext 1.5pt;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:36.75pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><b><span
  style='line-height:115%;font-family:宋体'>签署保险单</span></b></p>
  </td>
  <td width=102 style='width:76.85pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:36.75pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  lang=EN-US style='line-height:115%'>--</span></p>
  </td>
  <td width=144 style='width:108.0pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:36.75pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  style='line-height:115%;font-family:宋体'>提供投保资料</span></p>
  </td>
  <td width=230 style='width:172.15pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:36.75pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  style='line-height:115%;font-family:宋体'>协助集团及下属单位出具保险单</span></p>
  </td>
  <td width=78 style='width:58.8pt;border-top:none;border-left:none;border-bottom:
  solid windowtext 1.0pt;border-right:double windowtext 1.5pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:36.75pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  style='line-height:115%;font-family:宋体'>√</span></p>
  </td>
 </tr>
 <tr style='height:1.0pt'>
  <td width=108 style='width:80.85pt;border-top:none;border-left:double windowtext 1.5pt;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><b><span
  style='line-height:115%;font-family:宋体'>审阅保险单</span></b></p>
  </td>
  <td width=102 style='width:76.85pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  lang=EN-US style='line-height:115%'>--</span></p>
  </td>
  <td width=144 style='width:108.0pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  style='line-height:115%;font-family:宋体'>查收保单</span></p>
  </td>
  <td width=230 style='width:172.15pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  style='line-height:115%;font-family:宋体'>保单审核与校对</span></p>
  </td>
  <td width=78 style='width:58.8pt;border-top:none;border-left:none;border-bottom:
  solid windowtext 1.0pt;border-right:double windowtext 1.5pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  style='line-height:115%;font-family:宋体'>√</span></p>
  </td>
 </tr>
 <tr style='height:1.0pt'>
  <td width=108 style='width:80.85pt;border-top:none;border-left:double windowtext 1.5pt;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><b><span
  style='line-height:115%;font-family:宋体'>协助缴费</span></b></p>
  </td>
  <td width=102 style='width:76.85pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  lang=EN-US style='line-height:115%'>--</span></p>
  </td>
  <td width=144 style='width:108.0pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  style='line-height:115%;font-family:宋体'>根据保单要求缴费</span></p>
  </td>
  <td width=230 style='width:172.15pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  style='line-height:115%;font-family:宋体'>通知与协助</span></p>
  </td>
  <td width=78 style='width:58.8pt;border-top:none;border-left:none;border-bottom:
  solid windowtext 1.0pt;border-right:double windowtext 1.5pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  style='line-height:115%;font-family:宋体'>√</span></p>
  </td>
 </tr>
 <tr style='height:1.0pt'>
  <td width=108 style='width:80.85pt;border-top:none;border-left:double windowtext 1.5pt;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><b><span
  style='line-height:115%;font-family:宋体'>保险培训</span></b></p>
  </td>
  <td width=102 style='width:76.85pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  lang=EN-US style='line-height:115%'>--</span></p>
  </td>
  <td width=144 style='width:108.0pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  style='line-height:115%;font-family:宋体'>提出培训需求</span></p>
  </td>
  <td width=230 style='width:172.15pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  style='line-height:115%;font-family:宋体'>组织保险培训，包括保障范围、被保险人、索赔流程与注意事项等，后续培训内容、时间根据客户需求而定</span></p>
  </td>
  <td width=78 style='width:58.8pt;border-top:none;border-left:none;border-bottom:
  solid windowtext 1.0pt;border-right:double windowtext 1.5pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  style='line-height:115%;font-family:宋体'>√</span></p>
  </td>
 </tr>
 <tr style='height:1.0pt'>
  <td width=108 style='width:80.85pt;border-top:none;border-left:double windowtext 1.5pt;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><b><span
  style='line-height:115%;font-family:宋体'>保险手册制作</span></b></p>
  </td>
  <td width=102 style='width:76.85pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  lang=EN-US style='line-height:115%'>--</span></p>
  </td>
  <td width=144 style='width:108.0pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  style='line-height:115%;font-family:宋体'>审核，下发</span></p>
  </td>
  <td width=230 style='width:172.15pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  style='line-height:115%;font-family:宋体'>保险手册设计与印制</span></p>
  </td>
  <td width=78 style='width:58.8pt;border-top:none;border-left:none;border-bottom:
  solid windowtext 1.0pt;border-right:double windowtext 1.5pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  style='line-height:115%;font-family:宋体'>√</span></p>
  </td>
 </tr>
 <tr style='height:1.0pt'>
  <td width=108 style='width:80.85pt;border-top:none;border-left:double windowtext 1.5pt;
  border-bottom:double windowtext 1.5pt;border-right:solid windowtext 1.0pt;
  background:#D9D9D9;padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><b><span
  style='line-height:115%;font-family:宋体'>备注</span></b></p>
  </td>
  <td width=554 colspan=4 style='width:415.8pt;border-top:none;border-left:
  none;border-bottom:double windowtext 1.5pt;border-right:double windowtext 1.5pt;
  background:#D9D9D9;padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  style='line-height:115%;font-family:宋体'>前述缴费与第</span><span lang=EN-US
  style='line-height:115%'>1</span><span style='line-height:115%;font-family:
  宋体'>次培训服务在保单出具后</span><span lang=EN-US style='line-height:115%'>1</span><span
  style='line-height:115%;font-family:宋体'>个月内完成。</span></p>
  </td>
 </tr>
</table>

</div>

<p class=MsoNormal align=center style='text-align:center'><b><span lang=EN-US>&nbsp;</span></b></p>

<p class=MsoNormal align=center style='text-align:center'><b><span
style='font-size:12.0pt;font-family:宋体'>第二阶段：</span></b><b><span
style='font-size:12.0pt'> </span></b><b><span style='font-size:12.0pt;
font-family:宋体'>期内服务与索赔</span></b></p>

<p class=MsoNormal><span lang=EN-US>&nbsp;</span></p>

<div align=center>

<table class=MsoNormalTable border=1 cellspacing=0 cellpadding=0 width=644
 style='width:482.95pt;border-collapse:collapse;border:none'>
 <tr style='height:1.0pt'>
  <td width=108 style='width:80.85pt;border-top:double 1.5pt;border-left:double 1.5pt;
  border-bottom:solid 1.0pt;border-right:solid 1.0pt;border-color:windowtext;
  background:#BFBFBF;padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><b><span
  style='line-height:115%;font-family:宋体'>期内服务项目</span></b></p>
  </td>
  <td width=80 style='width:59.7pt;border-top:double windowtext 1.5pt;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  background:#BFBFBF;padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><b><span
  style='line-height:115%;font-family:宋体'>具体内容</span></b></p>
  </td>
  <td width=150 style='width:112.55pt;border-top:double windowtext 1.5pt;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  background:#BFBFBF;padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><b><span
  style='line-height:115%;font-family:宋体'>威海商行及集团</span></b></p>
  </td>
  <td width=228 style='width:171.05pt;border-top:double windowtext 1.5pt;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  background:#BFBFBF;padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><b><span
  style='line-height:115%;font-family:宋体'>江泰</span></b></p>
  </td>
  <td width=78 style='width:58.8pt;border-top:double windowtext 1.5pt;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:double windowtext 1.5pt;
  background:#BFBFBF;padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><b><span
  lang=EN-US style='line-height:115%'>&nbsp;</span></b></p>
  </td>
 </tr>
 <tr style='height:1.0pt'>
  <td width=108 rowspan=3 style='width:80.85pt;border-top:none;border-left:
  double windowtext 1.5pt;border-bottom:solid windowtext 1.0pt;border-right:
  solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=center style='margin-top:0cm;margin-right:5.65pt;
  margin-bottom:0cm;margin-left:5.65pt;margin-bottom:.0001pt;text-align:center;
  line-height:115%'><b><span style='font-size:12.0pt;line-height:115%;
  font-family:宋体;letter-spacing:2.0pt'>索赔协助</span></b></p>
  </td>
  <td width=80 style='width:59.7pt;border-top:none;border-left:none;border-bottom:
  solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><b><span
  style='line-height:115%;font-family:宋体'>协助建立报损及索赔流程</span></b></p>
  </td>
  <td width=150 style='width:112.55pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  style='line-height:115%;font-family:宋体'>沟通、建议、确定。</span></p>
  </td>
  <td width=228 style='width:171.05pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  style='line-height:115%;font-family:宋体'>根据项目具体情况设计报损及索赔的相关步骤及所需单证、表格等。</span></p>
  </td>
  <td width=78 style='width:58.8pt;border-top:none;border-left:none;border-bottom:
  solid windowtext 1.0pt;border-right:double windowtext 1.5pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  style='line-height:115%;font-family:宋体'>√</span></p>
  </td>
 </tr>
 <tr style='height:1.0pt'>
  <td width=80 style='width:59.7pt;border-top:none;border-left:none;border-bottom:
  solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><b><span
  style='line-height:115%;font-family:宋体'>提供索赔咨询</span></b></p>
  </td>
  <td width=150 style='width:112.55pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  style='line-height:115%;font-family:宋体'>提出需求、配合。</span></p>
  </td>
  <td width=228 style='width:171.05pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  style='line-height:115%;font-family:宋体'>协助报案（报案指导）；</span></p>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  style='line-height:115%;font-family:宋体'>协助准备<span lang=EN-US>/</span>审核索赔材料；</span></p>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  style='line-height:115%;font-family:宋体'>协助召集赔案沟通会（必要时）；</span></p>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  style='line-height:115%;font-family:宋体'>协助督促保险公司处理；</span></p>
  </td>
  <td width=78 style='width:58.8pt;border-top:none;border-left:none;border-bottom:
  solid windowtext 1.0pt;border-right:double windowtext 1.5pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  style='line-height:115%;font-family:宋体'>√</span></p>
  </td>
 </tr>
 <tr style='height:1.0pt'>
  <td width=80 style='width:59.7pt;border-top:none;border-left:none;border-bottom:
  solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><b><span
  style='line-height:115%;font-family:宋体'>赔案进行汇总分析</span></b></p>
  </td>
  <td width=150 style='width:112.55pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  style='line-height:115%;font-family:宋体'>配合。</span></p>
  </td>
  <td width=228 style='width:171.05pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  style='line-height:115%;font-family:宋体'>每半年对项目保险赔案进行汇总分析，并根据分析结果完善风险管理措施及保险索赔体系。</span></p>
  </td>
  <td width=78 style='width:58.8pt;border-top:none;border-left:none;border-bottom:
  solid windowtext 1.0pt;border-right:double windowtext 1.5pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  style='line-height:115%;font-family:宋体'>√</span></p>
  </td>
 </tr>
 <tr style='height:1.0pt'>
  <td width=108 rowspan=2 style='width:80.85pt;border-top:none;border-left:
  double windowtext 1.5pt;border-bottom:solid windowtext 1.0pt;border-right:
  solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=center style='margin-top:0cm;margin-right:5.65pt;
  margin-bottom:0cm;margin-left:5.65pt;margin-bottom:.0001pt;text-align:center;
  line-height:115%'><b><span style='font-size:12.0pt;line-height:115%;
  font-family:宋体;letter-spacing:2.0pt'>风险管理</span></b></p>
  </td>
  <td width=80 style='width:59.7pt;border-top:none;border-left:none;border-bottom:
  solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><b><span
  style='line-height:115%;font-family:宋体'>定期风险查勘</span></b></p>
  </td>
  <td width=150 style='width:112.55pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  style='line-height:115%;font-family:宋体'>提出要求，组织协调。</span></p>
  </td>
  <td width=228 style='width:171.05pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  style='line-height:115%;font-family:宋体'>应要求，根据工程进展不同阶段进行现场查勘，提交风险评估报告提出风险应对措施建议。</span></p>
  </td>
  <td width=78 style='width:58.8pt;border-top:none;border-left:none;border-bottom:
  solid windowtext 1.0pt;border-right:double windowtext 1.5pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  style='line-height:115%;font-family:宋体'>每年至少<span lang=EN-US>2</span>次</span></p>
  </td>
 </tr>
 <tr style='height:1.0pt'>
  <td width=80 style='width:59.7pt;border-top:none;border-left:none;border-bottom:
  solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><b><span
  style='line-height:115%;font-family:宋体'>自然灾害风险提醒</span></b></p>
  </td>
  <td width=150 style='width:112.55pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  style='line-height:115%;font-family:宋体'>采纳合理建议，实施风险防范措施。</span></p>
  </td>
  <td width=228 style='width:171.05pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  style='line-height:115%;font-family:宋体'>时刻关注当地天气状况，在得知可能出现灾害性天气时及时通知项目办，并提醒进行应急措施准备。</span></p>
  </td>
  <td width=78 style='width:58.8pt;border-top:none;border-left:none;border-bottom:
  solid windowtext 1.0pt;border-right:double windowtext 1.5pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  lang=EN-US style='line-height:115%;font-family:宋体'>6-10</span><span
  style='line-height:115%;font-family:宋体'>月根据</span><span style='line-height:
  115%;font-family:宋体'>灾害性天气情况时时提醒，其他时段每月</span><span style='line-height:115%;
  font-family:宋体'>至少<span lang=EN-US>1</span>次</span></p>
  </td>
 </tr>
 <tr style='height:1.0pt'>
  <td width=108 rowspan=3 style='width:80.85pt;border-top:none;border-left:
  double windowtext 1.5pt;border-bottom:double windowtext 1.5pt;border-right:
  solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=center style='margin-top:0cm;margin-right:5.65pt;
  margin-bottom:0cm;margin-left:5.65pt;margin-bottom:.0001pt;text-align:center;
  line-height:115%'><b><span style='font-size:12.0pt;line-height:115%;
  font-family:宋体;letter-spacing:2.0pt'>日常服务</span></b></p>
  </td>
  <td width=80 style='width:59.7pt;border-top:none;border-left:none;border-bottom:
  solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><b><span
  style='line-height:115%;font-family:宋体'>日常咨询</span></b></p>
  </td>
  <td width=150 style='width:112.55pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  style='line-height:115%;font-family:宋体'>提出问题。</span></p>
  </td>
  <td width=228 style='width:171.05pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  style='line-height:115%;font-family:宋体'>提供实时保险相关知识、本保单条款解读、工程防灾防损及工程保险等咨询服务。</span></p>
  </td>
  <td width=78 style='width:58.8pt;border-top:none;border-left:none;border-bottom:
  solid windowtext 1.0pt;border-right:double windowtext 1.5pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  style='line-height:115%;font-family:宋体'>√</span></p>
  </td>
 </tr>
 <tr style='height:1.0pt'>
  <td width=80 style='width:59.7pt;border-top:none;border-left:none;border-bottom:
  solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><b><span
  style='line-height:115%;font-family:宋体'>保险合同保全服务</span></b></p>
  </td>
  <td width=150 style='width:112.55pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  style='line-height:115%;font-family:宋体'>配合实施。</span></p>
  </td>
  <td width=228 style='width:171.05pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  style='line-height:115%;font-family:宋体'>协助和提醒按时缴纳保费、赔后及时恢复保额；提醒认真履行合同义务；根据工程的变化，及时批改保单等必要信息申报、变更等服务。</span></p>
  </td>
  <td width=78 style='width:58.8pt;border-top:none;border-left:none;border-bottom:
  solid windowtext 1.0pt;border-right:double windowtext 1.5pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  style='line-height:115%;font-family:宋体'>√</span></p>
  </td>
 </tr>
 <tr style='height:1.0pt'>
  <td width=80 style='width:59.7pt;border-top:none;border-left:none;border-bottom:
  double windowtext 1.5pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><b><span
  style='line-height:115%;font-family:宋体'>定期拜访</span></b></p>
  </td>
  <td width=150 style='width:112.55pt;border-top:none;border-left:none;
  border-bottom:double windowtext 1.5pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  style='line-height:115%;font-family:宋体'>接待</span></p>
  </td>
  <td width=228 style='width:171.05pt;border-top:none;border-left:none;
  border-bottom:double windowtext 1.5pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  style='line-height:115%;font-family:宋体'>通过与企业或工地与保险负责人进行沟通，了解新的保险需求等。</span></p>
  </td>
  <td width=78 style='width:58.8pt;border-top:none;border-left:none;border-bottom:
  double windowtext 1.5pt;border-right:double windowtext 1.5pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:115%'><span
  style='line-height:115%;font-family:宋体'>√</span></p>
  </td>
 </tr>
</table>

</div>

<p class=MsoNormal><span lang=EN-US>&nbsp;</span></p>

<p class=MsoNormal><span lang=EN-US>&nbsp;</span></p>

</div>

					
					
					<p align="center"><a href="<%=basePath %>servlet/FileDownLoadServlet?filename=咨询协议附件.doc" style="color:blue">同意并下载咨询协议附件</a></p>
						
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

