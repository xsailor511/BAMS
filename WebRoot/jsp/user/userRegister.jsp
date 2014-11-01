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
					<li><a style="color:blue" class="open br-red"><i
							class="icon-home"></i>注册</a> </li>

					<li><a href="<%=basePath %>jsp/user/login.jsp" class="br-blue"><i
							class="icon-user"></i>登陆</a></li>

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

<!-- 			<div class="matter"> -->
<!-- 				<div class="container-fluid"> -->

					<!-- Element -->
				<div class="box-body" style="background:#CCDDFF;color:black;height:520px"> 
<!-- 						<div class="flexslider" > -->
							
  
<form name="userRegisterForm" method="post" action="<%=basePath %>Register" onsubmit="return checkForm(this)">
<table width="80%"  border="0" align="center" style=" border:1px solid #191970;" cellpadding="0" cellspacing="1" >

<tr >
    <td colspan="3" align="center"><font color="blue" style="font-size: 20px">用户注册</font></td>
  </tr>
  <tr>
    <td width="20%" align="right">用户名:</td>
    <td width="30%" valign="bottom">
      <input name="name" type="text" id="name" size="20"  style="width: 180px;height: 20px" onblur="checkName()" ></td>
    <td width="45%">
        <div id="name_message">*</div>
    </td>
  </tr>
  <tr >
    <td colspan="3"></td>
  </tr>
  <tr><td align="right">密　码:</td>
    <td><input name="password" type="password" id="password" size="20"  style="width: 180px;height: 20px"></td>
    <td>*</td>
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

						
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
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
	<script src="<%=basePath %>js/xmlhttp.js"></script>
	
	<script language="javascript">
	function checkForm(form){
		if(isEmpty(form.name.value) || isEmpty(form.password.value) || 
				isEmpty(form.confirmPassword.value) || isEmpty(form.email.value) || 
				isEmpty(form.phone.value) || isEmpty(form.socialid.value)||isEmpty(form.realname.value) ){
			alert("请将必填项填写完整!");
			return false;
		}
		if(!checkName()){
	    	alert("该用户名已经存在");
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
		 var regex=/^[0-9A-Za-z_]{4,15}$/;
		 if(!regex.test(form.name.value)){
			 alert("用户的用户名只包含大小写英文、数字和下划线。同时用户名长度在4-15之间");
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
		var name_message = document.getElementById("name_message");
		var url = server_context+'/CheckUsernameServlet?name='+name;
		//alert(server_context);
		if(isEmpty(name)){
			name_message.innerHTML = "<font color='blue' >请填写用户名</font>";
			return false;
		}
		var result = false; 
		loadXMLDoc(url, function() {
			//alert("readState:"+xmlhttp.readyState+" status:"+xmlhttp.status);
			
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				resultstring = xmlhttp.responseText;//json 字符串
				//alert(resultstring);
				if(resultstring=="exsit"){
					name_message.innerHTML = "<font color='red' >该用户已经存在</font>";
					result = false;
				}else if(resultstring=="none"){
					name_message.innerHTML = "<font color='blue' >该用户可以使用</font>";
					result = true;
				}else{
					alert("检查失败");
					result = false;
				}
				//
				
				
			}
		});
		return result;
	}
</script>
	<!-- Main js file -->
</body>
</html>
