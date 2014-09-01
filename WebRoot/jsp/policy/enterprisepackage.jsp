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
<title>中小企业一揽子保险委托书</title>
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
					<li><a href="<%=basePath %>index.html" class="open br-red"><i
							class="icon-home"></i>中小企业一揽子保险委托书</a> <!-- Sub menu markup 
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
						

					<form name="baodan" action="html_form_action.asp" method="get">

<table width="920" border="1" align="center">
  <tr>
    <td colspan="7" align="center"><strong><h1>中小企业一揽子保险委托书</h1></strong></td>
  </tr>
  <tr>
    <td colspan="7" align="center"><h2>委托人信息</h2></td>
  </tr>
  <tr>
    <td>委托人：
      <label for="weituoren_name"></label>
    <input type="text" name="weituoren_name" id="weituoren_name"></td>
    <td colspan="4">电话： 
      <label for="weituoren_phone"></label>
    <input type="text" name="weituoren_phone" id="weituoren_phone"></td>
    <td colspan="2">联系人：
      <label for="weituoren_connection"></label>
    <input type="text" name="weituoren_connection" id="weituoren_connection"></td>
  </tr>
  <tr>
    <td colspan="7" align="center"><h2 align="center">委托险种</h2></td>
  </tr>
  <tr>
    <td colspan="7"><p align="left">一 必选险种</p></td>
  </tr>
  <tr>
    <td width="388" colspan="2">1. 机动车辆保险（交强、三者、车损、不计免赔）</td>
    <td width="170">2.财产一切保险</td>
    <td colspan="3">3.机器损坏保险</td>
    <td width="178">4. 公众责任保险</td>
  </tr>
  <tr>
    <td colspan="7" align="center"><h4><strong><label>保险到期日为:&nbsp;</label><input class="Wdate" type="text" onClick="WdatePicker()" name="baoxiandaoqiri"></strong></h4></td>
  </tr>
  <tr>
    <td height="26" colspan="7">二 可选险种</td>
  </tr>
  <tr>
    <td height="52" colspan="7"><p>
      <label>
        <input type="checkbox" name="kexuanxianzhong" value="guzhuzeren" id="kexuanxianzhong_0">
        雇主责任保险</label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <label>
        <input type="checkbox" name="kexuanxianzhong" value="wuranzeren" id="kexuanxianzhong_1">
        污染责任保险</label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <label>
        <input type="checkbox" name="kexuanxianzhong" value="huowuyunshu" id="kexuanxianzhong_2">
        货物运输保险</label>
&nbsp;&nbsp;
      <label>
        <input type="checkbox" name="kexuanxianzhong" value="shigongjiju" id="kexuanxianzhong_3">
        施工机具保险</label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <label>
        <input type="checkbox" name="kexuanxianzhong" value="jianzhugongcheng" id="kexuanxianzhong_4">
        建筑（安装）工程一切保险</label>
<br>
      <label>
        <input type="checkbox" name="kexuanxianzhong" value="lirunsunshi" id="kexuanxianzhong_5">
        利润损失保险</label>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <label>
        <input type="checkbox" name="kexuanxianzhong" value="guyuanzhongcheng" id="kexuanxianzhong_6">
        雇员忠诚保险</label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <label>
        <input type="checkbox" name="kexuanxianzhong" value="chanpinzeren" id="kexuanxianzhong_7">
        产品责任保险</label>
&nbsp;&nbsp;
      <label>
        <input type="checkbox" name="kexuanxianzhong" value="buchonggongshang" id="kexuanxianzhong_8">
        补充工伤保险</label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <label>
        <input type="checkbox" name="kexuanxianzhong" value="gaoguandongshi" id="kexuanxianzhong_9">
        高管、董事责任保险（上市）</label>
      <br>
      <label>
        <input type="checkbox" name="kexuanxianzhong" value="yiwaishanghai" id="kexuanxianzhong_10">
        意外伤害保险</label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <label>
        <input type="checkbox" name="kexuanxianzhong" value="buchongyiliao" id="kexuanxianzhong_11">
        补充医疗保险</label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <label>
        <input type="checkbox" name="kexuanxianzhong" value="qiyenianjin" id="kexuanxianzhong_12">
        企业年金保险</label>
