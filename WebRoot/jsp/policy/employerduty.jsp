<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="bams.entity.User" %>
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
	if(null==session_name){//if the user is not login or a manager.
		
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
<title>雇主责任险投保单</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="author" content="">



<!-- Stylesheets -->
<link rel="stylesheet" href="<%=basePath %>style/testbootstrap.css" >
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
								<li><a href="<%=basePath %>Logout">注销</a></li>
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
							class="icon-home"></i>雇主责任险投保单</a> <!-- Sub menu markup 
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
					<div class="box-body">
						

					<form name="baodan" action="<%=basePath %>AddEmployerDutyServlet" method="get">

		<table width="920" height="364" border="1">
  <caption>
    雇主责任险投保单<br />
投保单编号<label for="toubaodanbianhao"></label>
    <input type="text" name="toubaodanbianhao" id="toubaodanbianhao"><br />
  </caption>
  <tr>
    <td width="180" height="23">投保人名称</td>
    <td colspan="3"><label for="toubaoren_name"></label>
    <input type="text" name="toubaoren_name" id="toubaoren_name"></td>
    <td width="252">投保人地址</td>
    <td colspan="2"><label for="toubaoren_address"></label>
    <input type="text" name="toubaoren_address" id="toubaoren_address"></td>
  </tr>
  <tr>
    <td height="31">投保人联系人</td>
    <td colspan="3"><label for="toubaoren_contacts"></label>
    <input type="text" name="toubaoren_contacts" id="toubaoren_contacts"></td>
    <td>投保人联系电话</td>
    <td colspan="2"><label for="toubaoren_phone"></label>
    <input type="text" name="toubaoren_phone" id="toubaoren_phone"></td>
  </tr>
  <tr>
    <td height="23">被保险人名称</td>
    <td colspan="3"><label for="beibxren_name"></label>
    <input type="text" name="beibxren_name" id="beibxren_name"></td>
    <td>被保险人地址</td>
    <td colspan="2"><label for="beibxren_address"></label>
    <input type="text" name="beibxren_address" id="beibxren_address"></td>
  </tr>
  <tr>
    <td height="33">营业性质</td>
    <td colspan="3"><label for="yingyexingzhi"></label>
    <input type="text" name="yingyexingzhi" id="yingyexingzhi"></td>
    <td>被保险人组织机构代码证</td>
    <td colspan="2"><label for="zuzhijigou_code"></label>
    <input type="text" name="zuzhijigou_code" id="zuzhijigou_code"></td>
  </tr>
  <tr>
    <td height="36" colspan="3">是否参加社会(医疗、工伤）保险</td>
    <td colspan="4"><label for="isshehuibaoxian"></label>
    <input type="text" name="isshehuibaoxian" id="isshehuibaoxian"></td>
  </tr>
  <tr>
    <td colspan="2" rowspan="2">雇员工种</td>
    <td colspan="2" rowspan="2">估计雇员人数</td>
    <td height="37" colspan="3">赔偿限额</td>
  </tr>
  <tr>
    <td height="32" colspan="2">死亡、伤残</td>
    <td width="278">医疗</td>
  </tr>
  <tr>
    <td colspan="2"><label for="guyuangongzhong1"></label>
    <input type="text" name="guyuangongzhong1" id="guyuangongzhong1"></td>
    <td colspan="2"><label for="guyuanrenshu1"></label>
    <input type="text" name="guyuanrenshu1" id="guyuanrenshu1"></td>
    <td colspan="2"><label for="siwangshangcan1"></label>
    <input type="text" name="siwangshangcan1" id="siwangshangcan1"></td>
    <td><label for="yiliao1"></label>
    <input type="text" name="yiliao1" id="yiliao1"></td>
  </tr>
  <tr>
    <td colspan="2"><label for="guyuangongzhong2"></label>
    <input type="text" name="guyuangongzhong2" id="guyuangongzhong2"></td>
    <td colspan="2"><label for="guyuanrenshu2"></label>
    <input type="text" name="guyuanrenshu2" id="guyuanrenshu2"></td>
    <td colspan="2"><label for="siwangshangcan2"></label>
    <input type="text" name="siwangshangcan2" id="siwangshangcan2"></td>
    <td><label for="yiliao2"></label>
    <input type="text" name="yiliao2" id="yiliao2"></td>
  </tr>
  <tr>
    <td height="23" colspan="2"><label for="guyuangongzhong3"></label>
    <input type="text" name="guyuangongzhong3" id="guyuangongzhong3"></td>
    <td colspan="2"><label for="guyuanrenshu3"></label>
    <input type="text" name="guyuanrenshu3" id="guyuanrenshu3"></td>
    <td colspan="2"><label for="siwangshangcan3"></label>
    <input type="text" name="siwangshangcan3" id="siwangshangcan3"></td>
    <td><label for="yiliao3"></label>
    <input type="text" name="yiliao3" id="yiliao3"></td>
  </tr>
  <tr>
    <td height="23" colspan="2"><label for="guyuangongzhong4"></label>
    <input type="text" name="guyuangongzhong4" id="guyuangongzhong4"></td>
    <td colspan="2"><label for="guyuanrenshu4"></label>
    <input type="text" name="guyuanrenshu4" id="guyuanrenshu4"></td>
    <td colspan="2"><label for="siwangshangcan4"></label>
    <input type="text" name="siwangshangcan4" id="siwangshangcan4"></td>
    <td><label for="yiliao4"></label>
    <input type="text" name="yiliao4" id="yiliao4"></td>
  </tr>
  <tr>
    <td height="23" colspan="2"><label for="guyuangongzhong5"></label>
    <input type="text" name="guyuangongzhong5" id="guyuangongzhong5"></td>
    <td colspan="2"><label for="guyuanrenshu5"></label>
    <input type="text" name="guyuanrenshu5" id="guyuanrenshu5"></td>
    <td colspan="2"><label for="siwangshangcan5"></label>
    <input type="text" name="siwangshangcan5" id="siwangshangcan5"></td>
    <td><label for="yiliao5"></label>
    <input type="text" name="yiliao5" id="yiliao5"></td>
  </tr>
  <tr>
    <td height="23">保险费率</td>
    <td colspan="6"><label for="baoxianfeilv"></label>
    <input type="text" name="baoxianfeilv" id="baoxianfeilv"></td>
  </tr>
  <tr>
    <td height="23">保险费</td>
    <td colspan="6"><label for="baoxianfei"></label>
    <input type="text" name="baoxianfei" id="baoxianfei"></td>
  </tr>
  <tr>
    <td height="23">附加条款</td>
    <td colspan="6"><label for="fujiatiaokuan"></label>
    <input type="text" name="fujiatiaokuan" id="fujiatiaokuan"></td>
  </tr>
  <tr>
    <td height="23">保险期间</td>
    <td colspan="6"><input type="text" name="baoxianqi" id="baoxianqi" onClick="WdatePicker()">起止<input type="text" name="baoxianzhi" id="baoxianzhi" onClick="WdatePicker()"></td>
  </tr>
  <tr>
    <td height="23" colspan="7"><p >每次事故免赔额/率：每次事故每人绝对免赔100元或损失金额的10%，两者以高者为准。 </p></td>
  </tr>
  <tr>
    <td height="23">特别约定</td>
    <td colspan="6"><label for="tebieyueding"></label>
    <input type="text" name="tebieyueding" id="tebieyueding"></td>
  </tr>
  <tr>
    <td height="23">付款日期</td>
    <td colspan="6"><input type="text" name="fukuanriqi" id="fukuanriqi" onClick="WdatePicker()"></td>
  </tr>
  <tr>
    <td height="23">司法管辖</td>
    <td colspan="6"><label for="sifaguanxia"></label>
    <input type="text" name="sifaguanxia" id="sifaguanxia"></td>
  </tr>
  <tr>
    <td height="23">争议处理</td>
    <td colspan="6">若投保人/被保险人与保险人发生争执，不能达成协议，被保险人自愿采取的解决方式：<label>
        <input type="radio" name="zhengyichuli" value="susong" id="zhengyichuli_0">
        诉讼</label>

      <label>
        <input type="radio" name="zhengyichuli" value="zhogncai" id="zhengyichuli_1">
       仲裁
       仲裁机构：<input type="text" name="zhongcaijigou" id="zhongcaijigou">
       </label></td>
  </tr>
  <tr>
    <td height="23" colspan="7"><p >保险人（保险公司）提示 </p>
    <p >请您仔细阅读保险条款，尤其是黑体字标注部分的条款内容，并听取保险公司业务人员的说明，如对保险公司业务人员的说明不明白或有异议的，请在填写本投保单之前向保险公司业务人员进行询问，如未询问，视同已经对条款内容完全理解并无异议。</p></td>
  </tr>
  <tr>
    <td height="23" colspan="7"><p >投保人声明 </p>
      <p >投保人及被保险人兹声明所填上述内容（包括投保单及投保附件）属实。 </p>
      <p >本人已经收悉并仔细阅读保险条款，尤其是黑体字部分的条款内容，并对保险公司就保险条款内容的说明和提示完全理解，没有异议，申请投保。 </p>
    <p >&nbsp;</p>
    <p >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;投保人签章：<input type="text" name="toubaorenqz" id="toubaorenqz">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;　　　　&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;投保日期：<input type="text" name="toubaoriqi" id="toubaoriqi" onClick="WdatePicker()"></p></td>
  </tr>
</table>
	</form>

						
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
</body>
</html>

