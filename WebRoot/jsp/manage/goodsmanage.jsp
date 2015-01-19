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
					
					<li><a style="color:blue" class="br-blue" ><i class="icon-user"></i>商品管理</a></li>
					<li><a  class="br-blue" href="<%=basePath %>jsp/manage/addgoods.jsp" >
					<i class="icon-user"></i>添加商品</a></li>
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
<div id="main">
<ul>
<li class="id" >编号</li>
<li class="description">名称</li>

<li class="value">价值</li>
<li class="button"><font color="red">删除</font></li>


<%
List<Goods> list = (List)request.getAttribute("goodslist");
if(null==list){
	  this.getServletContext()
	  	.getRequestDispatcher("/error.jsp")
	  	.forward(request,response);
}

int start = 0 ;
String str_start = request.getParameter("start");
if(null!=str_start)
	start = Integer.parseInt(str_start);
int pageSize = 9;
int pageCount = start/pageSize+1;
for(int i=0;i<list.size();i++){
	String description = list.get(i).getDescription();
	int id = list.get(i).getId();
	int value = list.get(i).getValue();
//String fileurl = list.get(i).getFileurl();

%>
<li class="id" ><%=id %></li>
<li class="description"><%=description %></li> 

<li class="value"><input type="text" id="myvalue<%=id %>" value="<%=value %>" class="onvalue" style="width:50px;height:15px;margin-top:5px" />
&nbsp;|&nbsp;<input type="button"  class="changebutton" value="修改" onclick="changeValue('<%=id %>','<%=value %>')"></li>
<li class="button">
<a href="javascript:void(0)" onclick="deleteGoods('<%=id %>')"><font color="red">删除</font></a></li>
<%

}

%>
</ul>
<br/>

</div>

<p align="center">
<a href = "<%=basePath%>servlet/ListGoodsServlet?start=0" ><font color="blue"><B>首页</B></font></a>
<%
if(start==0){
%>
上一页

<%
}else{
%>
<a href = "<%=basePath%>servlet/ListGoodsServlet?start=<%=start-pageSize%>" ><font color="blue">上一页</font></a>
<%
}
%>

<%
if(list.size()<pageSize){
%>
下一页
<%
}else{
%>
<a href = "<%=basePath%>servlet/ListGoodsServlet?start=<%=start+pageSize%>" ><font color="blue">下一页</font></a>
<%
}
%>
第<%=pageCount%>页</p>



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
	<script src="<%=basePath %>js/xmlhttp.js"></script>
	<!-- Main js file -->
	<script type="text/javascript">
function isEmpty(str){
	if(str==null || str.length==0)
		return true;
	else 
		return false;
}

function changeValue(id,oldvalue){
	var value = document.getElementById("myvalue"+id).value;
	if(value==oldvalue){
		return ;
	}
	
	if(isEmpty(value)){
		alert("积分不能为空");
		document.getElementById("myvalue"+id).value = oldvalue;
		return false;
	}
	if(isNaN(value)){
		alert("积分必须为数字");
		document.getElementById("myvalue"+id).value = oldvalue;
		return false;
	}
	value = (value*1).toFixed(0);//去除小数
	var url = server_context+"/servlet/UpdateGoodsServlet?id="+id+"&value="+value;
	loadXMLDoc(url, function() {
		
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			resultstring = xmlhttp.responseText;//json 字符串
			if(resultstring=="success"){
				alert("更新成功");
				document.getElementById("myvalue"+id).value = value;
			}else{
				alert("更新失败");
				
			}
		}
	});
}
function deleteGoods(id){
	//alert("test");
	var url = server_context+"/servlet/DeleteGoodsServlet?id="+id;
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

