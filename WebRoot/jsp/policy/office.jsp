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
<title>办公室综合保险投保单</title>
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
width:720;
height:673;
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
							class="icon-home"></i>办公室综合保险投保单</a> <!-- Sub menu markup 
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
						
<form name="baodan" action="<%=basePath %>servlet/AddOfficeServlet" method="get" onsubmit="return checkForm()">

		<table>
  <caption>
    办公室综合保险
  <br />
  (投保单)
  <br />
  </caption>
  <tr>
    <td width="198" style="text-align:right">投保人/被保险人名称:</td>
    <td colspan="5">
    &nbsp;&nbsp;<input type="text" name="toubaorenmingcheng" id="toubaorenmingcheng"></td>
  </tr>
  <tr>
    <td style="text-align:right">投保人/被保险人地址:</td>
    <td colspan="5">
    &nbsp;&nbsp;<input type="text" name="toubaorendizhi" id="toubaorendizhi"></td>
  </tr>
  <tr>
    <td style="text-align:right">联系人/联系方式:</td>
    <td colspan="5">
    &nbsp;&nbsp;<input type="text" name="lianxiren" id="lianxiren"></td>
  </tr>
  <tr>
    <td colspan="6" style="text-align:center">办公室综合保险保单内容</td>
  </tr>
  <tr>
    <td colspan="2" rowspan="2" style="text-align:center">财产损失保险</td>
    <td colspan="4" style="text-align:center">意外伤害险</td>
  </tr>
  <tr>
    <td colspan="2" style="text-align:center">团体意外伤害保险(5人以下)</td>
    <td colspan="2" style="text-align:center">公司高层差旅意外保险(2人)</td>
  </tr>
  <tr>
    <td colspan="2"><p >火灾、爆炸，雷击、暴雨等自然灾害；自动喷淋系统故障、管道爆裂；盗抢行为；第三者恶意破坏；因自然灾害、超电压造成计算机财产损失；施救费用。</p>      <p >&nbsp;</p></td>
    <td colspan="2"><p >被保险人遭受意外伤害导致死亡、残疾或烧伤； </p>
    <p >遭受意外伤害的医疗费用。</p></td>
    <td colspan="2"><p >被保险人在乘坐飞机、轮船、火车（含地铁、轻轨）时，遭受意外伤害导致的死亡、残疾。</p></td>
  </tr>
  <tr>
    <td colspan="2"><p >财产损失总保险金额人民币20万元</p>
      <p >其中： </p>
      <p >室内装潢：<br/>
    &nbsp;&nbsp;<input type="text" name="shineizhuanghuang" id="shineizhuanghuang">
    </p>
      <p >办公家具及非消耗性用品用具：<br/>
    &nbsp;&nbsp;<input type="text" name="bangongjiaju" id="bangongjiaju">
    </p>
    <p >办公用电子电器和计算机设备：<br/>
    &nbsp;&nbsp;<input type="text" name="bangongdianzi" id="bangongdianzi"></p></td>
    <td colspan="2"><p >意外伤害身故累计赔偿限额15万元</p>
      <p >3万元/人      </p>
      <p >意外医疗累计赔偿限额：6万元； </p>
      <p >6千元/人 </p>
    <p style="color:red">另：出纳人员携带现金往返银行途中遭盗抢人身伤亡20万</p></td>
    <td colspan="2"><p >飞机：赔偿限额40万元； </p>
      <p >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;20万元/人； </p>
      <p >其它交通工具：赔偿限额10万元； </p>
    <p >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5万元/人。</p></td>
  </tr>
  <tr>
    <td colspan="6" style="text-align:center">保费合计 450元人民币</td>
  </tr>
  <tr>
    <td colspan="6"><p >1、财产损失险增加财产保额
    <input type="text" name="caichansunshixianadd" id="caichansunshixianadd" onblur="setCaichanBaofei()">万，保费增加
    <input type="text" name="caichansunshixianaddbaoe" id="caichansunshixianaddbaoe">元。（10元/万元） </p>
    <p >2、团体意外伤害险增加
    <input type="text" name="tuantiyiwaixianzengjiarenshu" id="tuantiyiwaixianzengjiarenshu" onblur="setTuantiBaofei()">
    人，保费增加
    <input type="text" name="tuantiyiwaixianzengjiabaofei" id="tuantiyiwaixianzengjiabaofei">元。（40元/人）</p></td>
  </tr>
  <tr>
  <td>总保费</td>
    <td colspan="6">&nbsp;&nbsp;<input type="text" name="zongbaofei" id="zongbaofei" onfocus="setZongbaofei()" />&nbsp;元</td>
  </tr>
  <tr>
    <td colspan="6"><p >声明：投保人已详细阅读以上保单内容。 </p>
      <p style="text-align:center">投保人签章: <label for="toubaorenqianzhang"></label>
    <input type="text" name="toubaorenqianzhang" id="toubaorenqianzhang">
    </p>
    <p style="text-align:center">&nbsp;&nbsp;<label for="toubaoriqi">投保日期:</label>
    <input type="text" class="Wdate" name="toubaoriqi" id="toubaoriqi" onClick="WdatePicker()">
