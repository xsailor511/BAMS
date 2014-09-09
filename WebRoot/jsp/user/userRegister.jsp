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
<script language="javascript">
	function checkForm(form){
		if(isEmpty(form.name.value) || isEmpty(form.password.value) || 
				isEmpty(form.confirmPassword.value) || isEmpty(form.email.value) || 
				isEmpty(form.phone.value) || isEmpty(form.socialid.value)||isEmpty(form.realname.value) ){
			alert("请将必填项填写完整!");
			return false;
		}
		if(form.password.value!=form.confirmPassword.value){
			alert("两次密码不匹配!");
			return false;
		}
		if(form.password.value.length<6 || form.password.value.length>16){
			alert("密码长度不得少于6个字符，不得多于16个字符！");
			return false;
		}
		if(form.socialid.value.length!=18){
			alert("身份证号码不符合！");
			return false;
		}
		if(form.phone.value.length!=11){//18769780000
			alert("电话号码不符合！");
			return false;
		}
		
	     var email = document.getElementById("email").value;
	     if(!emailFormatCheck(email))
	     {
	         document.getElementById("spanEmail").innerHTML = "<font color='red'>请输入邮箱的正确形式！</font>";
	         document.getElementById("email").value="";
	         return false;
	     }
		
		return true;
	}
	
	function emailFormatCheck(email){
	    if ((email.length > 128) || (email.length < 6)) {
	        return false;
	    }
	    var format = /^[A-Za-z0-9+]+[A-Za-z0-9\.\_\-+]*@([A-Za-z0-9\-]+\.)+[A-Za-z0-9]+$/;
	    if (!email.match(format)) {
	        return false;
	    }
	    return true;
	}
	
	function isEmpty(str){
		if(str==null || str.length==0)
			return true;
		else 
			return false;
	}
	function checkName(){
		var name=document.userRegisterForm.name.value;
		if(name.length>0){
			 var url="checkName.jsp?name=" +name; //转向网页的地址;
			  var name="检查用户名";				//网页名称，可为空;
			  var iWidth=300;                          //弹出窗口的宽度;
			  var iHeight=200;                        //弹出窗口的高度;
			  var iTop = (window.screen.availHeight-30-iHeight)/2;       //获得窗口的垂直位置;
			  var iLeft = (window.screen.availWidth-10-iWidth)/2;           //获得窗口的水平位置;
			  window.open(url,name,'height='+iHeight+',,innerHeight='+iHeight+',width='+iWidth+',innerWidth='+iWidth+',top='+iTop+',left='+iLeft+',toolbar=no,menubar=no,scrollbars=auto,resizeable=no,location=no,status=no');

		
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
						<li><a href="login.html">投保必读</a></li>
						<li><a href="<%=basePath %>jsp/user/login.jsp">登录</a></li>


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
					<li><a  class="open br-red"><i
							class="icon-home"></i> <font color="blue">注册</font></a> </li>

					<li><a href="<%=basePath %>jsp/user/login.jsp" class="br-blue"><i
							class="icon-user"></i> 登陆</a></li>
					<li><a href="<%=basePath %>error.jsp" class="br-blue"><i
							class="icon-user"></i> 更多</a></li>
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
							
  
<form name="userRegisterForm" method="post" action="<%=basePath %>Register" onsubmit="return checkForm(this)">
<table width="80%"  border="0" align="center" cellpadding="2" cellspacing="0" >
<caption>
<font color="blue" style="font-size: 20px">用户注册</font><br></caption>
  <tr>
    <td width="20%" align="right">用户名:</td>
    <td width="30%" valign="bottom">
      <input name="name" type="text" id="name" size="20"  style="width: 180px;height: 20px"></td>
    <td width="45%">*
        <input name="checkUser" type="button" value="查看是否被占用" onclick="checkName();">
    </td>
  </tr>
  <tr >
    <td colspan="3"></td>
  </tr>
  <tr><td align="right">密　码:</td>
    <td><input name="password" type="password" id="password" size="20"  style="width: 180px;height: 20px"></td>
    <td>*(密码长度为6～16位，区分字母大小写。登录密码可以由字母、数字、特殊字符组成。)</td>
  </tr>
  <tr >
    <td height="40" align="right">密码确认:</td>
    <td><input name="confirmPassword" type="password" id="confirmPassword" size="20"  style="width: 180px;height: 20px"></td>
    <td>*(请再输一遍，以便确认！) </td>
  </tr>
  
  
  <tr><td align="right">电子邮件:</td>
    <td><input name="email" id="email" type="text" size="20" maxlength="50" style="width: 180px;height: 20px"></td>
    <td>*<span id="spanEmail">(请您输入正确的E-mail地址！)</span></td>
  </tr>
  
  <tr>
    <td align="right">身份证号码:</td>
    <td ><input name="socialid" type="text" size="20" maxlength="50" style="width: 180px;height: 20px"></td>
    <td>*(请填写正确的身份证号码！)</td>
  </tr>
  
  <tr>
    <td align="right">真实姓名:</td>
    <td><input name="realname" type="text"id="realname" size="20" maxlength="50" style="width: 180px;height: 20px"> </td>
    <td>*&nbsp;(填写您的真实姓名)</td>
  </tr>
  <tr >
    <td align="right">联系电话:</td>
    <td><input name="phone" type="text" id="phone" size="20" maxlength="50" style="width: 180px;height: 20px"></td>
    <td>*&nbsp;(填写联系电话)</td>
  </tr>
  <tr>
  <td align="right">用户身份:</td>
  <td>
						<select name="role" style="width: 195px;height: 30px">
					  <option value ="1" selected="selected">企业黄金</option>
					  <option value ="2">银行</option>
					  <option value="3">经济服务</option>
					  <option value="4">代理人</option>
					  <option value="6">企业邮政</option>
					  </select>
						</td>
						<td>*(选择合适的用户身份)</td>
  </tr>
  <tr>
    <td colspan="3" align="center">
      <input type="submit" name="Submit" value="提交" style="width: 100px;height: 30px">
	</td>
  </tr>
</table>
</form>
						</div>

						
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
									<li><a href="#">链接一</a></li>
									<li><a href="#">链接二</a></li>
									<li><a href="#">链接三</a></li>
									<li><a href="#">链接四</a></li>
									<li><a href="#">链接五</a></li>
								</ul>
							</div>

							<div class="col-r">
								<h6>产品导读</h6>
								<ul>
									<li><a href="#">链接一</a></li>
									<li><a href="#">链接二</a></li>
									<li><a href="#">链接三</a></li>
									<li><a href="#">链接四</a></li>
									<li><a href="#">链接五</a></li>
								</ul>
							</div>

							<div class="clearfix"></div>

						</div>
					</div>

					<div class="span4">
						<div class="fwidget">
							<h6>行业新闻</h6>
							<ul>
								<li><a href="#">链接一</a></li>
								<li><a href="#">链接二</a></li>
								<li><a href="#">链接三</a></li>
								<li><a href="#">链接四</a></li>
								<li><a href="#">链接五</a></li>
							</ul>
						</div>
					</div>

					<div class="span4">
						<div class="fwidget">
							<h6>友情链接</h6>
							<ul>
								<li><a href="#">链接一</a></li>
								<li><a href="#">链接二</a></li>
								<li><a href="#">链接三</a></li>
								<li><a href="#">链接四</a></li>
								<li><a href="#">链接五</a></li>
							</ul>
						</div>
					</div>

				</div>

				<div class="row-fluid">
					<div class="span12">
						<hr class="visible-desktop">
						<div class="copy">
							Copyright 2014 &copy; - <a href="#">http://www.ybztc.com</a> - Collect from
							<a href="http://www.ybztc.com" title="银保直通车" target="_blank">银保直通车</a>
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
	<span class="totop"><a href="#"><i class="icon-chevron-up"></i></a></span>
 
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
