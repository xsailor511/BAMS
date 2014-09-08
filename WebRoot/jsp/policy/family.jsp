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
<title>全家无忧投保单</title>
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
  <style>
table{
border-collapse:collapse;
border:1px;
text-align:center;
width:820; 
height:627;
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
							class="icon-home"></i>全家无忧投保单</a> <!-- Sub menu markup 
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
<form name="baodan" action="<%=basePath %>servlet/AddFamilyServlet" method="get" onsubmit="return checkForm()">

		<table  >
  <caption>
    全家无忧保险方案
  </caption>
  <tr>
    <td colspan="3">保险财产地址</td>
    <td colspan="4" style="text-align:left">&nbsp;
    <input type="text" name="baoxiancaichandizhi" id="baoxiancaichandizhi" style="width:80%"></td>
    <td>(具体地址)</td>
  </tr>
  <tr>
    <td rowspan="15" >投保选项</td>
    <td colspan="7" style="text-align:left">&nbsp;
    <input type="checkbox" name="caichanzonghebaoxian" value="caichanzonghebaoxian" id="caichanzonghebaoxian">家庭财产综合保险(家财无忧) 没份保险费150元</td>
  </tr>
  <tr>
    <td colspan="2">保险保障</td>
    <td>房屋</td>
    <td>房屋装潢</td>
    <td>室内财产</td>
    <td>便携式电器</td>
    <td>现金首饰</td>
  </tr>
  <tr>
    <td colspan="2">主险</td>
    <td colspan="3">200000元</td>
    <td>5000元</td>
    <td>5000元</td>
  </tr>
  <tr>
    <td colspan="2">管道爆裂</td>
    <td colspan="3">10000元</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td colspan="2">室内盗抢</td>
    <td colspan="3">5000元</td>
    <td>2500元</td>
    <td>2500元</td>
  </tr>
  <tr>
    <td colspan="2">家用电器用电安全</td>
    <td colspan="5">5000元</td>
  </tr>
  <tr>
    <td colspan="2">家用玻璃意外破碎</td>
    <td colspan="5">500元</td>
  </tr>
  <tr>
    <td colspan="7" style="text-align:left">&nbsp;
    <input type="checkbox" name="quantijiatingchengyuan" value="quantijiatingchengyuan" id="quantijiatingchengyuan">
    全体家庭成员(0-75岁)意外及医疗保险 保费合计(
    <input type="text" name="yiwaiyiliaobaoxianheji" id="yiwaiyiliaobaoxianheji"> )</td>
  </tr>
  <tr>
    <td colspan="2">家庭成员类型:</td>
    <td><input type="radio" name="jiatingchengyuanleixing" id="fuqi" >夫妻(可包含子女)</td>
    <td colspan="2"><input type="radio" name="jiatingchengyuanleixing" id="fuqi_one" >夫妻(可包含子女)+一方父母</td>
    <td colspan="2"><input type="radio" name="jiatingchengyuanleixing" id="fuqi_two" >夫妻(可包含子女)+双方父母</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td colspan="2">保险保障</td>
    <td colspan="2">保障金额</td>
    <td>费率</td>
    <td>保险费</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td colspan="2">意外伤害</td>
    <td colspan="2">200000元</td>
    <td><label for="ywshfeilv"></label>
    <input type="text" name="ywshfeilv" id="ywshfeilv" value="0.043"></td>
    <td><label for="ywshbaoxianfei"></label>
    <input type="text" name="ywshbaoxianfei" id="ywshbaoxianfei" value="200"></td>
  </tr>
  <tr>
    <td><input type="checkbox" name="yiwaishanghaiyiliao" value="yiwaishanghaiyiliao" id="yiwaishanghaiyiliao"></td>
    <td colspan="2">意外伤害医疗</td>
    <td colspan="2">2000元</td>
    <td>
    <input type="text" name="ywshylfeilv" id="ywshylfeilv" value="0.043"></td>
    <td>
    <input type="text" name="ywshylbaoxianfei" id="ywshylbaoxianfei" value="200"></td>
  </tr>
  <tr>
    <td><input type="checkbox" name="chucichamingzhongji" value="chucichamingzhongji" id="chucichamingzhongji"></td>
    <td colspan="2">投保后初次查明重疾</td>
    <td colspan="2">100000元</td>
    <td>
    <input type="text" name="tbhcccmzjfeilv" id="tbhcccmzjfeilv" value="0.043"></td>
    <td><label for="tbhcccmzjbaoxianfei"></label>
    <input type="text" name="tbhcccmzjbaoxianfei" id="tbhcccmzjbaoxianfei" value="200"></td>
  </tr>
  <tr>
    <td><input type="checkbox" name="menjizhen" value="menjizhen" id="menjizhen"></td>
    <td colspan="2">门急诊</td>
    <td colspan="2">1000元</td>
    <td>
    <input type="text" name="mjzfeilv" id="mjzfeilv" value="0.043"></td>
    <td>
    <input type="text" name="mjzbaoxianfei" id="mjzbaoxianfei" value="200"></td>
  </tr>
  <tr>
    <td><label><input type="checkbox" name="jibingzhuyuan" value="jibingzhuyuan" id="jibingzhuyuan"></label></td>
    <td colspan="2">疾病住院</td>
    <td colspan="2">20000元 （每日承担医疗补贴 100元）</td>
    <td><label for="jbzyfeilv"></label>
    <input type="text" name="jbzyfeilv" id="jbzyfeilv" value="0.043"></td>
    <td><label for="jbzybaoxianfei"></label>
    <input type="text" name="jbzybaoxianfei" id="jbzybaoxianfei" value="200" ></td>
  </tr>
  <tr>
    <td colspan="3">保险期间：</td>
    <td colspan="5" style="text-align:left">&nbsp;
    <input type="text" class="Wdate" name="startdate" id="startdate" onClick="WdatePicker()">
    起止<input type="text" class="Wdate" name="enddate" id="enddate" onClick="WdatePicker()"></td>
  </tr>
  <tr>
    <td colspan="3">免配额(率)</td>
    <td colspan="5">无</td>
  </tr>
  <tr>
    <td colspan="3">保险费总计</td>
    <td colspan="4" style="text-align:left">人民币(大写)
    <input type="text" name="baoxianfeizongjichina" id="baoxianfeizongjichina"></td>
    <td>￥&nbsp;
    <input type="text" name="baoxianfeizongji" id="baoxianfeizongji" style="width:60%"></td>
  </tr>
  <tr>
    <td colspan="10" align="center">&nbsp;<input type="submit" value="提交保单" /></td>
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
	<!-- date picker -->
	<script src="<%=basePath %>js/My97DatePicker/WdatePicker.js"></script>
	<!-- Main js file -->
	<script type="text/javascript">
	function isEmpty(str){
		if(str==null || str.trim().length==0)
			return true;
		else 
			return false;
	}
	
	function checkForm(){
		var baoxiancaichandizhi = document.getElementById("baoxiancaichandizhi").value;
		var startdate = document.getElementById("startdate").value;
		var enddate = document.getElementById("enddate").value;
		var baoxianfeizongji = document.getElementById("baoxianfeizongji").value;
		
		if(isEmpty(baoxiancaichandizhi)||isEmpty(startdate)||isEmpty(enddate)
				||isEmpty(baoxianfeizongji)){
			alert("页面有未填写的空格");
			return false;
		}
		
	}

	</script>
</body>
</html>

