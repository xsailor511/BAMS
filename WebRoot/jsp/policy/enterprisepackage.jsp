<!DOCTYPE html>
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
	if(null==session_name){//if the user is not login or a manager.
		
		response.setHeader("refresh","0;URL="+url) ;
		//response.sendRedirect(basePath+"jsp/user/login.jsp");
	}
}

%>


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
  <style>
table{
border-collapse:collapse;
border:1px;
}
table td{
border:solid#000 1px;
}

</style>
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
					<div class="box-body" style="background:#CCDDFF;color:black">
						

<form name="baodan" action="<%=basePath %>servlet/AddEnterprisePackageServlet" method="post" onsubmit="return checkForm()">

<table width="820" border="1">
<caption>
中小企业一揽子保险委托书
</caption>
 
  <tr>
    <td colspan="7" align="center"><h2>委托人信息</h2></td>
  </tr>
  <tr>
    <td>委托人：
      <label for="weituoren"></label>
    <input type="text" name="weituoren" id="weituoren"></td>
    <td colspan="4">电话： 
      <label for="dianhua"></label>
    <input type="text" name="dianhua" id="dianhua"></td>
    <td colspan="2">联系人：
      <label for="lianxiren"></label>
    <input type="text" name="lianxiren" id="lianxiren"></td>
  </tr>
  <tr>
    <td colspan="7" style="text-align:center"><h2 align="center">委托险种</h2></td>
  </tr>
  <tr>
    <td colspan="7"><p style="text-align:left">一 必选险种</p></td>
  </tr>
  <tr>
    <td style="width:350" colspan="2">1. 机动车辆保险（交强、三者、车损、不计免赔）</td>
    <td style="width:170">2.财产一切保险</td>
    <td colspan="3">3.机器损坏保险</td>
    <td style="width:178">4. 公众责任保险</td>
  </tr>
  <tr>
    <td colspan="7" style="text-align:center"><h4><strong><label>保险到期日为:&nbsp;</label>
    <input class="Wdate" type="text" onClick="WdatePicker()" name="enddate" id="enddate"></strong></h4></td>
  </tr>
  <tr>
    <td height="26" colspan="7">二 可选险种</td>
  </tr>
  <tr>
    <td height="52" colspan="7"><p>
      <label>
        <input type="checkbox" name="kexuanxianzhong" value=" 雇主责任保险" id="kexuanxianzhong_0">
        雇主责任保险</label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <label>
        <input type="checkbox" name="kexuanxianzhong" value=" 污染责任保险" id="kexuanxianzhong_1">
        污染责任保险</label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <label>
        <input type="checkbox" name="kexuanxianzhong" value=" 货物运输保险" id="kexuanxianzhong_2">
        货物运输保险</label>
&nbsp;&nbsp;
      <label>
        <input type="checkbox" name="kexuanxianzhong" value="施工机具保险" id="kexuanxianzhong_3">
        施工机具保险</label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <label>
        <input type="checkbox" name="kexuanxianzhong" value=" 建筑（安装）工程一切保险" id="kexuanxianzhong_4">
        建筑（安装）工程一切保险</label>
<br>
      <label>
        <input type="checkbox" name="kexuanxianzhong" value="利润损失保险" id="kexuanxianzhong_5">
        利润损失保险</label>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <label>
        <input type="checkbox" name="kexuanxianzhong" value="雇员忠诚保险" id="kexuanxianzhong_6">
        雇员忠诚保险</label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <label>
        <input type="checkbox" name="kexuanxianzhong" value="产品责任保险" id="kexuanxianzhong_7">
        产品责任保险</label>
&nbsp;&nbsp;
      <label>
        <input type="checkbox" name="kexuanxianzhong" value="补充工伤保险" id="kexuanxianzhong_8">
        补充工伤保险</label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <label>
        <input type="checkbox" name="kexuanxianzhong" value="高管、董事责任保险（上市）" id="kexuanxianzhong_9">
        高管、董事责任保险（上市）</label>
      <br>
      <label>
        <input type="checkbox" name="kexuanxianzhong" value="意外伤害保险" id="kexuanxianzhong_10">
        意外伤害保险</label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <label>
        <input type="checkbox" name="kexuanxianzhong" value="补充医疗保险" id="kexuanxianzhong_11">
        补充医疗保险</label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <label>
        <input type="checkbox" name="kexuanxianzhong" value="企业年金保险" id="kexuanxianzhong_12">
        企业年金保险</label>
&nbsp;&nbsp;
      <label>
        <input type="checkbox" name="kexuanxianzhong" value="补充养老保险" id="kexuanxianzhong_13">
        补充养老保险</label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <label>
        <input type="checkbox" name="kexuanxianzhong" value="产品质量保证保险" id="kexuanxianzhong_14">
        产品质量保证保险</label>
      <br>
      <label>
        <input type="checkbox" name="kexuanxianzhong" value="大型设备运输险" id="kexuanxianzhong_15">
        大型设备运输险</label>
      &nbsp;&nbsp;
      <label>
        <input type="checkbox" name="kexuanxianzhong" value="安全生产责任险" id="kexuanxianzhong_16">
        安全生产责任险</label>
