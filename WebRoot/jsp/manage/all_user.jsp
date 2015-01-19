<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="bams.entity.User" %>
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
					<li ><a href="<%=basePath %>jsp/manage/search_user.jsp" class="open br-red"><i class="icon-home"></i>查找用户 </a></li>
					<li><a style="color:blue" class="open br-red"><i class="icon-home"></i> 所有用户</a></li>
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
<!-- 						</div> --><table width="100%" border="0" id="mytable">
  <tr>
    <th align="center" valign="middle" scope="col">编号</th>
    <th align="center" valign="middle" scope="col"><input type="checkbox" name="checkall" id="checkall" /></th>
    <th align="center" valign="middle" scope="col">用户名</th>
    <th align="center" valign="middle" scope="col">积分:</th>
    <th align="center" valign="bottom" scope="col"></th>
    <th align="center" valign="middle" scope="col">修改积分</th>
    <th align="center" valign="middle" scope="col"><font style="color:red">删除</font></th>
    <th align="center" valign="middle" scope="col"><font style="color:blue">查看</font></th>
  </tr>
  <%
  List<User> list = (List)request.getAttribute("userlist");
  if(null==list){
	  this.getServletContext()
	  	.getRequestDispatcher("/error.jsp")
	  	.forward(request,response);
  }
  int start = 0 ;
	String str_start = request.getParameter("start");
	if(null!=str_start)
		start = Integer.parseInt(str_start);
	int pageSize = 10;
	int pageCount = start/pageSize+1;
  Iterator<User> it = list.iterator();
  int rowCount = 0 ;
  while(it.hasNext()){
	  rowCount++;
	  User user = it.next();
		String name = user.getName();
		int goal = user.getGoal();
		int id = user.getId();
  %>
  <tr>
    <td height="25" align="center"><%=rowCount %></td>
    <td align="center"><input type="checkbox" name="mycheck" id="mycheck" />
    <label for="mycheck"></label></td>
    <td align="center"><%=name %></td>
    <td colspan="2" align="center" valign="middle">
    <input name="xsailor_goal" type="text" id="xsailor_goal<%=rowCount %>" value="<%=goal %>" style="width:50px;height:15px;margin-top:7px" value="22"/>&nbsp;&nbsp;</td>
    <td align="center"><input type="button" name="goal_set_button" id="goal_set_button" value="修改积分" onclick="updategoal('<%=rowCount %>','<%=name %>','<%=goal%>')"/></td>
    <td align="center"><div id='<%=id%>'></div><a href="javascript:void(0)" onclick="deleteuser('<%=name %>','<%=rowCount %>')">
    <font style="color:red">删除</font></a>
    <input type= "hidden" name= "username" value= "<%=name%>">
    </td>
    <td align="center"><a href="<%=basePath%>servlet/GetUserServlet?name=<%=name %>" target="_blank">
    <font style="color:blue">查看</font></a></td>
  </tr>
  <%
  
  }
  %>
</table>
<p align="center">
<a href = "<%=basePath%>servlet/ListAllUserServlet?start=0" ><font color="blue"><B>首页</B></font></a>
<%
if(start==0){
%>
上一页

<%
}else{
%>
<a href = "<%=basePath%>servlet/ListAllUserServlet?start=<%=start-pageSize%>" ><font color="blue">上一页</font></a>
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
<a href = "<%=basePath%>servlet/ListAllUserServlet?start=<%=start+pageSize%>" ><font color="blue">下一页</font></a>
<%
}
%>
第<%=pageCount%>页</p>

<p align="center">
<a href="javascript:void(0)" onclick="deleteManyUsers()"><font color="red">批量删除</font></a>
</p>
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
	
	function deleteuser(name,rowCount){
		//alert("test");
		var url = server_context+"/servlet/Delete?name="+name;
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
	
	function deleteManyUsers(){
		//至少选择一个用户
		 var checkboxes = document.getElementsByName("mycheck");
		 var mark = false;
		 for(var i=0;i<checkboxes.length;i++){
			 if(checkboxes[i].checked)
				 mark = true;
		 }
		 if(!mark){
			 alert("请至少选择一个用户");
			 return false;
		 }
		 var    bln    =    window.confirm("批量删除将会删除所有被选中的用户，不可修复！");
		 if(bln){
				var usernames = document.getElementsByName("username");
				var param = "";
				for(var i=0;i<checkboxes.length;i++){
					if(checkboxes[i].checked)
						param=param+usernames[i].value+";";
				}
				var url = server_context+"/servlet/DeleteManyUserServlet?usernames="+param;
				loadXMLDoc(url, function() {
					
					if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
						resultstring = xmlhttp.responseText;//json 字符串
						if(resultstring=="success"){
							alert("删除成功");
							location.reload();
							
						}else if(resultstring=="failed"){
							alert("全部删除失败");
						}else{
							alert("发生未知错误");
						}
					}
				});
		 }
		
		
	}
	
	function setglobal(){
		var global_goal = document.getElementById("global_goal").value;
		var checkboxes = document.getElementsByName("mycheck");
		var xsailor_goals= document.getElementsByName("xsailor_goal");
		for(var i=0;i<checkboxes.length;i++){
			if(checkboxes[i].checked)
				xsailor_goals.value = global_goal;
		}
	}
	
	function updategoal(id,name,oldgoal){
		var goal = document.getElementById('xsailor_goal'+id).value;
		if(goal==oldgoal){
			return ;
		}
		if(isNaN(goal)){
			alert("积分必须是整数");
			document.getElementById('xsailor_goal'+id).value = oldgoal;
			return false;
		}
		if(goal*1<0){
			alert("积分必须大于0");
			document.getElementById('xsailor_goal'+id).value = oldgoal;
			return false;
		}
		
		goal = (goal*1).toFixed(0);
		var url = server_context+"/servlet/UpdateUserGoalServlet?goal="+goal+"&name="+name;
		loadXMLDoc(url, function() {
			
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				resultstring = xmlhttp.responseText;//json 字符串
				if(resultstring=="success"){
					alert("更新成功");
					document.getElementById('xsailor_goal'+id).value = goal;
				}else{
					alert("更新失败");
					
				}
			}
		});
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