&nbsp;&nbsp;
      <label>
        <input type="checkbox" name="kexuanxianzhong" value="buchongyanglao" id="kexuanxianzhong_13">
        补充养老保险</label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <label>
        <input type="checkbox" name="kexuanxianzhong" value="chanpinzhiliang" id="kexuanxianzhong_14">
        产品质量保证保险</label>
      <br>
      <label>
        <input type="checkbox" name="kexuanxianzhong" value="daxingshebei" id="kexuanxianzhong_15">
        大型设备运输险</label>
      &nbsp;&nbsp;
      <label>
        <input type="checkbox" name="kexuanxianzhong" value="anquanshengchan" id="kexuanxianzhong_16">
        安全生产责任险</label>
&nbsp;&nbsp;
      <label>
        <input type="checkbox" name="kexuanxianzhong" value="youwuzeren" id="kexuanxianzhong_17">
        油污责任保险</label>
&nbsp;&nbsp;
      <label>
        <input type="checkbox" name="kexuanxianzhong" value="nongzuowu" id="kexuanxianzhong_18">
        农作物种植保险</label>
&nbsp;&nbsp;
      <label>
        <input type="checkbox" name="kexuanxianzhong" value="teshu" id="kexuanxianzhong_19">
        特殊保险</label>
      <br>
    </p></td>
  </tr>
  <tr>
    <td height="25" colspan="7" align="center"><h2>保险公司选择</h2></td>
  </tr>
  <tr>
    <td height="25" colspan="2" align="center">直接选择</td>
    <td height="25" colspan="5" align="center">委托选择</td>
  </tr>
  <tr>
    <td height="26" colspan="2"><p>
      <label>
        <input type="radio" name="baoxiangongsi" value="renbao" id="baoxiangongsi_0">
        人保</label>

      <label>
        <input type="radio" name="baoxiangongsi" value="pingan" id="baoxiangongsi_1">
        平安</label>

      <label>
        <input type="radio" name="baoxiangongsi" value="taibao" id="baoxiangongsi_2">
        太保</label>

      <label>
        <input type="radio" name="baoxiangongsi" value="dadi" id="baoxiangongsi_3">
        大地</label>

      <label>
        <input type="radio" name="baoxiangongsi" value="yangguang" id="baoxiangongsi_4">
        阳光</label>

      <label>
        <input type="radio" name="baoxiangongsi" value="taiping" id="baoxiangongsi_5">
        太平</label>
      <br>
      <label>
        <input type="radio" name="baoxiangongsi" value="ancheng" id="baoxiangongsi_6">
        安诚</label>

      <label>
        <input type="radio" name="baoxiangongsi" value="yongcheng" id="baoxiangongsi_7">
        永诚</label>

      <label>
        <input type="radio" name="baoxiangongsi" value="dubang" id="baoxiangongsi_8">
        都邦</label>

      <label>
        <input type="radio" name="baoxiangongsi" value="sanxing" id="baoxiangongsi_9">
        三星</label>

      <label>
        <input type="radio" name="baoxiangongsi" value="tianan" id="baoxiangongsi_10">
        天安</label>

      <label>
        <input type="radio" name="baoxiangongsi" value="yongan" id="baoxiangongsi_11">
        永安</label>
      <br>
      <label>
        <input type="radio" name="baoxiangongsi" value="changan" id="baoxiangongsi_12">
        长安</label>

      <label>
        <input type="radio" name="baoxiangongsi" value="huatai" id="baoxiangongsi_13">
        华泰</label>

      <label>
        <input type="radio" name="baoxiangongsi" value="anhua" id="baoxiangongsi_14">
        安华</label>
 
      <label>
        <input type="radio" name="baoxiangongsi" value="dazhong" id="baoxiangongsi_15">
        大众</label>
  
      <label>
        <input type="radio" name="baoxiangongsi" value="changcheng" id="baoxiangongsi_16">
        长城</label>
   
      <label>
        <input type="radio" name="baoxiangongsi" value="hainiu" id="baoxiangongsi_17">
        海纽</label>
      <br>
      <label>
        <input type="radio" name="baoxiangongsi" value="renshou" id="baoxiangongsi_18">
        人寿</label>
  
      <label>
        <input type="radio" name="baoxiangongsi" value="taikang" id="baoxiangongsi_19">
        泰康</label>
     
      <label>
        <input type="radio" name="baoxiangongsi" value="xinhua" id="baoxiangongsi_20">
        新华</label>
     
      <label>
        <input type="radio" name="baoxiangongsi" value="zhongying" id="baoxiangongsi_21">
        中英</label>
     
      <label>
        <input type="radio" name="baoxiangongsi" value="hezhong" id="baoxiangongsi_22">
        合众</label>
     
      <label>
        <input type="radio" name="baoxiangongsi" value="xincheng" id="baoxiangongsi_23">
        信诚</label>
      <br>
    </p></td>
    <td height="26" colspan="5" align="center"><input type="radio" name="baoxiangongsi" id="baoxiangongsi_24" value="tongyi">
    <label for="tongyi">同意</label></td>
  </tr>
  <tr>
    <td height="53" colspan="7" align="center"><h2 align="center">打折约定</h2>
    <p align="center">&nbsp;</p></td>
  </tr>
  <tr>
    <td height="25" colspan="7"><p align="left"><strong>江泰保险经纪股份有限公司</strong>是中国保险监督管理委员会批准的全国性保险经纪公司，从2002年10月12日起成为中国工商银行股份有限公司的保险经纪人。<strong> </strong></p></td>
  </tr>
  <tr>
    <td height="26" colspan="7" align="center"><h2>授权委托书</h2></td>
  </tr>
  <tr>
    <td height="25" colspan="2" align="right"><p>委托人：</p></td>
    <td height="25" colspan="5" align="left"><label for="weituoren"></label>
    <input type="text" name="weituoren" id="weituoren"></td>
  </tr>
  <tr>
    <td height="26" colspan="2" align="right"><p>注册地址：</p></td>
    <td height="26" colspan="5" align="left"><label for="zhucedizhi"></label>
    <input type="text" name="zhucedizhi" id="zhucedizhi"></td>
  </tr>
  <tr>
    <td height="32" colspan="2" align="right"><p>法定代表人：</p></td>
    <td height="32" colspan="5" align="left"><label for="fadingdaibiao"></label>
    <input type="text" name="fadingdaibiao" id="fadingdaibiao"></td>
  </tr>
  <tr>
    <td height="26" colspan="2" align="right">受托人：</td>
    <td height="26" colspan="5" align="left">江泰保险经纪股份有限公司</td>
  </tr>
  <tr>
    <td height="33" colspan="2" align="right"><p>注册地址：</p></td>
    <td height="33" colspan="5" align="left"><label for="zhucedizhi2"></label>
    <input type="text" name="zhucedizhi2" id="zhucedizhi2"></td>
  </tr>
  <tr>
    <td height="32" colspan="2" align="right"><p>法定代表人：</p></td>
    <td height="32" colspan="5" align="left"><label for="fadingdaibiao2"></label>
    <input type="text" name="fadingdaibiao2" id="fadingdaibiao2"></td>
  </tr>
  <tr>
    <td height="53" colspan="7" align="center"><p>从<input class="Wdate" type="text" onClick="WdatePicker()" name="start_date">起，我单位委托江泰保险经纪股份有限公司为我单位保险经纪人，代表我单位处理保险相关事宜，有效期限一年。<br>
      委托事项：协助我单位办理投保手续，为我单位提供保险咨询、保险培训和索赔服务等事宜。</p>
                                              </td>
  </tr>
  <tr>
    <td colspan="7" align="center">        委托人： 
      <label for="weituoren_last"></label>
      <input type="text" name="weituoren_last" id="weituoren_last" />
                  日期：<input class="Wdate" type="text" onClick="WdatePicker()" name="date2"></td>
  </tr>
  <tr>
    <td colspan="7" align="center">&nbsp;<input type="submit" value="提交保单" /></td>
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

