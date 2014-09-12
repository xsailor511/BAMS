<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="bams.entity.User" %>
<%@ page language="java" import="bams.entity.Picture" %>
<%@ page language="java" import="bams.entity.PolicyIndex" %>
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
String mark = (String)request.getAttribute("mark");
if(null==mark){
	response.setHeader("refresh","0;URL="+basePath+"/error.jsp") ;
}
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
<script src="<%=basePath %>js/jquery.js"></script>
<script src="<%=basePath %>jsp/manage/js/jquery2222.js"></script>
<script src="<%=basePath %>jsp/manage/js/jquery.fancybox-1.3.4.js"></script>

<script src="<%=basePath %>jsp/manage/js/jquery.mousewheel-3.0.4.js"></script>


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

</style>
<!-- Favicon -->
<link rel="shortcut icon" href="<%=basePath %>img/favicon/favicon.png">

<script type="text/javascript">
	$(document).ready(function() {

		
		$("a[rel=example_group]").fancybox({
			'transitionIn':'none',
			'transitionOut':'none',
			'titlePosition':'over',
			'titleFormat':function(title, currentArray, currentIndex, currentOpts) {
				return '<span id="fancybox-title-over">Image ' + (currentIndex + 1) + ' / ' + currentArray.length + (title.length ? ' &nbsp; ' + title : '') + '</span>';
			}
		});

		
	});
</script>
</head>
<body>
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
					<li><a  class="open br-red"><i
							class="icon-home"></i>管理单个用户信息</a> <!-- Sub menu markup 
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
						
<table width="800px" border="1">
  <tr>
    <td width="20%" align="right">用户名：</td>
    <td width="30%" align="left"><jsp:getProperty name="user" property="name" />
    <input type="hidden" id="name" value=<jsp:getProperty name="user" property="name"/> /> </td>
    <td width="17%" align="right">邮箱：</td>
    <td width="33%" align="left"><jsp:getProperty name="user" property="email" /></td>
  </tr>
  <tr>
    <td align="right">真实姓名：</td>
    <td align="left"><jsp:getProperty name="user" property="realname" /></td>
    <td align="right">电话：</td>
    <td align="left"><jsp:getProperty name="user" property="phone" /></td>
  </tr>
  <tr>
    <td align="right">用户身份：</td>
    <td align="left"><jsp:getProperty name="user" property="role" /></td>
    <td align="right">身份证号码：</td>
    <td align="left"><jsp:getProperty name="user" property="socialid" /></td>
  </tr>
  <tr>
    <td colspan="2" align="center">上传的图片</td>
    <td colspan="2" align="center">所有保单</td>
  </tr>
  <tr>
    <td height="461" colspan="2" align="left" valign="top">
    <div id="content">
    <%
   	List<Picture> picturelist = (List)request.getAttribute("picturelist");
    for(int i=0;i<picturelist.size();i++){
    	String img_url = picturelist.get(i).getPicture_url();
    	String image = picturelist.get(i).getPicture_name();
    %>
    <p><%=image %>&nbsp;&nbsp;&nbsp;
    <a rel="example_group" href="<%=img_url %>" title=""><font color="blue">查看</font></a>
    </p>
    <%
    
    }
    %>
    
    </div>
    </td>
    <td colspan="2" align="left" valign="top">
    <ul>
    <%
    List<PolicyIndex> indexlist = (List)request.getAttribute("indexlist");
    for(int i=0;i<indexlist.size();i++){
    	String policyname = indexlist.get(i).getPolicyname();
    	String tag = indexlist.get(i).getTag();
    	String username = indexlist.get(i).getUsername();
    %>
    <li><a href="<%=basePath %>servlet/DownPolicyAsMSWord?tag=<%=tag %>" title=""><font color="blue">下载</font></a>
    <a href="<%=basePath %>servlet/DownPolicyAsMSWord?tag=<%=tag %>" ><%=policyname %></a>&nbsp;&nbsp;&nbsp;
    </li>
    <%
    }
    %>
   </ul>
    </td>
  </tr>
  <tr>
    <td colspan="4" align="center">
    
    <a href="javascript:void(0)" onclick="deleteuser()"><font color="red">
    删除该用户
    </font></a>
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
<!-- 	<script type="text/javascript" src="js/picture/show_picture.js"></script> -->
	<script type="text/javascript">
	var xmlhttp;
	function loadXMLDoc(url, cfunc) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}

		xmlhttp.open("POST", url, false);
		xmlhttp.onreadystatechange = cfunc;
		xmlhttp.setRequestHeader("context-type", "text/html;charset=UTF-8");
		xmlhttp.send();
	}
	//获取应用绝对路径
	var localObj = window.location;

	var contextPath = localObj.pathname.split("/")[1];

	var basePath = localObj.protocol+"//"+localObj.host+"/"+contextPath;

	var server_context=basePath;
	function deleteuser(){
		var name = document.getElementById("name").value;
		//alert(name);
		var url = server_context+"/Delete?name="+name;
		loadXMLDoc(url, function() {
			
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				resultstring = xmlhttp.responseText;//json 字符串
				if(resultstring=="success"){
					alert("删除成功");
					//parent.location.reload();
					window.close();
				}else{
					alert("删除失败");
					
				}
			}
		});
	}
	</script>
	<!-- Main js file -->
</body>
</html>

