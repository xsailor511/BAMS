<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="bams.entity.Order" %>
<%@ page language="java" import="bams.entity.Goods" %>

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
<title>订单详情</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="author" content="">
<script src="<%=basePath %>js/jquery.js"></script>


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
<link rel="stylesheet" type="text/css" href="<%=basePath %>jsp/manage/css/jquery.fancybox-1.3.4.css" media="screen" />
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
.mybutton{
width:38px;height:18px;line-height:18px;border:0;margin:-4px 0 0 0px;background:#D28EFF;
}
</style>
<!-- Favicon -->
<link rel="shortcut icon" href="<%=basePath %>img/favicon/favicon.png">

</head>
<body>
	<!-- Navbar starts -->
<jsp:useBean id="order" class="bams.entity.Order" scope="request"/>
<jsp:useBean id="goods" class="bams.entity.Goods" scope="request"/>
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
							class="icon-home"></i>查看订单详情</a> <!-- Sub menu markup 
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
					<div class="box-body" style="background:#CCDDFF;color:black;height:520px">
						
<table width="600px" border="1">
  <tr>
    <td width="20%" align="right">订单编号：</td>
    <td width="30%" align="left" colspan="3"><jsp:getProperty name="order" property="code" /> </td>
    
  </tr>
  <tr>
    <td align="right">商品名称</td>
    <td align="left"><jsp:getProperty name="goods" property="description" /></td>
    
  </tr>
  
  <tr>
  <td align="right">用户名称：</td>
    <td align="left"><jsp:getProperty name="order" property="username" /></td>
  </tr>
  <tr>
    <td align="right">地址：</td>
    <td align="left" colspan="3"><jsp:getProperty name="order" property="address" /></td>
    
  </tr>
<tr>
    <td align="right">价值：</td>
    <td align="left" colspan="3"><jsp:getProperty name="goods" property="value" />积分</td>
    
  </tr>
  <tr>
    <td align="right">商品图片：</td>
    <td align="left" ><img src="<jsp:getProperty name="goods" property="imageURL" />" width="300px"/></td>
    
  </tr>
  
</table>
					

						
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
function markOrder(id){
	url = server_context+'/servlet/MarkOrderServlet?id='+id;
	//alert("some");
	loadXMLDoc(url, function() {
		//alert("readState:"+xmlhttp.readyState+" status:"+xmlhttp.status);
		
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			resultstring = xmlhttp.responseText;//json 字符串
			if(resultstring=="success"){
				//alert("受理成功");
				var temp = document.getElementById("input"+id);
				temp.innerHTML = "已受理&nbsp;|&nbsp;"+"<input type='button' class='mybutton' value='取消' onclick='unmarkOrder("+id+")' />";
			}else{
				alert("受理失败");
			}
			
		}
	});
}

function unmarkOrder(id){
	url = server_context+'/servlet/UnmarkOrderServlet?id='+id;
	//alert("some");
	loadXMLDoc(url, function() {
		//alert("readState:"+xmlhttp.readyState+" status:"+xmlhttp.status);
		
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			resultstring = xmlhttp.responseText;//json 字符串
			if(resultstring=="success"){
				//alert("取消成功");
				var temp = document.getElementById("input"+id);
				temp.innerHTML = "未受理&nbsp;|&nbsp;"+"<input type='button' class='mybutton' value='受理' onclick='markOrder("+id+")' />"+"</li>";
			}else{
				alert("取消失败");
			}
			
		}
	});
}


</script>
<!-- 	<script type="text/javascript" src="js/picture/show_picture.js"></script> -->
	
	<!-- Main js file -->
</body>
</html>

