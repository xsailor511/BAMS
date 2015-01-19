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
					<li><a  class="br-blue" href="<%=basePath %>servlet/ListAllFileServlet?start=0" ><i
							class="icon-user"></i> 文件管理</a></li>
					<li><a style="color:blue" class="br-blue"><i
							class="icon-user"></i>文件上传</a></li>
					
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
<!-- 						<div class="flexslider"> -->
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

</script>
</body>
</html>

