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
<title>机动车投保单</title>
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
							class="icon-home"></i>机动车投保单</a> <!-- Sub menu markup 
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
						

					<form name="baodan" action="<%=basePath %>AddVehicleServlet" method="get">

		<table width="920" height="643" border="1">
  <caption>
    机动车辆保险投保单
  <br />
  </caption>
  <tr>
    <td colspan="10"><p >投保须知 </p>
    <p >&nbsp;&nbsp;&nbsp;&nbsp;欢迎您到中国平安财产保险股份有限公司投保。请您仔细阅读保险条款，尤其是黑体字标注部分的条款内容，并听取保险公司业务人员的说明，如对保险公司业务人员的说明不明白或有异议的，请在填写本投保单之前向保险公司业务人员进行咨询，如未询问，视同已对条款内容完全理解并无异议。在您已充分理解保险条款后，请您用黑色或蓝色笔如实填写本投保单并签章确认。 </p></td>
  </tr>
  <tr>
    <td width="144">&nbsp;</td>
    <td width="153">&nbsp;</td>
    <td colspan="2">&nbsp;</td>
    <td width="156">交强险投保单号</td>
    <td width="122"><label for="jqxbaodanhao"></label>
    <input type="text" name="jqxbaodanhao" id="jqxbaodanhao"></td>
    <td colspan="2">商业险投保单号</td>
    <td colspan="2"><label for="syxbaodanhao"></label>
    <input type="text" name="syxbaodanhao" id="syxbaodanhao"></td>
  </tr>
  <tr>
    <td rowspan="3">被保险人资料</td>
    <td>被保险人名称</td>
    <td colspan="2"><label for="beibaoxianren_name"></label>
    <input type="text" name="beibaoxianren_name" id="beibaoxianren_name"></td>
    <td>证件类型</td>
    <td>身份证</td>
    <td colspan="2">证件号码</td>
    <td colspan="2"><label for="zhengjianhaoma"></label>
    <input type="text" name="zhengjianhaoma" id="zhengjianhaoma"></td>
  </tr>
  <tr>
    <td>通讯地址</td>
    <td colspan="6"><label for="tongxundizhi"></label>
    <input type="text" name="tongxundizhi" id="tongxundizhi"></td>
    <td width="115">邮编</td>
    <td width="141"><label for="youbian"></label>
    <input type="text" name="youbian" id="youbian"></td>
  </tr>
  <tr>
    <td>联系人名称</td>
    <td width="109"><label for="lianxiren_name"></label>
    <input type="text" name="lianxiren_name" id="lianxiren_name"></td>
    <td width="104">手机</td>
    <td><label for="phonenumber"></label>
    <input type="text" name="phonenumber" id="phonenumber"></td>
    <td>办公电话</td>
    <td colspan="2"><label for="bangongdianhua"></label>
    <input type="text" name="bangongdianhua" id="bangongdianhua"></td>
    <td>Email</td>
    <td><label for="youxiang"></label>
    <input type="text" name="youxiang" id="youxiang"></td>
  </tr>
  <tr>
    <td colspan="2">行驶证车主</td>
    <td colspan="8"><label for="chezhu"></label>
    <input type="text" name="chezhu" id="chezhu"></td>
  </tr>
  <tr>
    <td rowspan="3">车辆信息</td>
    <td>厂牌型号</td>
    <td><label for="changpaixinghao"></label>
    <input type="text" name="changpaixinghao" id="changpaixinghao"></td>
    <td>核定载客/质量</td>
    <td><label for="hedingzaike"></label>
    <input type="text" name="hedingzaike" id="hedingzaike"></td>
    <td>号牌号码</td>
    <td width="137"><label for="haopaihaoma"></label>
    <input type="text" name="haopaihaoma" id="haopaihaoma"></td>
    <td colspan="2">初次登记日期</td>
    <td><input type="text" name="chucidengjiriqi" id="chucidengjiriqi" onClick="WdatePicker()"></td>
  </tr>
  <tr>
    <td>识别代码</td>
    <td><label for="shibiedaima"></label>
    <input type="text" name="shibiedaima" id="shibiedaima"></td>
    <td>发动机号码</td>
    <td><label for="fadongjihaoma"></label>
    <input type="text" name="fadongjihaoma" id="fadongjihaoma"></td>
    <td>使用性质</td>
    <td colspan="2">非营业</td>
    <td>使用性质细分</td>
    <td>家用</td>
  </tr>
  <tr>
    <td>行驶区域</td>
    <td>全国</td>
    <td>新车购置价</td>
    <td><label for="xinchegouzhijia"></label>
    <input type="text" name="xinchegouzhijia" id="xinchegouzhijia"></td>
    <td>整备质量</td>
    <td colspan="2"><label for="zhengbeizhiliang"></label>
    <input type="text" name="zhengbeizhiliang" id="zhengbeizhiliang"></td>
    <td>排气量(L)</td>
    <td><label for="paiqiliang"></label>
    <input type="text" name="paiqiliang" id="paiqiliang"></td>
  </tr>
  <tr>
    <td>上年投保情况</td>
    <td>投保公司(交强险)</td>
    <td><label for="jqxtoubaogongsi"></label>
    <input type="text" name="jqxtoubaogongsi" id="jqxtoubaogongsi"></td>
    <td>上年保单号</td>
    <td><label for="jqxshangnianbaodanhao"></label>
    <input type="text" name="jqxshangnianbaodanhao" id="jqxshangnianbaodanhao"></td>
    <td>投保公司(商业险)</td>
    <td colspan="2"><label for="syxtoubaogongsi"></label>
    <input type="text" name="syxtoubaogongsi" id="syxtoubaogongsi"></td>
    <td>上年保单号</td>
    <td><label for="syxshangnianbaodanhao"></label>
    <input type="text" name="syxshangnianbaodanhao" id="syxshangnianbaodanhao"></td>
  </tr>
  <tr>
    <td>驾驶员信息</td>
    <td colspan="9"><label for="jiashiyuanxinxi"></label>
    <input type="text" name="jiashiyuanxinxi" id="jiashiyuanxinxi"></td>
  </tr>
  <tr>
    <td rowspan="13">商业险责任限额</td>
    <td colspan="3">险别</td>
    <td colspan="2">保险金额/赔偿限额</td>
    <td colspan="4">保险费小计</td>
  </tr>
  <tr>
    <td colspan="3">
    <label><input type="checkbox" name="cheliangsunshixian" value="cheliangsunshixian" id="cheliangsunshixian">
        车辆损失险</label></td>
    <td colspan="2"><label for="clbaoxianjine"></label>
    <input type="text" name="clbaoxianjine" id="clbaoxianjine"></td>
    <td colspan="4"><label for="clbaoxianfeixiaoji"></label>
    <input type="text" name="clbaoxianfeixiaoji" id="clbaoxianfeixiaoji"></td>
  </tr>
  <tr>
    <td colspan="3"><label><input type="checkbox" name="sydszzrbx" value="sydszzrbx" id="sydszzrbx">
        商业第三者责任保险</label></td>
    <td colspan="2"><label for="sybaoxianjine"></label>
    <input type="text" name="sybaoxianjine" id="sybaoxianjine"></td>
    <td colspan="4"><label for="sybaoxianfeixiaoji"></label>
    <input type="text" name="sybaoxianfeixiaoji" id="sybaoxianfeixiaoji"></td>
  </tr>
  <tr>
    <td colspan="3"><label><input type="checkbox" name="qcdqx" value="qcdqx" id="qcdqx">
        全车盗抢险</label></td>
    <td colspan="2"><label for="qcbaoxianjine"></label>
    <input type="text" name="qcbaoxianjine" id="qcbaoxianjine"></td>
    <td colspan="4"><label for="qcbaoxianfeixiaoji"></label>
    <input type="text" name="qcbaoxianfeixiaoji" id="qcbaoxianfeixiaoji"></td>
  </tr>
  <tr>
    <td colspan="3"><label><input type="checkbox" name="sjzwzrx" value="sjzwzrx" id="sjzwzrx">
        司机座位责任险</label></td>
    <td colspan="2"><label for="sjbaoxianjine"></label>
    <input type="text" name="sjbaoxianjine" id="sjbaoxianjine"></td>
    <td colspan="4"><label for="sjbaoxianfeixiaoji"></label>
    <input type="text" name="sjbaoxianfeixiaoji" id="sjbaoxianfeixiaoji"></td>
  </tr>
  <tr>
    <td colspan="3"><label><input type="checkbox" name="ckzwzrx" value="ckzwzrx" id="ckzwzrx">
        乘客座位责任险</label></td>
    <td colspan="2"><label for="ckbaoxianjine"></label>
    <input type="text" name="ckbaoxianjine" id="ckbaoxianjine"></td>
    <td colspan="4"><label for="ckbaoxianfeixiaoji"></label>
    <input type="text" name="ckbaoxianfeixiaoji" id="ckbaoxianfeixiaoji"></td>
  </tr>
  <tr>
    <td colspan="3"><label><input type="checkbox" name="zrx" value="zrx" id="zrx">
        自燃险</label></td>
    <td colspan="2"><label for="zrxbaoxianjine"></label>
    <input type="text" name="zrxbaoxianjine" id="zrxbaoxianjine"></td>
    <td colspan="4"><label for="zrxbaoxianfeixiaoji"></label>
    <input type="text" name="zrxbaoxianfeixiaoji" id="zrxbaoxianfeixiaoji"></td>
  </tr>
  <tr>
    <td colspan="3"><label><input type="checkbox" name="blddpsx" value="blddpsx" id="blddpsx">
        玻璃单独破碎险(国产玻璃)</label></td>
    <td colspan="2"><label for="blbaoxianjine"></label>
    <input type="text" name="blbaoxianjine" id="blbaoxianjine"></td>
    <td colspan="4"><label for="blbaoxianfeixiaoji"></label>
    <input type="text" name="blbaoxianfeixiaoji" id="blbaoxianfeixiaoji"></td>
  </tr>
  <tr>
    <td colspan="3"><label><input type="checkbox" name="cshhx" value="cshhx" id="cshhx">
        车身划痕险</label></td>
    <td colspan="2"><label for="csbaoxianjine"></label>
    <input type="text" name="csbaoxianjine" id="csbaoxianjine"></td>
    <td colspan="4"><label for="csbaoxianfeixiaoji"></label>
    <input type="text" name="csbaoxianfeixiaoji" id="csbaoxianfeixiaoji"></td>
  </tr>
  <tr>
    <td colspan="3"><label><input type="checkbox" name="clbjmpltstk" value="clbjmpltstk" id="clbjmpltstk">
        不计免赔率特约条款(车辆损失险)</label></td>
    <td colspan="2"><label for="clbjbaoxianjine"></label>
    <input type="text" name="clbjbaoxianjine" id="clbjbaoxianjine"></td>
    <td colspan="4"><label for="clbjbaoxianfeixiaoji"></label>
    <input type="text" name="clbjbaoxianfeixiaoji" id="clbjbaoxianfeixiaoji"></td>
  </tr>
  <tr>
    <td colspan="3"><label><input type="checkbox" name="sybjmpltstk" value="sybjmpltstk" id="sybjmpltstk">
        不计免赔率特约条款(商业第三者责任保险)</label></td>
    <td colspan="2"><label for="blbaoxianjine"></label>
    <input type="text" name="sybaoxianjine" id="sybaoxianjine"></td>
    <td colspan="4"><label for="blbaoxianfeixiaoji"></label>
    <input type="text" name="sybaoxianfeixiaoji" id="sybaoxianfeixiaoji"></td>
  </tr>
  <tr>
    <td colspan="3"><label><input type="checkbox" name="qcbjmpltstk" value="qcbjmpltstk" id="qcbjmpltstk">
        不计免赔率特约条款(全车盗抢险)</label></td>
    <td colspan="2"><label for="qcbaoxianjine"></label>
    <input type="text" name="qcbaoxianjine" id="qcbaoxianjine"></td>
    <td colspan="4"><label for="qcbaoxianfeixiaoji"></label>
    <input type="text" name="qcbaoxianfeixiaoji" id="qcbaoxianfeixiaoji"></td>
  </tr>
  <tr>
    <td colspan="3"><label><input type="checkbox" name="csbjmpltstk" value="csbjmpltstk" id="csbjmpltstk">
      不计免赔率特约条款(车上人员责任险)</label></td>
    <td colspan="2"><label for="csbaoxianjine"></label>
    <input type="text" name="csbaoxianjine" id="csbaoxianjine"></td>
    <td colspan="4"><label for="csbaoxianfeixiaoji"></label>
    <input type="text" name="csbaoxianfeixiaoji" id="csbaoxianfeixiaoji"></td>
  </tr>
  <tr>
    <td rowspan="4"><p>交强险</p>
    <p>责任限额</p></td>
    <td colspan="3">险别</td>
    <td colspan="2">保险金额/赔偿限额</td>
    <td colspan="4">保险费小计</td>
  </tr>
  <tr>
    <td colspan="3">死亡伤残</td>
    <td colspan="2">100000</td>
    <td colspan="4" rowspan="3">420</td>
  </tr>
  <tr>
    <td colspan="3">医疗费用</td>
    <td colspan="2">10000</td>
  </tr>
  <tr>
    <td colspan="3">财产损失</td>
    <td colspan="2">2000</td>
  </tr>
  <tr>
    <td>商业保险费合计</td>
    <td colspan="7">RMB<label for="shangyebaoxianfeiheji"></label>
    <input type="text" name="shangyebaoxianfeiheji" id="shangyebaoxianfeiheji"></td>
    <td colspan="2">人民币</td>
  </tr>
  <tr>
    <td>交强险保费合计</td>
    <td colspan="7">RMB 420</td>
    <td colspan="2">人民币</td>
  </tr>
  <tr>
    <td>车船税</td>
    <td colspan="7">RMB<label for="chechuanfei"></label>
    <input type="text" name="chechuanfei" id="chechuanfei"></td>
    <td colspan="2">人民币</td>
  </tr>
  <tr>
    <td>合计费用</td>
    <td colspan="4">RMB<label for="hejifeiyong"></label>
    <input type="text" name="hejifeiyong" id="hejifeiyong"></td>
    <td>人民币</td>
    <td colspan="4"><p >注：保费金额以最终核保通过并在保单中确定的金额为准</p></td>
  </tr>
  <tr>
    <td rowspan="2">保险期间</td>
    <td>商业险保险期间</td>
    <td colspan="8"><input type="text" name="sybaoxianqi" id="sybaoxianqi" onClick="WdatePicker()">起至<input type="text" name="sybaoxianzhi" id="sybaoxianzhi" onClick="WdatePicker()">24时止</td>
  </tr>
  <tr>
    <td>交强险保险期间</td>
    <td colspan="8"><input type="text" name="jqxbaoxianqi" id="jqxbaoxianqi" onClick="WdatePicker()">起至<input type="text" name="jqxbaoxianzhi" id="jqxbaoxianzhi" onClick="WdatePicker()">24时止</td>
  </tr>
  <tr>
    <td>争议解决方式</td>
    <td colspan="9">被保险人自愿采取下列解决方式解决<label for="jiejuefangshi"></label>
    <input type="text" name="jiejuefangshi" id="jiejuefangshi"></td>
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

