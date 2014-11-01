<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

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
<title>保单上传</title>
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

<!-- Favicon -->
<link rel="shortcut icon" href="<%=basePath %>img/favicon/favicon.png">

<style type="text/css">
.fileupload{
height:400px;
margin-left: auto;
margin-right: auto;
}
.fileinput{
width:608px;

margin-left: auto;
margin-right: auto;
}

</style>
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
					<li><a href="<%=basePath %>servlet/ListAllCaseDealServlet?start=0" class="open br-red"><i
							class="icon-home"></i>保单管理</a>
					<li><a style="color:blue" class="br-blue" >
					<i class="icon-user"></i>保单上传</a></li>
					<!-- Sub menu markup 
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
						
<div class="fileupload">
   <form name="uploadForm" method="POST" enctype="MULTIPART/FORM-DATA" action="<%=basePath %>servlet/AddCaseDealServlet" onsubmit="return checkForm(this)">
        <div id="baodan">
        <p>保险单号：<input type="text" id="policynum" name="policynum" onblur="checkBaoxiandanhao()"/><div id="bao_message"></div></p>
        <p>保单名称：<input type="text" id="policyname" name="policyname" /></p>
        <p>用&nbsp;&nbsp;户&nbsp;名：<input type="text" id="username" name="username" onblur="checkName()"/><div id="name_message"></div></p>
        </div>
        <div id="fileinput">
        
        </div>
        <input type="button" onclick="addNewFileInput()" value="添加"/>
        <input type="submit" name="submit"  value="提交">
        <input type="reset" name="reset" value="重置">
      </form>
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
var count = 1;
var fileinput = document.getElementById("fileinput");
fileinput.appendChild(document.createElement("br"));
var firstinput = document.createElement("input");
firstinput.type = "file";
firstinput.name = "commonfile";
firstinput.accept = ".jpg,.png,.jpeg,.gif,.tiff";
firstinput.size = 50;
fileinput.appendChild(document.createTextNode("上传图片"+count+":"));
fileinput.appendChild(firstinput);
var firsttext = document.createElement("input");
firsttext.type = "text";
firsttext.name= "description";
fileinput.appendChild(document.createTextNode("图片说明"+count+":"));
fileinput.appendChild(firsttext);

function addNewFileInput(){
	count ++;
	if(count>=4){
		alert("每次最多添加3个图片");
	}else{
		var fileinput = document.getElementById("fileinput");
		fileinput.appendChild(document.createElement("br"));
		var newinput = document.createElement("input");
		newinput.type = "file";
		newinput.name = "commonfile";
		newinput.accept = ".jpg,.png,.jpeg,.gif,.tiff";
		newinput.size = 50;
		
		
		fileinput.appendChild(document.createTextNode("上传图片"+count+":"));
		fileinput.appendChild(newinput);
		
		var newtext = document.createElement("input");
		newtext.type = "text";
		newtext.name= "description";
		fileinput.appendChild(document.createTextNode("图片说明"+count+":"));
		fileinput.appendChild(newtext);
	}
	
	
}


	
function checkForm(form){
		
	var commonfiles = document.getElementsByName("commonfile");
	var maxsize = 10*1024*1024;//最大10M
		
	for(var i=0;i<commonfiles.length;i++){
		var f = commonfiles[i].files;//获得单个文件
		//alert(f[0].size);
		if(null!=f[0]&&f[0].size>maxsize){
			alert("存在大于4M的图片，请重新选择！");
			return false;
				
		}
	}
	var temp = 0;
	for(var u=0;u<commonfiles.length;u++){
		filevalue = commonfiles[u].value;
		if(isEmpty(filevalue)){
			temp++;
		}
	}
	//没有选择任何图片，返回错误
	if(temp==commonfiles.length){
		alert("请选择文件");
		return false;
	}
	var filemark = false;
	for(var i=0;i<commonfiles.length;i++){
		var f = commonfiles[i].files;//获得单个文件
		var filename = f[0].name;
		var index = filename.lastIndexOf(".");
		var suffix = filename.substr(index);
		if(suffix==".jpg"||suffix==".jpeg"||suffix==".png"||suffix==".tiff"||suffix==".gif"){
			filemark = true;
		}
	}
	if(!filemark){
		alert("请选择合适的图片，支持的格式包括jpg,jpeg,png,tiff.gif");
		return false;
	}
	
	var descriptions = document.getElementsByName("description");
	//如果一行上面的图片已经添加，但是没有填写说明，则不能提交
	for(var i=0;i<descriptions.length;i++){
		myvalue = descriptions[i].value;
		filevalue = commonfiles[i].value;
		if(!isEmpty(filevalue.trim())){
			if(isEmpty(myvalue.trim())){
				alert("文字说明不能为空!");
				return false;
			}
		}
	}
	
	var policynum = document.getElementById("policynum").value;
	if(isEmpty(policynum)){
		alert("保险单号不能为空!");
		return false;
	}
	var policyname = document.getElementById("policyname").value;
	if(isEmpty(policyname)){
		alert("保险名称不能为空!");
		return false;
	}
	var username = document.getElementById("username").value;
	if(isEmpty(username)){
		alert("用户名不能为空!");
		return false;
	}
	//alert(checkName());
	if(!checkName()){
		alert("用户名非法");
		return false;
	}
	if(!checkBaoxiandanhao()){
		alert("保单号已经存在");
		return false;
	}
	
}
	function isEmpty(str){
		if(str==null || str.length==0)
			return true;
		else 
			return false;
	}
	function checkName(){
		var name=document.getElementById("username").value;
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
					name_message.innerHTML = "<font color='blue' >用户名合法</font>";
					result = true;
				}else if(resultstring=="none"){
					name_message.innerHTML = "<font color='red' >该用户不存在</font>";
					result = false;
				}else{
					alert("检查失败");
					result = false;
				}
				//
				
				
			}
		});
		return result;
	}
	
	function checkBaoxiandanhao(){
		var bao_message = document.getElementById("bao_message");
		var policynum = document.getElementById("policynum").value;
		var url = server_context+'/servlet/CheckBaoServlet?policynum='+policynum;
		if(isEmpty(policynum)){
			bao_message.innerHTML = "<font color='blue' >请填写保单号</font>";
			return false;
		}
		var result = false;
		loadXMLDoc(url, function() {
			//alert("readState:"+xmlhttp.readyState+" status:"+xmlhttp.status);
			
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				resultstring = xmlhttp.responseText;//json 字符串
				//alert(resultstring);
				if(resultstring=="exsit"){
					bao_message.innerHTML = "<font color='red' >该保单号已经存在</font>";
					result = false;
				}else if(resultstring=="none"){
					bao_message.innerHTML = "<font color='blue' >该保单号可以使用</font>";
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

