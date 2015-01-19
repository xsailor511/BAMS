<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title></title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <div class="foot">
			<div class="container-fluid">
				<div class="row-fluid">

					<div class="span4">
						<div class="fwidget">
							<h6>友情链接</h6>
							<ul>
								<li><a href="http://www.circ.gov.cn/web/site0/">中国保险监督管理委员会</a></li>
								<li><a href="http://www.iachina.cn/">中国保险行业协会</a></li>
								<li><a href="http://www.china-insurance.com/site/index.shtml">中国保险网</a></li>
								<li><a href="www.12306.cn">中国铁路客户服务中心</a></li>
								<li><a href="http://www.cbrc.gov.cn/index.html">中国银行业监督管理委员会</a></li>
							</ul>
						</div>
					</div>

				</div>

				<div class="row-fluid">
					<div class="span12">
						
						<div class="copy">
							Copyright 2015 &copy; - <a href="#" style="color:#17324d;">http://www.ybt.com</a> - Collect from
							<a href="http://www.ybt.com" title="易宝通" target="_blank" style="color:#17324d;">易宝通</a>
						</div>
					</div>
				</div>

			</div>
		</div>
  </body>
</html>