&nbsp;&nbsp;
      <label>
        <input type="checkbox" name="kexuanxianzhong" value="油污责任保险" id="kexuanxianzhong_17">
        油污责任保险</label>
&nbsp;&nbsp;
      <label>
        <input type="checkbox" name="kexuanxianzhong" value="农作物种植保险" id="kexuanxianzhong_18">
        农作物种植保险</label>
&nbsp;&nbsp;
      <label>
        <input type="checkbox" name="kexuanxianzhong" value="特殊保险" id="kexuanxianzhong_19">
        特殊保险</label>
      <br>
    </p></td>
  </tr>
  <tr>
    <td colspan="7" style="text-align:center"><h2>保险公司选择</h2></td>
  </tr>
  <tr>
    <td colspan="2" style="text-align:center">直接选择</td>
    <td colspan="5" style="text-align:center">委托选择</td>
  </tr>
  <tr>
    <td colspan="2"><p>
      <label>
        <input type="radio" name="baoxiangongsi" value="人保" id="baoxiangongsi_0">
        人保</label>

      <label>
        <input type="radio" name="baoxiangongsi" value="平安" id="baoxiangongsi_1">
        平安</label>

      <label>
        <input type="radio" name="baoxiangongsi" value="太保" id="baoxiangongsi_2">
        太保</label>

      <label>
        <input type="radio" name="baoxiangongsi" value="大地" id="baoxiangongsi_3">
        大地</label>

      <label>
        <input type="radio" name="baoxiangongsi" value="阳光" id="baoxiangongsi_4">
        阳光</label>

      <label>
        <input type="radio" name="baoxiangongsi" value="太平" id="baoxiangongsi_5">
        太平</label>
      <br>
      <label>
        <input type="radio" name="baoxiangongsi" value="安诚" id="baoxiangongsi_6">
        安诚</label>

      <label>
        <input type="radio" name="baoxiangongsi" value="永诚" id="baoxiangongsi_7">
        永诚</label>

      <label>
        <input type="radio" name="baoxiangongsi" value="都邦" id="baoxiangongsi_8">
        都邦</label>

      <label>
        <input type="radio" name="baoxiangongsi" value="三星" id="baoxiangongsi_9">
        三星</label>

      <label>
        <input type="radio" name="baoxiangongsi" value="天安" id="baoxiangongsi_10">
        天安</label>

      <label>
        <input type="radio" name="baoxiangongsi" value="永安" id="baoxiangongsi_11">
        永安</label>
      <br>
      <label>
        <input type="radio" name="baoxiangongsi" value="长安" id="baoxiangongsi_12">
        长安</label>

      <label>
        <input type="radio" name="baoxiangongsi" value="华泰" id="baoxiangongsi_13">
        华泰</label>

      <label>
        <input type="radio" name="baoxiangongsi" value="安华" id="baoxiangongsi_14">
        安华</label>
 
      <label>
        <input type="radio" name="baoxiangongsi" value="大众" id="baoxiangongsi_15">
        大众</label>
  
      <label>
        <input type="radio" name="baoxiangongsi" value="长城" id="baoxiangongsi_16">
        长城</label>
   
      <label>
        <input type="radio" name="baoxiangongsi" value="海纽" id="baoxiangongsi_17">
        海纽</label>
      <br>
      <label>
        <input type="radio" name="baoxiangongsi" value="人寿" id="baoxiangongsi_18">
        人寿</label>
  
      <label>
        <input type="radio" name="baoxiangongsi" value="泰康" id="baoxiangongsi_19">
        泰康</label>
     
      <label>
        <input type="radio" name="baoxiangongsi" value="新华" id="baoxiangongsi_20">
        新华</label>
     
      <label>
        <input type="radio" name="baoxiangongsi" value="中英" id="baoxiangongsi_21">
        中英</label>
     
      <label>
        <input type="radio" name="baoxiangongsi" value="合众" id="baoxiangongsi_22">
        合众</label>
     
      <label>
        <input type="radio" name="baoxiangongsi" value="信诚" id="baoxiangongsi_23">
        信诚</label>
      <br>
    </p></td>
    <td  colspan="5" style="text-align:center"><input type="radio" name="baoxiangongsi" id="baoxiangongsi_24" value="tongyi">
    <label for="tongyi">同意</label></td>
  </tr>
  <tr>
    <td  colspan="7" style="text-align:center"><h2 style="text-align:center">打折约定</h2>
    <p style="text-align:center">&nbsp;</p></td>
  </tr>
  <tr>
    <td  colspan="7"><p style="text-align:left"><strong>江泰保险经纪股份有限公司</strong>是中国保险监督管理委员会批准的全国性保险经纪公司，从2002年10月12日起成为中国工商银行股份有限公司的保险经纪人。<strong> </strong></p></td>
  </tr>
  <tr>
    <td colspan="7" style="text-align:center"><h2>授权委托书</h2></td>
  </tr>
  <tr>
    <td  colspan="2" style="text-align:right"><p>委托人：</p></td>
    <td  colspan="5" style="text-align:left">&nbsp;
    <input type="text" name="weituoren" id="weituoren"></td>
  </tr>
  <tr>
    <td  colspan="2" style="text-align:right"><p>注册地址：</p></td>
    <td  colspan="5" style="text-align:left">&nbsp;
    <input type="text" name="weituorenzhucedizhi" id="weituorenzhucedizhi"></td>
  </tr>
  <tr>
    <td  colspan="2" style="text-align:right"><p>法定代表人：</p></td>
    <td  colspan="5" style="text-align:left">&nbsp;
    <input type="text" name="weituorenfadingdaibiaoren" id="weituorenfadingdaibiaoren"></td>
  </tr>
  <tr>
    <td colspan="2" style="text-align:right">受托人：</td>
    <td colspan="5" style="text-align:left">&nbsp;江泰保险经纪股份有限公司</td>
  </tr>
  <tr>
    <td colspan="2" style="text-align:right"><p>注册地址：</p></td>
    <td colspan="5" style="text-align:left">&nbsp;
    <input type="text" name="shoutuorenzhucedizhi" id="shoutuorenzhucedizhi"></td>
  </tr>
  <tr>
    <td colspan="2" style="text-align:right"><p>法定代表人：</p></td>
    <td colspan="5" style="text-align:left">&nbsp;
    <input type="text" name="shoutuorenfadingdaibiao" id="shoutuorenfadingdaibiao"></td>
  </tr>
  <tr>
    <td colspan="7" style="text-align:center">
    <p>从<input class="Wdate" type="text" onClick="WdatePicker()" name="startdate" id="startdate">
    起，我单位委托江泰保险经纪股份有限公司为我单位保险经纪人，代表我单位处理保险相关事宜，有效期限一年。<br>
      委托事项：协助我单位办理投保手续，为我单位提供保险咨询、保险培训和索赔服务等事宜。</p>
                                              </td>
  </tr>
  <tr>
    <td colspan="7" style="text-align:center">        委托人： 
      <label for="weituorenqianzhang"></label>
      <input type="text" name="weituorenqianzhang" id="weituorenqianzhang" />
                  日期：<input class="Wdate" type="text" onClick="WdatePicker()" name="tianbiaoriqi" id="tianbiaoriqi"></td>
  </tr>
  <tr>
    <td colspan="7" style="text-align:center">&nbsp;<input type="submit" value="提交保单" /></td>
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
	function checkForm(){
		
		var dianhua = document.getElementById("dianhua").value;
		var lianxiren = document.getElementById("lianxiren").value;
		
		var weituorenzhucedizhi = document.getElementById("weituorenzhucedizhi").value;
		var weituorenfadingdaibiaoren = document.getElementById("weituorenfadingdaibiaoren").value;
		var shoutuorenzhucedizhi = document.getElementById("shoutuorenzhucedizhi").value;
		var shoutuorenfadingdaibiao = document.getElementById("shoutuorenfadingdaibiao").value;
		var weituorenqianzhang = document.getElementById("weituorenqianzhang").value;
		var enddate = document.getElementById("enddate").value;
		var startdate = document.getElementById("startdate").value;
		var tianbiaoriqi = document.getElementById("tianbiaoriqi").value;
		
		if(isEmpty(dianhua)||isEmpty(lianxiren)||isEmpty(weituorenzhucedizhi)
				||isEmpty(weituorenfadingdaibiaoren)||isEmpty(shoutuorenzhucedizhi)
				||isEmpty(shoutuorenfadingdaibiao)||isEmpty(weituorenqianzhang)
				||isEmpty(enddate)||isEmpty(startdate)||isEmpty(tianbiaoriqi)){
			alert("请将必填项填写完整!");
			return false;
		}
		
		var baoxiangongsi = document.getElementsByName("baoxiangongsi");
		var mark1 = false;
		for(var i=0;i<baoxiangongsi.length;i++){
			if(baoxiangongsi[i].checked){
				mark1 = true;
			}
			
		}
		if(!mark1){
			alert("请选择保险公司");
			return false;
		}
		
		var weituoren = document.getElementsByName("weituoren");
		var weituoren1 = weituoren[0].value;
		var weituoren2 = weituoren[1].value;
		if(isEmpty(weituoren1)||isEmpty(weituoren2)){
			alert("委托人名称没有填写完整");
			return false;
		}else if(weituoren1!=weituoren2){
			alert("委托人名称前后不一致");
			return false;
		}
// 		var kexuanxianzhong = document.getElementsByName("kexuanxianzhong");
// 		var mark2 = false;
// 		for(var i=0;i<kexuanxianzhong.length;i++){
// 			if(kexuanxianzhong[i].checked){
// 				mark2 = true;
// 			}
// 		}
// 		if(!mark2){
// 			alert("可选险种至少选择一个");
// 			return false;
// 		}

	
		
	}
	
	</script>
</body>
</html>

