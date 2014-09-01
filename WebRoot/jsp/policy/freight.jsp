<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="bams.entity.User" %>
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
<title>货运险投保单</title>
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
								<li><a href="<%=basePath %>Logout">注销</a></li>
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
					<li><a href="<%=basePath %>index.html" class="open br-red"><i
							class="icon-home"></i>货运险投保单</a> <!-- Sub menu markup 
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
					<div class="box-body">
						

					<form name="baodan" action="html_form_action.asp" method="get">

		<table width="1235" height="530" border="1">
  <caption>
    货物运输保险投保单
  <br />
  APPLICATION FOR CARGO TRANSPORTATION INSURANCE<br />
  </caption>
  <tr>
    <td colspan="7">&nbsp;</td>
    <td colspan="2">FAX</td>
  </tr>
  <tr>
    <td colspan="7">&nbsp;</td>
    <td width="192">From</td>
    <td width="210"><label for="faxfrom"></label>
    <input type="text" name="faxfrom" id="faxfrom"></td>
  </tr>
  <tr>
    <td colspan="7">&nbsp;</td>
    <td>To</td>
    <td><label for="faxto"></label>
    <input type="text" name="faxto" id="faxto"></td>
  </tr>
  <tr>
    <td colspan="2"><p>被保险人</p>
    <p>INSURED</p></td>
    <td colspan="7"><label for="beibaoxianren"></label>
    <input type="text" name="beibaoxianren" id="beibaoxianren"></td>
  </tr>
  <tr>
    <td colspan="2"><p>发票号</p>
    <p>INVOICE NO.</p></td>
    <td colspan="3"><label for="fapiaohao"></label>
    <input type="text" name="fapiaohao" id="fapiaohao"></td>
    <td colspan="2"><p>发票日期</p>
    <p>INVOICE DATE</p></td>
    <td colspan="2"><input type="text" name="fapiaoriqi" id="fapiaoriqi" onClick="WdatePicker()"></td>
  </tr>
  <tr>
    <td colspan="2"><p>进口合同号</p>
    <p>IMP.CONTRACT NO. </p></td>
    <td colspan="3"><label for="jinkouhetonghao"></label>
    <input type="text" name="jinkouhetonghao" id="jinkouhetonghao"></td>
    <td colspan="2"><p>信用证号</p>
    <p>L/C NO.</p></td>
    <td colspan="2"><label for="xinyongzhenghao"></label>
    <input type="text" name="xinyongzhenghao" id="xinyongzhenghao"></td>
  </tr>
  <tr>
    <td colspan="2"><p>包装数量</p>
    <p>保险货物名称</p>
    <p>QUANTITY&nbsp;AND&nbsp;DESCRIPTION&nbsp;OF&nbsp;GOODS</p></td>
    <td colspan="5"><label for="baozhuangshuliang"></label>
    <input type="text" name="baozhuangshuliang" id="baozhuangshuliang"></td>
    <td><p>标记</p>
    <p>MARK&amp;NOS.</p></td>
    <td><label for="biaoji"></label>
    <input type="text" name="biaoji" id="biaoji"></td>
  </tr>
  <tr>
    <td colspan="2"><p>价格条件</p>
    <p>PRICE TERMS</p></td>
    <td colspan="3"><label for="jiagetiaojian"></label>
    <input type="text" name="jiagetiaojian" id="jiagetiaojian"></td>
    <td colspan="2" rowspan="2"><p>保险金额</p>
    <p>AMOUNT INSURED</p></td>
    <td colspan="2" rowspan="2"><label for="baoxianjine"></label>
    <input type="text" name="baoxianjine" id="baoxianjine"></td>
  </tr>
  <tr>
    <td colspan="2"><p>发票金额</p>
    <p>INVOICE VALUE</p></td>
    <td colspan="3"><label for="fapiaojine"></label>
    <input type="text" name="fapiaojine" id="fapiaojine"></td>
  </tr>
  <tr>
    <td colspan="2"><p>费率</p>
    <p>INSURANCE RATE</p></td>
    <td colspan="3"><label for="feilv"></label>
    <input type="text" name="feilv" id="feilv"></td>
    <td colspan="2">保险费</td>
    <td colspan="2"><label for="baoxianfei"></label>
    <input type="text" name="baoxianfei" id="baoxianfei"></td>
  </tr>
  <tr>
    <td colspan="2"><p>船名</p>
    <p>VESSEL.NAME</p></td>
    <td colspan="4"><label for="chuanming"></label>
    <input type="text" name="chuanming" id="chuanming"></td>
    <td colspan="2" rowspan="2"><p>启运日期</p>
    <p>DATE OF COMMENCEMENT</p></td>
    <td rowspan="2"><input type="text" name="qiyunriqi" id="qiyunriqi" onClick="WdatePicker()"></td>
  </tr>
  <tr>
    <td width="160"><p>建造年份</p>
    <p>YEAR OF BULLT</p></td>
    <td width="149"><label for="jianzaonianfen"></label>
    <input type="text" name="jianzaonianfen" id="jianzaonianfen"></td>
    <td width="181"><p>船旗</p>
    <p>FLAG</p></td>
    <td colspan="3"><label for="chuanqi"></label>
    <input type="text" name="chuanqi" id="chuanqi"></td>
  </tr>
  <tr>
    <td><p>起运港</p>
    <p>FROM</p></td>
    <td colspan="2"><label for="qiyungang"></label>
    <input type="text" name="qiyungang" id="qiyungang"></td>
    <td width="85"><p>经由</p>
    <p>VIA</p></td>
    <td colspan="3"><label for="jingyou"></label>
    <input type="text" name="jingyou" id="jingyou"></td>
    <td><p>目的港</p>
    <p>TO</p></td>
    <td><label for="mudigang"></label>
    <input type="text" name="mudigang" id="mudigang"></td>
  </tr>
  <tr>
    <td colspan="2"><p>承保险别</p>
    <p>CONDITIONS</p></td>
    <td colspan="7"><label for="chengbaoxianbie"></label>
    <input type="text" name="chengbaoxianbie" id="chengbaoxianbie"></td>
  </tr>
  <tr>
    <td colspan="2"><p>备注</p>
    <p>NOTE</p></td>
    <td colspan="7"><label for="beizhu"></label>
    <input type="text" name="beizhu" id="beizhu"></td>
  </tr>
  <tr>
    <td colspan="2"><p>投保人签章</p>
    <p>SIGNATURE/SEAL OF APPLICANT</p></td>
    <td colspan="3"><label for="toubaorenqianzhang"></label>
    <input type="text" name="toubaorenqianzhang" id="toubaorenqianzhang"></td>
    <td colspan="2"><p>投保填单日期</p>
    <p>ISSUED DATE</p></td>
    <td colspan="2"><input type="text" name="toubaotiandanriqi" id="toubaotiandanriqi" onClick="WdatePicker()"></td>
  </tr>
</table>
	</form>

						
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
	
	<!-- Main js file -->
</body>
</html>