</p></td>
  </tr>
</table>
<br/>
<table width="720" height="591" border="1">
<caption style="text-align:center">
    附表：团体意外伤害险、高层差旅意外伤害险人员明细表
  </caption>
  <tr>
    <td colspan="2">险别</td>
    <td>序号</td>
    <td colspan="2">姓名</td>
    <td colspan="2">身份证号</td>
  </tr>
  <tr>
    <td colspan="2" rowspan="10">团体意外伤害</td>
    <td style="text-align:center">1</td>
    <td colspan="2">&nbsp;&nbsp;
    <input type="text" name="tuantixingming" id="tuantixingming1"></td>
    <td colspan="2">&nbsp;&nbsp;
    <input type="text" name="tuantishenfenzheng" id="tuandishenfenzheng1"></td>
  </tr>
  <tr>
    <td style="text-align:center">2</td>
    <td colspan="2">&nbsp;&nbsp;
    <input type="text" name="tuantixingming" id="tuantixingming2"></td>
    <td colspan="2">&nbsp;&nbsp;
    <input type="text" name="tuantishenfenzheng" id="tuandishenfenzheng2"></td>
  </tr>
  <tr>
    <td style="text-align:center">3</td>
    <td colspan="2">&nbsp;&nbsp;
    <input type="text" name="tuantixingming" id="tuantixingming3"></td>
    <td colspan="2">&nbsp;&nbsp;
    <input type="text" name="tuantishenfenzheng" id="tuandishenfenzheng3"></td>
  </tr>
  <tr>
    <td style="text-align:center">4</td>
    <td colspan="2">&nbsp;&nbsp;
    <input type="text" name="tuantixingming" id="tuantixingming4"></td>
    <td colspan="2">&nbsp;&nbsp;
    <input type="text" name="tuantishenfenzheng" id="tuandishenfenzheng4"></td>
  </tr>
  <tr>
    <td style="text-align:center">5</td>
    <td colspan="2">&nbsp;&nbsp;
    <input type="text" name="tuantixingming" id="tuantixingming5"></td>
    <td colspan="2">&nbsp;&nbsp;
    <input type="text" name="tuantishenfenzheng" id="tuandishenfenzheng5"></td>
  </tr>
  <tr>
    <td style="text-align:center">6</td>
    <td colspan="2">&nbsp;&nbsp;
    <input type="text" name="tuantixingming" id="tuantixingming6"></td>
    <td colspan="2">&nbsp;&nbsp;
    <input type="text" name="tuantishenfenzheng" id="tuandishenfenzheng6"></td>
  </tr>
  <tr>
    <td style="text-align:center">7</td>
    <td colspan="2">&nbsp;&nbsp;
    <input type="text" name="tuantixingming" id="tuantixingming7"></td>
    <td colspan="2">&nbsp;&nbsp;
    <input type="text" name="tuantishenfenzheng" id="tuandishenfenzheng7"></td>
  </tr>
  <tr>
    <td style="text-align:center">8</td>
    <td colspan="2">&nbsp;&nbsp;
    <input type="text" name="tuantixingming" id="tuantixingming8"></td>
    <td colspan="2">&nbsp;&nbsp;
    <input type="text" name="tuantishenfenzheng" id="tuandishenfenzheng8"></td>
  </tr>
  <tr>
    <td style="text-align:center">9</td>
    <td colspan="2">&nbsp;&nbsp;
    <input type="text" name="tuantixingming" id="tuantixingming9"></td>
    <td colspan="2">&nbsp;&nbsp;
    <input type="text" name="tuantishenfenzheng" id="tuandishenfenzheng9"></td>
  </tr>
  <tr>
    <td style="text-align:center">10</td>
    <td colspan="2">&nbsp;&nbsp;
    <input type="text" name="tuantixingming" id="tuantixingming10"></td>
    <td colspan="2">&nbsp;&nbsp;
    <input type="text" name="tuantishenfenzheng" id="tuandishenfenzheng10"></td>
  </tr>
  <tr>
    <td colspan="2" rowspan="2">高层差旅意外伤害</td>
    <td style="text-align:center">1</td>
    <td colspan="2">&nbsp;&nbsp;
    <input type="text" name="gaocengxingming" id="gaocengxingming1"></td>
    <td colspan="2">&nbsp;&nbsp;
    <input type="text" name="gaocengshenfenzheng" id="gaocengshenfenzheng1"></td>
  </tr>
  <tr>
    <td style="text-align:center">2</td>
    <td colspan="2">&nbsp;&nbsp;
    <input type="text" name="gaocengxingming" id="gaocengxingming2"></td>
    <td colspan="2">&nbsp;&nbsp;
    <input type="text" name="gaocengshenfenzheng" id="gaocengshenfenzheng2"></td>
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
	//根据增加的保额计算增加的保费
	function setCaichanBaofei(){
		var caichansunshixianadd = document.getElementById("caichansunshixianadd").value;
		if(!isEmpty(caichansunshixianadd)&&!isNaN(caichansunshixianadd)){
			var doubleadd = parseFloat(caichansunshixianadd);
			var result = doubleadd*10;
			document.getElementById("caichansunshixianaddbaoe").value = result;
		}
	}
	//根据增加的人数计算增加的保费
	function setTuantiBaofei(){
		var tuantiyiwaixianzengjiarenshu = document.getElementById("tuantiyiwaixianzengjiarenshu").value;
		if(!isEmpty(tuantiyiwaixianzengjiarenshu)&&!isNaN(tuantiyiwaixianzengjiarenshu)){
			var intadd = parseFloat(tuantiyiwaixianzengjiarenshu);
			var result = intadd*40;
			document.getElementById("tuantiyiwaixianzengjiabaofei").value = result;
		}
	}
	//设置总保费
	function setZongbaofei(){
		var caichansunshixianaddbaoe = document.getElementById("caichansunshixianaddbaoe").value;
		var tuantiyiwaixianzengjiabaofei = document.getElementById("tuantiyiwaixianzengjiabaofei").value;
		if(!isEmpty(caichansunshixianaddbaoe)&&!isEmpty(tuantiyiwaixianzengjiabaofei)
				&&!isNaN(caichansunshixianaddbaoe)&&!isNaN(tuantiyiwaixianzengjiabaofei)){
			var zongbaofei = caichansunshixianaddbaoe*1 + tuantiyiwaixianzengjiabaofei*1 + 450;//450是必须的保费
			document.getElementById("zongbaofei").value = zongbaofei;
		}
	}
	
	function checkForm(){
		var toubaorenmingcheng = document.getElementById("toubaorenmingcheng").value;
		var toubaorendizhi = document.getElementById("toubaorendizhi").value;
		var lianxiren = document.getElementById("lianxiren").value;
		//alert("tset0");
		var caichansunshixianadd = document.getElementById("caichansunshixianadd").value;
		var caichansunshixianaddbaoe = document.getElementById("caichansunshixianaddbaoe").value;
		var tuantiyiwaixianzengjiabaofei = document.getElementById("tuantiyiwaixianzengjiabaofei").value;
		var zongbaofei = document.getElementById("zongbaofei").value;
		//alert("tset1");
		var shineizhuanghuang =document.getElementById("shineizhuanghuang").value;
		var bangongjiaju = document.getElementById("bangongjiaju").value;
		var bangongdianzi = document.getElementById("bangongdianzi").value;
		//alert("tset2");
		var tuantiyiwaixianzengjiarenshu = document.getElementById("tuantiyiwaixianzengjiarenshu").value;
		var toubaorenqianzhang = document.getElementById("toubaorenqianzhang").value;
		var toubaoriqi = document.getElementById("toubaoriqi").value;
		//alert("tset3");
		if(isEmpty(toubaorenmingcheng)||isEmpty(toubaorendizhi)||isEmpty(lianxiren)||
				isEmpty(caichansunshixianadd)||isEmpty(caichansunshixianaddbaoe)||
				isEmpty(tuantiyiwaixianzengjiabaofei)||isEmpty(tuantiyiwaixianzengjiarenshu)||
				isEmpty(zongbaofei)||isEmpty(shineizhuanghuang)||isEmpty(bangongjiaju)||
				isEmpty(bangongdianzi)||isEmpty(toubaorenqianzhang)||isEmpty(toubaoriqi)){
			alert("请将选项填写完整");
			return false;
		}
		if(isNaN(shineizhuanghuang)){
			alert("室内装潢必须是数字");
			return false;
		}
		if(isNaN(bangongjiaju)){
			alert("办公家具及非消耗性用品用具必须是数字");
			return false;
		}
		if(isNaN(bangongdianzi)){
			alert("办公用电子电器和计算机设备必须是数字");
			return false;
		}
		if(isNaN(caichansunshixianadd)){
			alert("财产损失险增加财产保额必须是数字");
			return false;
		}
		if(isNaN(caichansunshixianaddbaoe)){
			alert("财产损失险增加财产保费必须是数字");
			return false;
		}
		if(isNaN(tuantiyiwaixianzengjiarenshu)){
			alert("团体意外伤害险增加人数必须为数字");
			return false;
		}
		if(isNaN(tuantiyiwaixianzengjiabaofei)){
			alert("团体意外伤害险增加保费必须为数字");
			return false;
		}
		if(isNaN(zongbaofei)){
			alert("总保费必须为数字");
			return false;
		}
		//alert('teaest');
		var tuantixingming = document.getElementsByName("tuantixingming");
		var tuantishenfenzheng = document.getElementsByName("tuantishenfenzheng");
		var mark1 = false;
		for(var i=0;i<tuantixingming.length;i++){
			if(!isEmpty(tuantixingming[i].value)){
				mark1 = true;//表格不为空
			}
		}
		//alert(mark1);
		if(!mark1){
			alert("请填写团体意外伤害表信息");
			return false;
		}
		for(var i=0;i<tuantixingming.length;i++){
			if(!isEmpty(tuantixingming[i].value)&&isEmpty(tuantishenfenzheng[i].value)){//只要填写了姓名，就必须填写身份证号码
				alert("请将团体身份证号码填写完全");
				return false;
			}
		}
		//检查团体身份证号码合法性
		for(var i=0;i<tuantishenfenzheng.length;i++){
			var temp = tuantishenfenzheng[i].value.length;
			if(temp>0&&temp<18){
				alert("团体表身份证长度不合法,身份证号码长度为18位");
				return false;
			}
		}
		var gaocengxingming = document.getElementsByName("gaocengxingming");
		var gaocengshenfenzheng = document.getElementsByName("gaocengshenfenzheng");
		var mark2 = false;
		for(var i=0;i<gaocengxingming.length;i++){
			if(!isEmpty(gaocengxingming[i].value)){
				mark2 = true;//高层差旅意外伤害表格不为空
			}
		}
		if(!mark2){
			alert("高层差旅意外伤害表信息");
			return false;
		}
		
		for(var i=0;i<gaocengxingming.length;i++){
			if(!isEmpty(gaocengxingming[i].value)&&isEmpty(gaocengshenfenzheng[i].value)){//只要填写了姓名，就必须填写身份证号码
				alert("请将高层身份证号码填写完全");
				return false;
			}
		}
		
		//检查高层身份证号码合法性
		for(var i=0;i<gaocengshenfenzheng.length;i++){
			var temp = gaocengshenfenzheng[i].value.length;
			if(temp>0&&temp<18){
				alert("高层表身份证长度不合法,身份证号码长度为18位");
				return false;
			}
		}
}

	</script>
</body>
</html>

