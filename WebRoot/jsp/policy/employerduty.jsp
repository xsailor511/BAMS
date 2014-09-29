<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="bams.entity.User" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String session_name = (String)session.getAttribute("name");
Integer role_int = (Integer)session.getAttribute("role");
String feilv = (String)request.getAttribute("feilv");
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
<style type="text/css">
table{
text-align:center;
width:820;height:364;
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
					<div class="box-body" style="background:#CCDDFF;color:black">
<form name="baodan" action="<%=basePath %>servlet/AddEmployerDutyServlet" method="get" onsubmit="return checkForm()">

<table border="1">
<caption>
雇主责任险投保单<br />
<p style="text-align: right">投保单编号
    <input type="text" name="toubaodanbianhao" id="toubaodanbianhao"></p>
  </caption>
  <tr>
    <td >投保人名称</td>
    <td colspan="3" style="width:30%">
    <input type="text" name="toubaorenmingcheng" id="toubaorenmingcheng"></td>
    <td >投保人地址</td>
    <td colspan="2">
    <input type="text" name="toubaorendizhi" id="toubaorendizhi"></td>
  </tr>
  <tr>
    <td >投保人联系人</td>
    <td colspan="3">
    <input type="text" name="toubaorenlianxiren" id="toubaorenlianxiren"></td>
    <td>投保人联系电话</td>
    <td colspan="2">
    <input type="text" name="toubaorendianhua" id="toubaorendianhua"></td>
  </tr>
  <tr>
    <td >被保险人名称</td>
    <td colspan="3">
    <input type="text" name="beibaoxianrenmingcheng" id="beibaoxianrenmingcheng"></td>
    <td>被保险人地址</td>
    <td colspan="2">
    <input type="text" name="beibaoxianrendizhi" id="beibaoxianrendizhi"></td>
  </tr>
  <tr>
    <td >营业性质</td>
    <td colspan="3">
    <input type="text" name="yingyexingzhi" id="yingyexingzhi"></td>
    <td>被保险人组织机构代码证</td>
    <td colspan="2">
    <input type="text" name="beizuzhijigoudaima" id="beizuzhijigoudaima"></td>
  </tr>
  <tr>
    <td colspan="3">是否参加社会(医疗、工伤）保险</td>
    <td colspan="4">
    是<input type="radio" name="canjiashehuibaoxian" id="canjiashehuibaoxian1" value="shi" />
    否<input type="radio" name="canjiashehuibaoxian" id="canjiashehuibaoxian2" value="fou" /></td>
  </tr>
  <tr>
    <td colspan="2" rowspan="2">雇员工种</td>
    <td colspan="2" rowspan="2">估计雇员人数</td>
    <td  colspan="3">赔偿限额</td>
  </tr>
  <tr>
    <td colspan="2">死亡、伤残</td>
    <td >医疗</td>
  </tr>
  <tr>
    <td colspan="2">
    <input type="text" name="guyuangongzhong" id="guyuangongzhong1"></td>
    <td colspan="2">
    <input type="text" name="guyuanrenshu" id="guyuanrenshu1"></td>
    <td colspan="2">
    <input type="text" name="peichangsiwang" id="siwangshangcan1"></td>
    <td>
    <input type="text" name="peichangyiliao" id="yiliao1"></td>
  </tr>
  <tr>
    <td colspan="2">
    <input type="text" name="guyuangongzhong" id="guyuangongzhong2"></td>
    <td colspan="2">
    <input type="text" name="guyuanrenshu" id="guyuanrenshu2"></td>
    <td colspan="2">
    <input type="text" name="peichangsiwang" id="siwangshangcan2"></td>
    <td>
    <input type="text" name="peichangyiliao" id="yiliao2"></td>
  </tr>
  <tr>
    <td  colspan="2">
    <input type="text" name="guyuangongzhong" id="guyuangongzhong3"></td>
    <td colspan="2">
    <input type="text" name="guyuanrenshu" id="guyuanrenshu3"></td>
    <td colspan="2">
    <input type="text" name="peichangsiwang" id="siwangshangcan3"></td>
    <td>
    <input type="text" name="peichangyiliao" id="yiliao3"></td>
  </tr>
  <tr>
    <td colspan="2">
    <input type="text" name="guyuangongzhong" id="guyuangongzhong4"></td>
    <td colspan="2">
    <input type="text" name="guyuanrenshu" id="guyuanrenshu4"></td>
    <td colspan="2">
    <input type="text" name="peichangsiwang" id="siwangshangcan4"></td>
    <td>
    <input type="text" name="peichangyiliao" id="yiliao4"></td>
  </tr>
  <tr>
    <td  colspan="2">
    <input type="text" name="guyuangongzhong" id="guyuangongzhong5"></td>
    <td colspan="2">
    <input type="text" name="guyuanrenshu" id="guyuanrenshu5"></td>
    <td colspan="2">
    <input type="text" name="peichangsiwang" id="siwangshangcan5"></td>
    <td><label for="yiliao5"></label>
    <input type="text" name="peichangyiliao" id="yiliao5"></td>
  </tr>
  <tr>
    <td >保险费率</td>
    <td colspan="6" style="text-align:left">&nbsp;
    <input type="text" name="baoxianfeilv" id="baoxianfeilv" value="<%=feilv%>" readonly="readonly"></td>
  </tr>
  <tr>
    <td >保险费</td>
    <td colspan="6" style="text-align:left">&nbsp;
    <input type="text" name="baoxianfei" id="baoxianfei"></td>
  </tr>
  <tr>
    <td >附加条款</td>
    <td colspan="6" style="text-align:left">&nbsp;
    <input type="text" name="fujiatiaokuan" id="fujiatiaokuan"></td>
  </tr>
  <tr>
    <td >保险期间</td>
    <td colspan="6" style="text-align:left">&nbsp;
    <input type="text" class="Wdate" name="start_time" id="start_time" onClick="WdatePicker()">
    起止<input type="text" class="Wdate" name="end_time" id="end_time" onClick="WdatePicker()"></td>
  </tr>
  <tr>
    <td colspan="7"><p >&nbsp;每次事故免赔额/率：每次事故每人绝对免赔100元或损失金额的10%，两者以高者为准。 </p></td>
  </tr>
  <tr>
    <td >特别约定</td>
    <td colspan="6" style="text-align:left">&nbsp;
    <input type="text" name="tebieyueding" id="tebieyueding"></td>
  </tr>
  <tr>
    <td >付款日期</td>
    <td colspan="6" style="text-align:left">&nbsp;
    <input type="text" class="Wdate" name="fufeiriqi" id="fufeiriqi" onClick="WdatePicker()"></td>
  </tr>
  <tr>
    <td >司法管辖</td>
    <td colspan="6" style="text-align:left">&nbsp;
    <input type="text" name="sifaguanxia" id="sifaguanxia"></td>
  </tr>
  <tr>
    <td >争议处理</td>
    <td colspan="6" style="text-align:left">&nbsp;若投保人/被保险人与保险人发生争执，不能达成协议，被保险人自愿采取的解决方式：<br/>
        &nbsp;<input type="radio" name="zhengyichuli" value="susong" id="zhengyichuli_0">
        诉讼

      <label>
        <input type="radio" name="zhengyichuli" value="zhongcai" id="zhengyichuli_1">
       仲裁
       仲裁机构：<input type="text" name="zhongcaijigou" id="zhongcaijigou">
       </label></td>
  </tr>
  <tr>
    <td colspan="7"><p >保险人（保险公司）提示 </p>
    <p >请您仔细阅读保险条款，尤其是黑体字标注部分的条款内容，并听取保险公司业务人员的说明，如对保险公司业务人员的说明不明白或有异议的，请在填写本投保单之前向保险公司业务人员进行询问，如未询问，视同已经对条款内容完全理解并无异议。</p></td>
  </tr>
  <tr>
    <td colspan="7"><p >投保人声明 </p>
      <p >投保人及被保险人兹声明所填上述内容（包括投保单及投保附件）属实。 </p>
      <p >本人已经收悉并仔细阅读保险条款，尤其是黑体字部分的条款内容，并对保险公司就保险条款内容的说明和提示完全理解，没有异议，申请投保。 </p>
    <p >&nbsp;</p>
    <p >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;投保人签章：
    <input type="text" name="toubaorenqianzhang" id="toubaorenqianzhang">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;　　　　
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    投保日期：<input type="text" class="Wdate" name="toubaoriqi" id="toubaoriqi" onClick="WdatePicker()"></p></td>
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
	function checkForm(){
		
		var toubaorenmingcheng = document.getElementById("toubaorenmingcheng").value;
		var toubaorendizhi = document.getElementById("toubaorendizhi").value;
		var toubaorenlianxiren = document.getElementById("toubaorenlianxiren").value;
		var toubaorendianhua = document.getElementById("toubaorendianhua").value;
		var beibaoxianrenmingcheng = document.getElementById("beibaoxianrenmingcheng").value;
		var beibaoxianrendizhi = document.getElementById("beibaoxianrendizhi").value;
		//alert("-------");
		var yingyexingzhi = document.getElementById("yingyexingzhi").value;
		var beizuzhijigoudaima = document.getElementById("beizuzhijigoudaima").value;
		
		var tebieyueding = document.getElementById("tebieyueding").value;
		var sifaguanxia = document.getElementById("sifaguanxia").value;
		var toubaorenqianzhang = document.getElementById("toubaorenqianzhang").value;
		//alert("estsasdfalk");
		var baoxianfei = document.getElementById("baoxianfei").value;
		var start_time = document.getElementById("start_time").value;
		var end_time = document.getElementById("end_time").value;
		var fufeiriqi = document.getElementById("fufeiriqi").value;
		var toubaoriqi = document.getElementById("toubaoriqi").value;
		//alert("soga");
		if(isEmpty(toubaorenmingcheng)||isEmpty(toubaorendizhi)||isEmpty(toubaorenlianxiren)||isEmpty(toubaorendianhua)||
				isEmpty(beibaoxianrenmingcheng)||isEmpty(beibaoxianrendizhi)||isEmpty(yingyexingzhi)||
				isEmpty(beizuzhijigoudaima)||isEmpty(tebieyueding)
				||isEmpty(sifaguanxia)||isEmpty(toubaorenqianzhang)||isEmpty(baoxianfei)
				||isEmpty(start_time)||isEmpty(end_time)||isEmpty(fufeiriqi)
				||isEmpty(toubaoriqi)){
			alert("请将空格填满");
			return false;
		}
		if(isNaN(baoxianfei)){
			alert("保险费必须是数字");
			return false;
		}
		
		var canjiashehuibaoxian= document.getElementsByName("canjiashehuibaoxian");
		//alert("length  :"+canjiashehuibaoxian.length);
		var mark2 = false;
		for(var i=0;i<canjiashehuibaoxian.length;i++){
			
			if(canjiashehuibaoxian[i].checked){
				mark2 = true;
			}
				
		}
		if(!mark2){
			alert("是否参加社会(医疗、工伤）保险");
			return false;
		}
		
		var guyuangongzhongs = document.getElementsByName("guyuangongzhong");
		var guyuanrenshus = document.getElementsByName("guyuanrenshu");
		var peichangsiwangs = document.getElementsByName("peichangsiwang");
		var peichangyiliaos = document.getElementsByName("peichangyiliao");
		var mark1 = false;
		for(var i =0 ;i<guyuangongzhongs.length;i++){
			if(!isEmpty(guyuangongzhongs[i].value))
				mark1 = true;
		}
		if(!mark1){
			alert("请填写雇员工种数");
			return false;
		}
		for(var i=0;i<guyuangongzhongs.length;i++){
			if(!isEmpty(guyuangongzhongs[i].value)){
				if(isEmpty(guyuanrenshus[i].value)){
					alert("估计雇员人数没有填写完整");
					return false;
				}else if(isEmpty(peichangsiwangs[i].value)){
					alert("赔偿限额中的死亡、伤残没有填写完整");
					return false;
				}else if(isEmpty(peichangyiliaos[i].value)){
					alert("赔偿限额中的医疗没有填写完整");
					return false;
				}else if(isNaN(guyuanrenshus[i].value)){
					alert("估计雇员人数必须为数字");
					return false;
				}else if(isNaN(peichangsiwangs[i].value)){
					alert("赔偿限额中的死亡、伤残必须为数字");
					return false;
				}else if(isNaN(peichangyiliaos[i].value)){
					alert("赔偿限额中的医疗必须为数字");
					return false;
				}
			}
		}
		
		
		
		var zhengyichuli_ok = document.getElementsByName("zhengyichuli");
		var test = false;
		for(var i=0;i<zhengyichuli_ok.length;i++){
			if(zhengyichuli_ok[i].checked){
				test = true;
				if(zhengyichuli_ok[i].value=="zhongcai"){
					var zhongcaijigou = document.getElementById("zhongcaijigou").value;
					if(isEmpty(zhongcaijigou)){
						alert("仲裁机构不能为空");
						return false;
					}else{
						break;
					}
				}
				
			}
		}
		if(!test){
			alert("请选择争议处理方式");
			return false;
		}

	}
	</script>
</body>
</html>

