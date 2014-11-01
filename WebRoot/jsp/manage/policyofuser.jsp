<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="bams.entity.PolicyIndex" %>
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

String keyname = request.getParameter("username");
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
table{
border-collapse:collapse;
border:1px;
}
table td{
border:solid#000 1px;
}
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
					<li><a style="color:blue" class="br-blue"><i
							class="icon-user"></i><%=keyname %>的所有保单</a></li>
					
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
<!-- 						</div> -->
<table width="100%" border="1">
  <tr>
    <th align="center" scope="col">编号</th>
    <th align="center" scope="col"><input type="checkbox" name="checkall" id="checkall" /></th>
    <th align="center" scope="col">保单</th>
    <th align="center" scope="col">下载</th>
  </tr>
  
  <%
  List<PolicyIndex> list = (List)request.getAttribute("indexlist");
  if(null==list){
	  this.getServletContext()
	  	.getRequestDispatcher("/error.jsp")
	  	.forward(request,response);
  }
  int start = 0 ;
	String str_start = request.getParameter("start");
	if(null!=str_start)
		start = Integer.parseInt(str_start);
	int pageSize = 20;
	int pageCount = start/pageSize+1;
  Iterator<PolicyIndex> it = list.iterator();
  int rowCount = 0 ;
  while(it.hasNext()){
	  rowCount++;
	  PolicyIndex policyindex = it.next();
		String policyname = policyindex.getPolicyname();
		String tablename = policyindex.getTablename();
		String tag = policyindex.getTag();
		int id = policyindex.getId();
		String username = policyindex.getUsername();
  %>
  
  <tr>
    <td align="center"><%=id %></td>
    <td align="center"><input type="checkbox" name="mycheck" id="baodan_check" />
    <input type="hidden" name="tag" value="<%=tag %>" />
    <input type="hidden" name="username" value="<%=username %>" />
    </td>
   <td align="left"> &nbsp;<%=policyname %></td>
    <td align="center"><a href="<%=basePath%>servlet/DownPolicyAsMSWord?tag=<%=tag %>"><font color='blue'>下载</font></a></td>
  </tr>
  
  
  <%
  }
  %>
</table>

<p align="center">
<a href = "<%=basePath%>servlet/ListPolicyIndexByUser?start=0&name=<%=keyname %>" ><font color="blue"><B>首页</B></font></a>
<%
if(start==0){
%>
上一页

<%
}else{
%>
<a href = "<%=basePath%>servlet/ListPolicyIndexByUser?start=<%=start-pageSize%>&name=<%=keyname %>" ><font color="blue">上一页</font></a>
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
<a href = "<%=basePath%>servlet/ListPolicyIndexByUser?start=<%=start+pageSize%>&name=<%=keyname %>" ><font color="blue">下一页</font></a>
<%
}
%>
第<%=pageCount%>页</p>

<p align="center">
<a href="javascript:void(0)" onclick="downPolicies()"><font color="blue">批量下载</font></a>
</p>
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

	function downPolicies(){
		//至少选择一个保单
		 var checkboxes = document.getElementsByName("mycheck");
		 var mark = false;
		 for(var i=0;i<checkboxes.length;i++){
			 if(checkboxes[i].checked)
				 mark = true;
		 }
		 if(!mark){
			 alert("请至少选择一个保单");
			 return false;
		 }
		 var tags = document.getElementsByName("tag");
		 //var usernames = document.getElementsByName("username");
		 var paramtags = "";
		 //var paramnames = "";
		 for(var i=0;i<checkboxes.length;i++){
			 if(checkboxes[i].checked){
				 if(paramtags.length==0)//;tset;wo;san;将会被劈成4个值，而第一个为空，所以不能吧分号放在首位
					 paramtags = paramtags+tags[i].value;
				 else
				 	paramtags = paramtags+";"+tags[i].value;
				 //paramnames = paramnames+";"+usernames[i];
			 }
		 }
		// alert(paramtags);
		 var url = server_context+"/servlet/DownPoliciesAsZip?tags="+paramtags;
		 
		 window.location.href = url;
	}
	
	
	
	
	$(function() {
	    $("#checkall").click(function() {
	        if ($(this).attr("checked")) {
	            $("input[name=mycheck]").each(function() {
	                $(this).attr("checked", true);
	            });
	        } else {
	            $("input[name=mycheck]").each(function() {
	                $(this).attr("checked", false);
	            });
	        }
	    });
	    //得到选中的值，ajax操作使用
	    $("#submit").click(function() {
	        var text="";
	        $("input[name=items]").each(function() {
	            if ($(this).attr("checked")) {
	                text += ","+$(this).val();
	            }
	        });
	         alert(text);
	    });
	});
	</script>
</body>
</html>

