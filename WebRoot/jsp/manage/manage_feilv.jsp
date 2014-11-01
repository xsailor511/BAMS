<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="bams.entity.Feilv" %>
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
	if(null==session_name||role!=5){//if the user is not login or a manager.
		
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
<title>管理员</title>
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
<style type="text/css"> 

#main {text-align:center;MARGIN-RIGHT: auto; MARGIN-LEFT: auto;} 
#main ul {width:520px;height:165px;list-style:none}
#main li.description {border:1px solid #000;border-top:1px solid #000;float:left;width:306px;height:33px;text-align:center;line-height:33px} 
#main li.input {border-bottom:1px solid #000;border-top:1px solid #000;float:left;width:102px;height:33px;text-align:center;line-height:33px}
#main li.button {border:1px solid #000;border-top:1px solid #000;float:left;width:102px;height:33px;text-align:center;line-height:33px} 
#main li.b {border-bottom:1px solid #ccc} 
#main li.r {border-right:1px solid #ccc}
.feilv{
width:60px;
height:20px;
}
.mybutton{
width:50px;
height:25px;
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

					<li><a style="color:blue" class="br-blue"><i class="icon-user"></i>费率管理</a></li>
					
				</ul>
				
			</div>



		</div>
		<!-- Sidebar ends -->
		<!-- Mainbar starts -->
		<div class="mainbar">

			<div class="matter">
				<div class="container-fluid">

					<!-- Element -->
					<div class="box-body" style="background:#CCDDFF;color:black;height:520px">

<div id="main"> 
<ul> 
<li class="description">所属保单</li> 

<li class="input">当前费率(‰)</li>
<li class="button">修改</li>


<%
List<Feilv> feilvlist= (List)request.getAttribute("feilvlist");
for(int i=0;i<feilvlist.size();i++){
	int id = feilvlist.get(i).getId();
	String description = feilvlist.get(i).getDescription();
	int feilv = feilvlist.get(i).getFeilv();


%>
<li class="description"><%=description %></li> 
<li class="input"><input type="text" name="feilv" id="feilv<%=id %>" class="feilv" value="<%=feilv %>" /></li> 
<li class="button"><input type="button" id="mybutton" class="mybutton" onclick="alterValue('<%=id %>','<%=feilv %>')" value="修改" /></li> 


<%
}
%>

</ul> 
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
	
	<script type="text/javascript">
	function isEmpty(str){
		if(str==null || str.trim().length==0)
			return true;
		else 
			return false;
	}
	
	
	
	function alterValue(id, feilv){
		var new_feilv = document.getElementById("feilv"+id).value;
		if(isEmpty(new_feilv)){
			alert("费率不能为空");
			document.getElementById("feilv"+id).value = feilv;
			return;
		}
		if(isNaN(new_feilv)){
			alert("费率必须是数字");
			document.getElementById("feilv"+id).value = feilv;
			return;
		}
		if(new_feilv*1<0){
			alert("费率必须大于0");
			document.getElementById("feilv"+id).value = feilv;
			return ;
		}
		var temp = (new_feilv*1).toFixed(0);
		if(new_feilv*1-temp>0){
			alert("费率是千分制整数");
			document.getElementById("feilv"+id).value = feilv;
			return ;
		}
		if(new_feilv==feilv){
			return ;
		}else{
			var url = server_context+"/servlet/AlterFeilvServlet?id="+id+"&feilv="+new_feilv;
			loadXMLDoc(url, function() {
				
				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					resultstring = xmlhttp.responseText;//json 字符串
					if(resultstring=="success"){
						alert("修改成功");
						location.reload();
					}else{
						alert("修改失败");
						location.reload();
					}
				}
			});
		}
		
	}
	
	</script>
	<!-- Main js file -->
</body>
</html>

