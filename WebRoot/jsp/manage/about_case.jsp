<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="bams.entity.Case" %>

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
Case c = (Case)request.getAttribute("mycase");
int mark = c.getMark();
String baoxiandanhao = c.getBaoxiandanhao();
String username = c.getUsername();
String shigujingguo = c.getShigujingguo();
String tel = c.getTel();
int id = c.getId();
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html">
<!-- Title and other stuffs -->
<title>用户信息</title>
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
							class="icon-home"></i>查看理赔报案</a> <!-- Sub menu markup 
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
    <td width="20%" align="left">保单号：</td>
    <td width="80%" align="left"><%=baoxiandanhao %></td>
  </tr>
  <tr>
    <td align="left">用户名：</td>
    <td align="left"><%=username %></td>
    
  </tr>
  <tr>
    <td align="left">电话：</td>
    <td align="left"><%=tel %></td>
    
  </tr>
  <tr>
    <td colspan="2" align="left" >
    事故经过：
    </td>
  </tr>
  <tr>
    <td colspan="2" align="left" height="400px" valign="top">
    <%=shigujingguo %>
    </td>
  </tr>
  <tr>
    <td colspan="2" align="center">
    <div id="state">
    <%
   if(mark==1){
	   
   
    %>
    已受理&nbsp;|&nbsp;<input type="button" class='mybutton' value="取消" onclick="unmark('<%=id%>')"/>
    <%
   }else{
    %>
    未受理&nbsp;|&nbsp;<input type="button" class='mybutton' value="受理" onclick="mark('<%=id%>')"/>
    <%
   }
    
    %>
    </div>
    </td>
  </tr>
  
</table>
					

						
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
<script src="<%=basePath %>js/jquery.js"></script>
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
<!-- 	<script type="text/javascript" src="js/picture/show_picture.js"></script> -->
	<script type="text/javascript">
	
	function mark(id){
		url = server_context+'/servlet/MarkLiPeiServlet?id='+id;
		//alert("some");
		loadXMLDoc(url, function() {
			//alert("readState:"+xmlhttp.readyState+" status:"+xmlhttp.status);
			
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				resultstring = xmlhttp.responseText;//json 字符串
				if(resultstring=="success"){
					//alert("受理成功");
					var temp = document.getElementById("state");
					temp.innerHTML = "已受理&nbsp;|&nbsp;"+"<input type='button' class='mybutton' value='取消' onclick='unmark("+id+")' />";
				}else{
					alert("受理失败");
				}
				
			}
		});
	}
	
	function unmark(id){
		url = server_context+'/servlet/UnmarkLiPeiServlet?id='+id;
		//alert("some");
		loadXMLDoc(url, function() {
			//alert("readState:"+xmlhttp.readyState+" status:"+xmlhttp.status);
			
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				resultstring = xmlhttp.responseText;//json 字符串
				if(resultstring=="success"){
					//alert("取消成功");
					var temp = document.getElementById("state");
					temp.innerHTML = "未受理&nbsp;|&nbsp;"+"<input type='button' class='mybutton' value='受理' onclick='mark("+id+")' />"+"</li>";
				}else{
					alert("取消失败");
				}
				
			}
		});
	}
	</script>
	<!-- Main js file -->
</body>
</html>

