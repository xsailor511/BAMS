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
  <style>
table{
border-collapse:collapse;
border:1px;
text-align:center;
}
table td{
border:solid#000 1px;
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
					<div class="box-body" style="background:#CCDDFF;color:black">
						

<form name="baodan" action="<%=basePath %>servlet/AddVehicleServlet" method="get" onsubmit="return checkForm()">

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
    <td colspan="2">
    <input type="text" name="beibaoxianrenmingcheng" id="beibaoxianrenmingcheng"></td>
    <td>证件类型</td>
    <td>身份证</td>
    <td colspan="2">证件号码</td>
    <td colspan="2">
    <input type="text" name="beibaoxianrenzhengjianhaoma" id="beibaoxianrenzhengjianhaoma"></td>
  </tr>
  <tr>
    <td>通讯地址</td>
    <td colspan="6" style="text-align:left">&nbsp;
    <input type="text" name="beibaoxianrentongxundizhi" id="beibaoxianrentongxundizhi" style="width:80%"></td>
    <td width="115">邮编</td>
    <td width="141">
    <input type="text" name="beibaoxianrenyoubian" id="beibaoxianrenyoubian"></td>
  </tr>
  <tr>
    <td>联系人名称</td>
    <td width="109">
    <input type="text" name="beibaoxianlianxiren" id="beibaoxianlianxiren"></td>
    <td width="104">手机</td>
    <td>
    <input type="text" name="beibaoxianrendianhua" id="beibaoxianrendianhua"></td>
    <td>办公电话</td>
    <td colspan="2">
    <input type="text" name="beibaoxianrenbangongdianhua" id="beibaoxianrenbangongdianhua"></td>
    <td>Email</td>
    <td>
    <input type="text" name="beibaoxianrenemail" id="beibaoxianrenemail"></td>
  </tr>
  
   <tr>
    <td rowspan="3">投保人资料</td>
    <td>投标人名称</td>
    <td colspan="2">
    <input type="text" name="toubaorenmingcheng" id="toubaorenmingcheng"></td>
    <td>证件类型</td>
    <td>身份证</td>
    <td colspan="2">证件号码</td>
    <td colspan="2">
    <input type="text" name="toubaorenzhengjianhaoma" id="toubaorenzhengjianhaoma"></td>
  </tr>
  <tr>
    <td>通讯地址</td>
    <td colspan="6" style="text-align:left">&nbsp;
    <input type="text" name="toubaorentongxundizhi" id="toubaorentongxundizhi" style="width:80%"></td>
    <td width="115">邮编</td>
    <td width="141">
    <input type="text" name="toubaorenyoubian" id="toubaorenyoubian"></td>
  </tr>
  <tr>
    <td>联系人名称</td>
    <td width="109">
    <input type="text" name="toubaorenlianxiren" id="toubaorenlianxiren"></td>
    <td width="104">手机</td>
    <td>
    <input type="text" name="toubaorendianhua" id="toubaorendianhua"></td>
    <td>办公电话</td>
    <td colspan="2">
    <input type="text" name="toubaorenbangongdianhua" id="toubaorenbangongdianhua"></td>
    <td>Email</td>
    <td>
    <input type="text" name="toubaorenemail" id="toubaorenemail"></td>
  </tr>
  
  
  
  
  <tr>
    <td colspan="2">行驶证车主</td>
    <td colspan="8" style="text-align:left">&nbsp;
    <input type="text" name="xingshizhengchezhu" id="xingshizhengchezhu" style="width:60%"></td>
  </tr>
  <tr>
    <td rowspan="3">车辆信息</td>
    <td>厂牌型号</td>
    <td>
    <input type="text" name="changpaixinghao" id="changpaixinghao"></td>
    <td>核定载客/质量</td>
    <td>
    <input type="text" name="hedingzaike" id="hedingzaike"></td>
    <td>号牌号码</td>
    <td width="137">
    <input type="text" name="haopaihaoma" id="haopaihaoma"></td>
    <td colspan="2">初次登记日期</td>
    <td><input type="text" class="Wdate" name="chucidengjiriqi" id="chucidengjiriqi" onClick="WdatePicker()"></td>
  </tr>
  <tr>
    <td>识别代码</td>
    <td><label for="shibiedaima"></label>
    <input type="text" name="shibiedaima" id="shibiedaima"></td>
    <td>发动机号码</td>
    <td>
    <input type="text" name="fadongjixinghao" id="fadongjixinghao"></td>
    <td>使用性质</td>
    <td colspan="2">非营业</td>
    <td>使用性质细分</td>
    <td>家用</td>
  </tr>
  <tr>
    <td>行驶区域</td>
    <td>全国</td>
    <td>新车购置价</td>
    <td>
    <input type="text" name="xinchejiage" id="xinchejiage"></td>
    <td>整备质量</td>
    <td colspan="2">
    <input type="text" name="zhengbeizhiliang" id="zhengbeizhiliang"></td>
    <td>排气量(L)</td>
    <td><label for="paiqiliang"></label>
    <input type="text" name="paiqiliang" id="paiqiliang"></td>
  </tr>
  <tr>
    <td>上年投保情况</td>
    <td>投保公司(交强险)</td>
    <td>
    <input type="text" name="shangnianjiaoqiangxian" id="shangnianjiaoqiangxian"></td>
    <td>上年保单号</td>
    <td>
    <input type="text" name="jiaoqiangxianbaodanhao" id="jiaoqiangxianbaodanhao"></td>
    <td>投保公司(商业险)</td>
    <td colspan="2">
    <input type="text" name="shangnianshangyexian" id="shangnianshangyexian"></td>
    <td>上年保单号</td>
    <td>
    <input type="text" name="shangyexianbaodanhao" id="shangyexianbaodanhao"></td>
  </tr>
  <tr>
    <td colspan="2">驾驶员信息</td>
    <td colspan="9" style="text-align:left" >&nbsp;
    <input type="text" name="jiashiyuanxinxi" id="jiashiyuanxinxi" style="width:60%"></td>
  </tr>
  <tr>
    <td rowspan="13">商业险责任限额</td>
    <td colspan="3">险别</td>
    <td colspan="2">保险金额/赔偿限额</td>
    <td colspan="4">保险费小计</td>
  </tr>
  <tr>
    <td colspan="3">
    <input type="checkbox" name="xianbie" value="checked" id="cheliangsunshixian">
        车辆损失险</td>
    <td colspan="2">
    <input type="text" name="shangyexianxiane" id="clbaoxianjine"></td>
    <td colspan="4">
    <input type="text" name="baoxianfeixiaoji" id="clbaoxianfeixiaoji"></td>
  </tr>
  <tr>
    <td colspan="3"><label><input type="checkbox" name="xianbie" value="checked" id="sydszzrbx">
        商业第三者责任保险</label></td>
    <td colspan="2">
    <input type="text" name="shangyexianxiane" id="sybaoxianjine"></td>
    <td colspan="4">
    <input type="text" name="baoxianfeixiaoji" id="sybaoxianfeixiaoji"></td>
  </tr>
  <tr>
    <td colspan="3"><label><input type="checkbox" name="xianbie" value="checked" id="qcdqx">
        全车盗抢险</label></td>
    <td colspan="2">
    <input type="text" name="shangyexianxiane" id="qcbaoxianjine"></td>
    <td colspan="4">
    <input type="text" name="baoxianfeixiaoji" id="qcbaoxianfeixiaoji"></td>
  </tr>
  <tr>
    <td colspan="3"><label><input type="checkbox" name="xianbie" value="checked" id="sjzwzrx">
        司机座位责任险</label></td>
    <td colspan="2">
    <input type="text" name="shangyexianxiane" id="sjbaoxianjine"></td>
    <td colspan="4">
    <input type="text" name="baoxianfeixiaoji" id="sjbaoxianfeixiaoji"></td>
  </tr>
  <tr>
    <td colspan="3"><label><input type="checkbox" name="xianbie" value="checked" id="ckzwzrx">
        乘客座位责任险</label></td>
    <td colspan="2">
    <input type="text" name="shangyexianxiane" id="ckbaoxianjine"></td>
    <td colspan="4">
    <input type="text" name="baoxianfeixiaoji" id="ckbaoxianfeixiaoji"></td>
  </tr>
  <tr>
    <td colspan="3"><label><input type="checkbox" name="xianbie" value="checked" id="zrx">
        自燃险</label></td>
    <td colspan="2">
    <input type="text" name="shangyexianxiane" id="zrxbaoxianjine"></td>
    <td colspan="4">
    <input type="text" name="baoxianfeixiaoji" id="zrxbaoxianfeixiaoji"></td>
  </tr>
  <tr>
    <td colspan="3"><label><input type="checkbox" name="xianbie" value="checked" id="blddpsx">
        玻璃单独破碎险(国产玻璃)</label></td>
    <td colspan="2">
    <input type="text" name="shangyexianxiane" id="blbaoxianjine"></td>
    <td colspan="4">
    <input type="text" name="baoxianfeixiaoji" id="blbaoxianfeixiaoji"></td>
  </tr>
  <tr>
    <td colspan="3"><label><input type="checkbox" name="xianbie" value="checked" id="cshhx">
        车身划痕险</label></td>
    <td colspan="2">
    <input type="text" name="shangyexianxiane" id="csbaoxianjine"></td>
    <td colspan="4">
    <input type="text" name="baoxianfeixiaoji" id="csbaoxianfeixiaoji"></td>
  </tr>
  <tr>
    <td colspan="3"><label><input type="checkbox" name="xianbie" value="checked" id="clbjmpltstk">
        不计免赔率特约条款(车辆损失险)</label></td>
    <td colspan="2">
    <input type="text" name="shangyexianxiane" id="clbjbaoxianjine"></td>
    <td colspan="4">
    <input type="text" name="baoxianfeixiaoji" id="clbjbaoxianfeixiaoji"></td>
  </tr>
  <tr>
    <td colspan="3"><label><input type="checkbox" name="xianbie" value="checked" id="sybjmpltstk">
        不计免赔率特约条款(商业第三者责任保险)</label></td>
    <td colspan="2">
    <input type="text" name="shangyexianxiane" id="sybaoxianjine"></td>
    <td colspan="4">
    <input type="text" name="baoxianfeixiaoji" id="sybaoxianfeixiaoji"></td>
  </tr>
  <tr>
    <td colspan="3"><label><input type="checkbox" name="xianbie" value="checked" id="qcbjmpltstk">
        不计免赔率特约条款(全车盗抢险)</label></td>
    <td colspan="2">
    <input type="text" name="shangyexianxiane" id="qcbaoxianjine"></td>
    <td colspan="4">
    <input type="text" name="baoxianfeixiaoji" id="qcbaoxianfeixiaoji"></td>
  </tr>
  <tr>
    <td colspan="3"><label><input type="checkbox" name="xianbie" value="checked" id="csbjmpltstk">
      不计免赔率特约条款(车上人员责任险)</label></td>
    <td colspan="2">
    <input type="text" name="shangyexianxiane" id="csbaoxianjine"></td>
    <td colspan="4">
    <input type="text" name="baoxianfeixiaoji" id="csbaoxianfeixiaoji"></td>
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
    <td colspan="7" style="text-align:left" >&nbsp;RMB
    <input type="text" name="shangyebaoxianfeiheji" id="shangyebaoxianfeiheji"></td>
    <td colspan="2">人民币</td>
  </tr>
  <tr>
    <td>交强险保费合计</td>
    <td colspan="7" style="text-align:left" >&nbsp;RMB 420</td>
    <td colspan="2">人民币</td>
  </tr>
  <tr>
    <td>车船税</td>
    <td colspan="7" style="text-align:left" >&nbsp;RMB
    <input type="text" name="chechuanshui" id="chechuanshui"></td>
    <td colspan="2">人民币</td>
  </tr>
  <tr>
    <td>合计费用</td>
    <td colspan="4" style="text-align:left" >&nbsp;RMB
    <input type="text" name="heji" id="heji"></td>
    <td>人民币</td>
    <td colspan="4"><p >注：保费金额以最终核保通过并在保单中确定的金额为准</p></td>
  </tr>
  <tr>
    <td rowspan="2">保险期间</td>
    <td>商业险保险期间</td>
    <td colspan="8">
    <input type="text" class="Wdate" name="shangyebaoxianstartdate" id="shangyebaoxianstartdate" onClick="WdatePicker()">
    起至<input type="text" class="Wdate" name="shangyebaoxianenddate" id="shangyebaoxianenddate" onClick="WdatePicker()">24时止</td>
  </tr>
  <tr>
    <td>交强险保险期间</td>
    <td colspan="8">
    <input type="text" class="Wdate" name="jiaoqiangbaoxianstartdate" id="jiaoqiangbaoxianstartdate" onClick="WdatePicker()">
    起至<input type="text" class="Wdate" name="jiaoqiangbaoxianenddate" id="jiaoqiangbaoxianenddate" onClick="WdatePicker()">24时止</td>
  </tr>
  <tr>
    <td>争议解决方式</td>
    <td colspan="9">被保险人自愿采取下列解决方式解决
    <input type="text" name="zhengyijiejue" id="zhengyijiejue"></td>
  </tr>
  <tr>
    <td colspan="10">&nbsp;<input type="submit" value="提交保单" /></td>
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
	<!-- date picker -->
	<script src="<%=basePath %>js/My97DatePicker/WdatePicker.js"></script>
	<!-- Main js file -->
	<script type="text/javascript">
	function isEmpty(str){
		if(str==null || str.trim().length==0)
			return true;
		else 
			return false;
	}
	
	function emailFormatCheck(email){
	    if ((email.length > 128) || (email.length < 6)) {
	        return false;
	    }
	    var format = /^[A-Za-z0-9+]+[A-Za-z0-9\.\_\-+]*@([A-Za-z0-9\-]+\.)+[A-Za-z0-9]+$/;
	    if (!email.match(format)) {
	        return false;
	    }
	    return true;
	}
	
	function checkForm(){
		var beibaoxianrenmingcheng = document.getElementById("beibaoxianrenmingcheng").value;
		var beibaoxianrenzhengjianhaoma = document.getElementById("beibaoxianrenzhengjianhaoma").value;
		var beibaoxianrentongxundizhi = document.getElementById("beibaoxianrentongxundizhi").value;
		var beibaoxianrenyoubian = document.getElementById("beibaoxianrenyoubian").value;
		var beibaoxianlianxiren = document.getElementById("beibaoxianlianxiren").value;
		var beibaoxianrendianhua = document.getElementById("beibaoxianrendianhua").value;
		var beibaoxianrenbangongdianhua = document.getElementById("beibaoxianrenbangongdianhua").value;
		var beibaoxianrenemail = document.getElementById("beibaoxianrenemail").value;
		var toubaorenmingcheng = document.getElementById("toubaorenmingcheng").value;
		var toubaorenzhengjianhaoma = document.getElementById("toubaorenzhengjianhaoma").value;
		var toubaorentongxundizhi = document.getElementById("toubaorentongxundizhi").value;
		var toubaorenyoubian = document.getElementById("toubaorenyoubian").value;
		if(isEmpty(beibaoxianrenmingcheng)||isEmpty(beibaoxianrenzhengjianhaoma)||isEmpty(beibaoxianrentongxundizhi)||
				isEmpty(beibaoxianrenyoubian)||isEmpty(beibaoxianlianxiren)||isEmpty(beibaoxianrendianhua)||
				isEmpty(beibaoxianrenbangongdianhua)||isEmpty(beibaoxianrenemail)||isEmpty(toubaorenmingcheng)
				||isEmpty(toubaorenzhengjianhaoma)||isEmpty(toubaorentongxundizhi)||isEmpty(toubaorenyoubian)){
			alert("请将选项填写完整");
			return false;
		}
		var toubaorenlianxiren = document.getElementById("toubaorenlianxiren").value;
		var toubaorendianhua = document.getElementById("toubaorendianhua").value;
		var toubaorenbangongdianhua = document.getElementById("toubaorenbangongdianhua").value;
		var toubaorenemail = document.getElementById("toubaorenemail").value;
		var xingshizhengchezhu = document.getElementById("xingshizhengchezhu").value;
		var changpaixinghao = document.getElementById("changpaixinghao").value;
		var hedingzaike = document.getElementById("hedingzaike").value;
		var haopaihaoma = document.getElementById("haopaihaoma").value;
		var chucidengjiriqi = document.getElementById("chucidengjiriqi").value;
		var shibiedaima = document.getElementById("shibiedaima").value;
		var fadongjixinghao = document.getElementById("fadongjixinghao").value;
		if(isEmpty(toubaorenlianxiren)||isEmpty(toubaorendianhua)||isEmpty(toubaorenbangongdianhua)
				||isEmpty(toubaorenemail)||isEmpty(xingshizhengchezhu)||isEmpty(changpaixinghao)
				||isEmpty(hedingzaike)||isEmpty(haopaihaoma)||isEmpty(chucidengjiriqi)
				||isEmpty(shibiedaima)||isEmpty(fadongjixinghao)){
			alert("请将选项填写完整");
			return false;
		}
		
		var xinchejiage = document.getElementById("xinchejiage").value;
		var zhengbeizhiliang = document.getElementById("zhengbeizhiliang").value;
		var paiqiliang = document.getElementById("paiqiliang").value;
		var shangnianjiaoqiangxian = document.getElementById("shangnianjiaoqiangxian").value;
		var jiaoqiangxianbaodanhao = document.getElementById("jiaoqiangxianbaodanhao").value;
		var shangnianshangyexian = document.getElementById("shangnianshangyexian").value;
		var shangyexianbaodanhao = document.getElementById("shangyexianbaodanhao").value;	
		var shangyebaoxianfeiheji = document.getElementById("shangyebaoxianfeiheji").value;
		var chechuanshui = document.getElementById("chechuanshui").value;
		var heji = document.getElementById("heji").value;
		var shangyebaoxianstartdate = document.getElementById("shangyebaoxianstartdate").value;
		var shangyebaoxianenddate = document.getElementById("shangyebaoxianenddate").value;
		var jiaoqiangbaoxianstartdate = document.getElementById("jiaoqiangbaoxianstartdate").value;
		var jiaoqiangbaoxianenddate = document.getElementById("jiaoqiangbaoxianenddate").value;
		var zhengyijiejue = document.getElementById("zhengyijiejue").value;
		var jiashiyuanxinxi = document.getElementById("jiashiyuanxinxi").value;
		
		
		if(isEmpty(xinchejiage)||isEmpty(zhengbeizhiliang)||isEmpty(paiqiliang)
				||isEmpty(shangnianjiaoqiangxian)||isEmpty(jiaoqiangxianbaodanhao)||isEmpty(shangnianshangyexian)
				||isEmpty(shangyexianbaodanhao)||isEmpty(shangyebaoxianfeiheji)||isEmpty(chechuanshui)
				||isEmpty(heji)||isEmpty(shangyebaoxianstartdate)||isEmpty(shangyebaoxianenddate)
				||isEmpty(jiaoqiangbaoxianstartdate)||isEmpty(jiaoqiangbaoxianenddate)||isEmpty(zhengyijiejue)
				||isEmpty(jiashiyuanxinxi)){
			alert("请将选项填写完整");
			return false;
		}
		//检查邮箱格式
		if(!emailFormatCheck(beibaoxianrenemail)){
			alert("被保险人email格式不对");
			return false;
		}
		if(!emailFormatCheck(toubaorenemail)){
			alert("投保人email格式不对");
			return false;
		}
		//邮政编码的长度必须是6
		if(beibaoxianrenyoubian.length!=6){
			alert("被保险人邮编不对");
			return false;
		}
		if(toubaorenyoubian.length!=6){
			alert("投保人邮编不对");
			return false;
		}
		//身份证长度检查
		if(beibaoxianrenzhengjianhaoma.length!=18){
			alert("被保险人身份号码长度不对");
			return false;
		}
		if(toubaorenzhengjianhaoma.length!=18){
			alert("投保人身份证号码长度不对");
		}
		
		//检查数字合法性
		if(isNaN(xinchejiage)){
			alert("新车购置价必须是数字");
			return false;
		}
		if(isNaN(zhengbeizhiliang)){
			alert("整备质量必须是数字");
			return false;
		}
		if(isNaN(hedingzaike)){
			alert("核定载客必须是数字");
			return false;
		}
		if(isNaN(paiqiliang)){
			alert("排气量(L)必须是数字");
			return false;
		}
		if(isNaN(shangyebaoxianfeiheji)){
			alert("商业保险费合计必须是数字");
			return false;
		}
		if(isNaN(chechuanshui)){
			alert("车船税必须是数字");
			return false;
		}
		if(isNaN(heji)){
			alert("合计费用必须是数字");
			return false;
		}
		var xianbie = document.getElementsByName("xianbie");
		var shangyexianxiane = document.getElementsByName("shangyexianxiane");
		//var baoxianfeixiaoji = document.getElementsByName("baoxianfeixiaoji");
		var mark2 = false;
		for(var i=0;i<xianbie.length;i++){
			if(xianbie[i].checked){
				mark2 = true;
			}
		}
		if(!mark2){
			alert("请至少选择一个商业险责任限额");
			return false;
		}
		for(var i=0;i<xianbie.length;i++){
			if(xianbie[i].checked){
				if(isEmpty(shangyexianxiane[i].value)){
					alert("请将商业险责任限额部分的保险金额/赔偿限额填写完整");
					return false;
				}
				
			}
		}
		
	}
	</script>
</body>
</html>

