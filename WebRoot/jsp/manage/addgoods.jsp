<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="bams.entity.Goods" %>
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
#main ul {width:630px;height:400px;list-style:none}
#main li.id {border:1px solid #000;border-top:1px solid #000;float:left;width:102px;height:33px;text-align:center;line-height:33px} 
#main li.description {border-bottom:1px solid #000;border-top:1px solid #000;float:left;width:204px;height:33px;text-align:center;line-height:33px} 
#main li.value {border-bottom:1px solid #000;border-top:1px solid #000;border-left:1px solid #000;float:left;width:202px;height:33px;text-align:center;line-height:33px}
#main li.button {border:1px solid #000;border-top:1px solid #000;float:left;width:102px;height:33px;text-align:center;line-height:33px} 
.changebutton{
margin-bottom:5px;
}
.onvalue{
width:50px;
height:10px;
}
#goodsname{
width:50px;
}
#goodsvalue{
width:50px;
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
					<li><a  class="br-blue" href="<%=basePath %>servlet/ListGoodsServlet?start=0">
					<i class="icon-user"></i>商品管理</a></li>
					<li><a style="color:blue" class="br-blue" ><i class="icon-user"></i>添加商品</a></li>
				</ul>
				
			</div>



		</div>
		<!-- Sidebar ends -->
		<!-- Mainbar starts -->
		<div class="mainbar">

			<div class="matter">
				<div class="container-fluid">

					<!-- Element -->
					<div class="box-body" style="background:#CCDDFF;color:black;height:560px">
<!-- 						<div class="flexslider"> -->

<div class="test">
   <form name="uploadForm" method="POST" enctype="MULTIPART/FORM-DATA" action="<%=basePath %>servlet/AddGoodsServlet" onsubmit="return checkForm()">
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
	<!-- Main js file -->
	<script type="text/javascript">
	var count = 1;
	var fileinput = document.getElementById("fileinput");
	fileinput.appendChild(document.createElement("br"));
	var firstinput = document.createElement("input");
	firstinput.type = "file";
	firstinput.name = "commonfile";
	
	firstinput.accept = ".jpg,.png,.jpeg,.gif,.tiff";
	firstinput.size = 50;
	fileinput.appendChild(document.createTextNode("上传图片"+count+"："));
	fileinput.appendChild(firstinput);
	var firsttext = document.createElement("input");
	firsttext.type = "text";
	firsttext.name= "description";
	firsttext.id = "goodsname";
	fileinput.appendChild(document.createTextNode("商品名称"+count+"："));
	fileinput.appendChild(firsttext);

	var secondtext = document.createElement("input");
	secondtext.type = "text";
	secondtext.name= "value";
	secondtext.id = "goodsvalue";
	fileinput.appendChild(document.createTextNode("商品价值"+count+"："));
	fileinput.appendChild(secondtext);
	
	function addNewFileInput(){
		count ++;
		if(count>=4){
			alert("每次最多添加3个商品");
		}else{
			var fileinput = document.getElementById("fileinput");
			fileinput.appendChild(document.createElement("br"));
			var newinput = document.createElement("input");
			newinput.type = "file";
			newinput.name = "commonfile";
			newinput.accept = ".jpg,.png,.jpeg,.gif,.tiff";
			newinput.size = 50;
			
			
			fileinput.appendChild(document.createTextNode("上传图片"+count+"："));
			fileinput.appendChild(newinput);
			
			var newtext = document.createElement("input");
			newtext.type = "text";
			newtext.name= "description";
			newtext.id = "goodsname";
			fileinput.appendChild(document.createTextNode("商品名称"+count+"："));
			fileinput.appendChild(newtext);
			
			var secondtext = document.createElement("input");
			secondtext.type = "text";
			secondtext.name= "value";
			secondtext.id = "goodsvalue";
			fileinput.appendChild(document.createTextNode("商品价值"+count+"："));
			fileinput.appendChild(secondtext);
		}
		
		
	}

function checkForm(){
	
	
	
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
	
	var descriptions = document.getElementsByName("description");
	var values = document.getElementsByName("value");
	//如果一行上面的图片已经添加，但是没有填写说明，则不能提交
	for(var i=0;i<descriptions.length;i++){
		var myvalue = descriptions[i].value;
		var filevalue = commonfiles[i].value;
		if(!isEmpty(filevalue.trim())){
			if(isEmpty(myvalue.trim())){
				alert("商品名称不能为空!");
				return false;
			}
		}
	}
	
	for(var i=0;i<values.length;i++){
		var myvalue = values[i].value;
		var filevalue = commonfiles[i].value;
		if(!isEmpty(filevalue.trim())){
			if(isEmpty(myvalue.trim())){
				alert("商品价值不能为空!");
				return false;
			}else if(isNaN(myvalue)){
				alert("商品价值必须为正整数!");
				return false;
			}else if((myvalue*1-(myvalue*1).toFixed(0))!=0){
				alert("商品价值必须为正整数!");
				return false;
			}else if(myvalue*1<0){
				alert("商品价值必须为正整数!");
				return false;
			}
		}
	}
	
	
	
	var maxsize = 4*1024*1024;//最大4M
	
	for(var i=0;i<commonfiles.length;i++){
		var f = commonfiles[i].files;//获得单个文件
		
		//alert(f[0].size);
		if(null!=f[0]&&f[0].size>maxsize){
			alert("存在大于4M的图片，请重新选择！");
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

