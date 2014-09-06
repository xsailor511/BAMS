<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="bams.entity.File" %>
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
table.dotted {border-style: dotted}
table.dashed {border-style: dashed}
table.solid {border-style: solid}
table.double {border-style: double}
table.groove {border-style: groove}
table.ridge {border-style: ridge}
table.inset {border-style: inset}
table.outset {border-style: outset}

input.user_goal{
width:50px;
height:15px;
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
					<li ><a href="<%=basePath %>jsp/home/bams_manager.jsp" class="open br-red"><i class="icon-home"></i>查找用户 </a></li>
					<li><a href="<%=basePath %>servlet/ListAllUserServlet" class="open br-red"><i class="icon-home"></i> 所有用户</a></li>

					<li><a href="<%=basePath %>jsp/manage/all_policy.jsp" class="br-blue"><i
							class="icon-user"></i> 批量打印word文档</a></li>
					<li><a  class="br-blue"><i
							class="icon-user"></i> <font color="blue">文件上传</font></a></li>
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
<!-- 						<div class="flexslider"> -->
<div id="uploaded_file">
<%
List<File> list = (List)request.getAttribute("filelist");
if(null==list){
	  this.getServletContext()
	  	.getRequestDispatcher("/error.jsp")
	  	.forward(request,response);
}
for(int i=0;i<list.size();i++){
	
String filename = list.get(i).getFilename();
//String fileurl = list.get(i).getFileurl();

%>
<p><a href="javascript:deletefile('<%=filename %>')">删除</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=filename %>
<input type="hidden" name="hiddenfile" value="<%=filename %>" />
</p>
<%

}

%>
</div>

<div class="test">
   <form name="uploadForm" method="POST" enctype="MULTIPART/FORM-DATA" action="<%=basePath %>servlet/UploadFileServlet" onsubmit="return checkForm()">
        <div id="fileinput">
        </div>
        <input type="button" onclick="addNewFileInput()" value="添加"/>
        <input type="submit" name="submit"  value="提交">
        <input type="reset" name="reset" value="重置">
      </form>
      </div>

<!-- 						</div> -->
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
	<script type="text/javascript">
var count = 1;
var fileinput = document.getElementById("fileinput");
fileinput.appendChild(document.createElement("br"));
var firstinput = document.createElement("input");
firstinput.type = "file";
firstinput.name = "commonfile";
firstinput.accept = ".xls,.doc,.txt,.pdf,.docx";
firstinput.size = 50;
fileinput.appendChild(document.createTextNode("上传文件"+count+":"));
fileinput.appendChild(firstinput);


function addNewFileInput(){
	count ++;
	if(count>=10){
		alert("最多添加9个文件");
	}else{
		var fileinput = document.getElementById("fileinput");
		fileinput.appendChild(document.createElement("br"));
		var newinput = document.createElement("input");
		newinput.type = "file";
		newinput.name = "commonfile";
		newinput.accept = ".xls,.doc,.txt,.pdf,.docx";
		newinput.size = 50;
		
		
		fileinput.appendChild(document.createTextNode("上传文件"+count+":"));
		fileinput.appendChild(newinput);
		
		
	}
	
	
}

function checkForm(){
	var hiddenfiles = document.getElementsByName("hiddenfile");
	
	var commonfiles = document.getElementsByName("commonfile");
	var temp = 0;
	for(var u=0;u<commonfiles.length;u++){
		filevalue = commonfiles[u].value;
		//alert("filevalue"+filevalue);
		if(isEmpty(filevalue)){
			temp++;
		}
	}
	//没有选择任何图片，返回错误
	if(temp==commonfiles.length){
		alert("请选择文件");
		return false;
	}
	
	var maxsize = 4*1024*1024;//最大4M
	
	for(var i=0;i<commonfiles.length;i++){
		var f = commonfiles[i].files;//获得单个文件
		for(var j=0;j<hiddenfiles.length;j++){
			if(f[0].name==hiddenfiles[j].value){
				alert("不能上传重复的文件");
				return false;
			}
		}
		//alert(f[0].size);
		if(null!=f[0]&&f[0].size>maxsize){
			alert("存在大于4M的文件，请重新选择！");
			return false;
		}

	}
}

function isEmpty(str){
	if(str==null || str.length==0)
		return true;
	else 
		return false;
}


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
function deletefile(filename){
	//alert("test");
	var url = server_context+"/servlet/DeleteFileServlet?filename="+filename;
	loadXMLDoc(url, function() {
		
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			resultstring = xmlhttp.responseText;//json 字符串
			if(resultstring=="success"){
				alert("删除成功");
				location.reload();
			}else{
				alert("删除失败");
				location.reload();
			}
		}
	});
}
</script>
</body>
</html>
