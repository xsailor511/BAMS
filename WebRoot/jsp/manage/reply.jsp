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
<title>回答问题</title>
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
table{
border-collapse:collapse;
border:1px;
}
table td{
border:solid#000 1px;
}

</style>
</head>
<body>
	<!-- Navbar starts -->
	<jsp:useBean id="question" class="bams.entity.Question" scope="request"/>
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
							class="icon-home"></i>回答问题</a> </li>


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
    <td width="20%" align="left">标题：</td>
    <td width="80%" align="left"><jsp:getProperty name="question" property="title" />
  </tr>
  <tr>
        <td width="20%" align="left">提问者：</td>
    <td width="80%" align="left"><jsp:getProperty name="question" property="username" />
  </tr>
  <tr>
        <td width="20%" align="left">单位：</td>
    <td width="80%" align="left"><jsp:getProperty name="question" property="company" />
  </tr>
  <tr>
        <td width="20%" align="left">传真：</td>
    <td width="80%" align="left"><jsp:getProperty name="question" property="fax" />
  </tr>
  <tr>
        <td width="20%" align="left">邮箱：</td>
    <td width="80%" align="left"><jsp:getProperty name="question" property="email" />
  </tr>
   <tr>
        <td width="20%" align="left">联系人：</td>
    <td width="80%" align="left"><jsp:getProperty name="question" property="people" />
  </tr>
   <tr>
        <td width="20%" align="left">电话：</td>
    <td width="80%" align="left"><jsp:getProperty name="question" property="tel" />
  </tr>
  <tr>
    <td align="left" colspan="2">问题内容：</td>
  </tr>
<tr>
    <td align="left" colspan="2" height="200px" valign="top" ><jsp:getProperty name="question" property="content" /></td>
  </tr>
</table>
<div class="fileupload">
   <form name="uploadForm" action="<%=basePath %>servlet/AddAnswerServlet" onsubmit="return checkForm(this)">
        
        <div id="pp">
        <p>回复<jsp:getProperty name="question" property="username" />：</p>
        
        <p><textarea cols="10" rows="5"  id="reply" name="reply" style="width:590px"></textarea>
        <input type="hidden" name="question_id" value="<jsp:getProperty name="question" property="id" />" />
        <input type="hidden" name="username" value="<jsp:getProperty name="question" property="username" />" />
        </p>
        </div>
        
        <input type="submit" name="submit"  value="提交">
        <input type="reset" name="reset" value="重置">
      </form>
      </div>
					

						
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
	<script type="text/javascript">
function checkForm(form){
	
	var reply = document.getElementById("reply").value;
	if(isEmpty(reply)){
		alert("回复不能为空!");
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

</script>
	
	<!-- Main js file -->
</body>
</html>

