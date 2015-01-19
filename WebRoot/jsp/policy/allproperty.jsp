<!DOCTYPE html>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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


<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<!-- Title and other stuffs -->
<title>财产一切险投保单</title>
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
<style type="text/css">
table{
border-collapse:collapse;
border:1px;
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
					<li><a style="color:blue" class="open br-red"><i
							class="icon-home"></i>财产一切险投保单</a> <!-- Sub menu markup 
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

					<!-- Element AddAllPropertyServlet-->
					<div class="box-body" style="background:#CCDDFF;color:black">
						

<form name="baodan" action="<%=basePath %>servlet/AddAllPropertyServlet" method="get" onsubmit="return checkForm()">

		<table width="820" height="571" border="1">
  <caption>
    财产险投保单
  <br />
  <br /><p style="text-align:right">
  	投保单编号<label for="toubaodanbianhao"></label>
    <input type="text" name="toubaodanbianhao" id="toubaodanbianhao"></p>
  </caption>
  <tr>
    <td width="130" rowspan="2" scope="col" style="text-align:center">投保人</td>
    <td width="150" scope="col" style="text-align:right">名称</td>
    <td scope="col" width="150">
    &nbsp;<input type="text" name="toubaorenmingcheng" id="toubaorenmingcheng" ></td>
    <td width="150" scope="col" style="text-align:right">地址</td>
    <td colspan="2" scope="col">
    &nbsp;<input type="text" name="toubaorendizhi" id="toubaorendizhi"></td>
  </tr>
  <tr>
    <td style="text-align:right">联系人联系电话</td>
    <td>
    &nbsp;<input type="text" name="toubaorendianhua" id="toubaorendianhua"></td>
    <td style="text-align:right">组织机构代码</td>
    <td colspan="2">
    &nbsp;<input type="text" name="toubaorenzuzhijigou" id="toubaorenzuzhijigou"></td>
  </tr>
  <tr>
    <td rowspan="2" style="text-align:center">被保险人</td>
    <td style="text-align:right">名称</td>
    <td>
    &nbsp;<input type="text" name="beibaoxianrenmingcheng" id="beibaoxianrenmingcheng"></td>
    <td style="text-align:right">地址</td>
    <td width="197" colspan="2">
    &nbsp;<input type="text" name="beibaoxianrendizhi" id="beibaoxianrendizhi"></td>
  </tr>
  <tr>
    <td style="text-align:right">营业性质</td>
    <td>
    &nbsp;<input type="text" name="beibaoxianrenyingyexingzhi" id="beibaoxianrenyingyexingzhi"></td>
    <td style="text-align:right">组织机构代码</td>
    <td colspan="2">
    &nbsp;<input type="text" name="beibaoxianrenzuzhijigou" id="beibaoxianrenzuzhijigou"></td>
  </tr>
  <tr>
    <td colspan="2" style="text-align:right">保险财产地址</td>
    <td><label for="baoxiancaichandizhi"></label>
    &nbsp;<input type="text" name="baoxiancaichandizhi" id="baoxiancaichandizhi"></td>
    <td style="text-align:right">邮政编码</td>
    <td colspan="2"><label for="youzhengbianma"></label>
    &nbsp;<input type="text" name="youzhengbianma" id="youzhengbianma"></td>
  </tr>
  <tr style="text-align:center">
    <td rowspan="6">保险标的</td>
    <td height="59" >承保标的项目</td>
    <td>险种</td>
    <td>保险金额</td>
    <td>费率(‰)</td>
    <td>保险费</td>
  </tr>
  <tr>
   <td height="23">房屋建筑物</td>
    <td rowspan="4" style="text-align:center"><p>财产基本险</p>
    <p>财产综合险</p>
    <p>财产一切险</p></td>
    <td>&nbsp;
    <input type="text" name="fangwujine" id="fangwujine"></td>
    <td rowspan="4" style="text-align:center">
    <input type="text" name="feilv" id="feilv" value="<%=feilv %>" readonly="readonly" style="width:50px"></td>
    <td rowspan="4" style="text-align:center">
    <input type="text" name="baoxianfei" id="baoxianfei"></td>
  </tr>
  <tr>
    <td>机器设备</td>
    <td>&nbsp;
    <input type="text" name="jiqishebeijine" id="jiqishebeijine"></td>
  </tr>
  <tr>
    <td>存货</td>
    <td>&nbsp;
    <input type="text" name="cunhuojine" id="cunhuojine"></td>
  </tr>
  <tr>
    <td>其他</td>
    <td>&nbsp;
    <input type="text" name="qitajine" id="qitajine"></td>
  </tr>
  <tr>
    <td>保险金额小计</td>
    <td colspan="4">（大写）&nbsp;
    <input type="text" name="baoxianjinexiaoji" id="baoxianjinexiaoji"></td>
  </tr>
  <tr>
    <td style="text-align:center">免赔设定</td>
    <td colspan="5">1000元或损失金额的10%，以高者为准。</td>
  </tr>
  <tr>
    <td style="text-align:center">保险期间</td>
    <td colspan="5">&nbsp;<input class="Wdate" type="text" name="start_time" id="start_time" onClick="WdatePicker()">
    起止<input class="Wdate" type="text" name="end_time" id="end_time" onClick="WdatePicker()"></td>
  </tr>
  <tr>
    <td style="text-align:center">保险费</td>
    <td colspan="5">(大写)
    &nbsp;<input type="text" name="baoxianfeichina" id="baoxianfeichina"></td>
  </tr>
  <tr>
    <td style="text-align:center">缴费时间/方式</td>
    <td colspan="5">&nbsp;&nbsp;<input type="text" name="jiaofeishijian" id="jiaofeishijian"></td>
  </tr>
  <tr>
    <td style="text-align:center">附加条款</td>
    <td colspan="5">&nbsp;
    <input type="text" name="fujiatiaokuan" id="fujiatiaokuan"></td>
  </tr>
  <tr>
    <td style="text-align:center">特别约定</td>
    <td colspan="5">&nbsp;
    <input type="text" name="tebieyueding" id="tebieyueding" style="width:80%"></td>
  </tr>
  <tr>
    <td style="text-align:center">争议处理</td>
    <td colspan="5">若投保人/被保险人与保险人发生争执，不能达成协议，被保险人自愿采取的解决方式：<br/>
     <label>
        <input type="radio" name="zhengyichuli" value="susong" id="zhengyichuli_0">
        诉讼</label>

      <label>
        <input type="radio" name="zhengyichuli" value="zhongcai" id="zhengyichuli_1">
       仲裁
       仲裁机构：<input type="text" name="zhongcaijigou" id="zhongcaijigou">
       </label>
    </td>
  </tr>
  <tr>
    <td style="text-align:center">投保附件</td>
    <td colspan="5"><label>
        <input type="checkbox" name="toubaofujian" value="caicanjine" id="toubaofujian_0">
        财产金额明细表</label>
      <label>
        <input type="checkbox" name="toubaofujian" value="zichanfuzai" id="toubaofujian_1">
       资产负债表</label>
       <label>
        <input type="checkbox" name="toubaofujian" value="fengxianpinggu" id="toubaofujian_2">
       风险评估表</label>
       <label>
        <input type="checkbox" name="toubaofujian" value="qita" id="toubaofujian_3">
      其他	<input type="text" name="qita" id="toubaofujian_4">
      </label>&nbsp;&nbsp;&nbsp;
      共&nbsp;<input type="text" name="toubaofujianshuliang" id="toubaofujianshuliang" style="width:50px"/>&nbsp;份
    </td>
  </tr>
  <tr>
   <tr>
    <td rowspan="3" style="text-align:center">相关保险情况</td>
    <td colspan="6">
    <p>以下内容请投保人如实填写，此内容将影响我司承保和理赔结果</p>
    <p>投保人是否曾在财产保险股份有限公司投保过类似险种：
    <label>
        <input type="radio" name="shifoutouguo" value="shi" id="leisixianzhong_1">
       是</label>
       <label>
        <input type="radio" name="shifoutouguo" value="fou" id="leisixianzhong_2">
       否</label>
    </p>
    <p>
    如是，请注明保险单号<input type="text" name="baoxiandanhao" id="baoxiandanhao">
    </p>
    <p>
    被保险人过去三年有无理赔记录：
    <label>
        <input type="radio" name="lipeijilu" value="you" id="lipeijilu_1">
      有。如有，请填写下表</label>
       <label>
        <input type="radio" name="lipeijilu" value="wu" id="lipeijilu_2">
       无</label>
    </p>
    </td>
  </tr>
  <tr style="text-align:center;">
    <td>出险时间</td>
    <td>损失金额</td>
    <td colspan="2" >出险原因</td>
    <td colspan="2" >改进措施</td>
  </tr>
  <tr style="text-align:center;">
    <td >
    <input class="Wdate" type="text" name="chuxianshijian" id="chuxianshijian" onClick="WdatePicker()"></td>
    <td>
    <input type="text" name="sunshijine" id="sunshijine"></td>
    <td colspan="2">
    <input type="text" name="chuxianyuanyin" id="chuxianyuanyin"></td>
    <td colspan="2">
    <input type="text" name="gaijincuoshi" id="gaijincuoshi"></td>
  </tr>
  <tr>
    <td colspan="6"><div style="text-align:center;font-weight:bold"> 保险人（保险公司）提示
    <p >本投保单为财产一切险保险合同的组成部分。请您仔细阅读保险条款，尤其是黑体字标注部分的条款内容，并听取保险公司业务人员的说明，
    如对保险公司业务人员的说明不明白或有异议的，请在填写本投保单之前向保险公司业务人员进行询问，如未询问，视同已经对条款内容完全理解并无异议。</p> </div></td>
  </tr>
  <tr>
    <td colspan="6"><div style="font-weight:bold"><p style="text-align:center;">投保人声明 </p>
      <p >投保人及被保险人兹声明所填上述内容（包括投保单及投保附件）属实。 </p>
      <p >本人已经收悉并仔细阅读保险条款，尤其是黑体字部分的条款内容，并对保险公司就保险条款内容的说明和提示完全理解，没有异议，申请投保。 </p>
      <p >&nbsp;</p></div>
    <p style="text-align:center;font-weight:bold" >
    投保人签章：<input type="text" name="toubaorenqianzhang" id="toubaorenqianzhang">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    投保日期：<input class="Wdate" type="text" name="toubaoriqi" id="toubaoriqi" onClick="WdatePicker()"></p></td>
  </tr>
  <tr>
    <td colspan="10" align="center">&nbsp;<input type="submit" value="提交保单" /></td>
  </tr>
</table>
	</form>

						
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
	<!-- date picker -->
	<script src="<%=basePath %>js/My97DatePicker/WdatePicker.js"></script>
	<script type="text/javascript">
	function isEmpty(str){
		if(str==null || str.trim().length==0)
			return true;
		else 
			return false;
	}
	
	
	
	function checkForm(){
		//alert("test");
		var toubaorenmingcheng = document.getElementById("toubaorenmingcheng").value;
		
		var toubaorendizhi = document.getElementById("toubaorendizhi").value;
		var toubaorendianhua = document.getElementById("toubaorendianhua").value;
		
		var toubaorenzuzhijigou = document.getElementById("toubaorenzuzhijigou").value;
		
		var beibaoxianrenmingcheng = document.getElementById("beibaoxianrenmingcheng").value;
		
		var beibaoxianrendizhi = document.getElementById("beibaoxianrendizhi").value;
		var beibaoxianrenyingyexingzhi = document.getElementById("beibaoxianrenyingyexingzhi").value;
		var baoxiancaichandizhi = document.getElementById("baoxiancaichandizhi").value;
		var youzhengbianma = document.getElementById("youzhengbianma").value;
		var fangwujine = document.getElementById("fangwujine").value;
		var jiqishebeijine = document.getElementById("jiqishebeijine").value;
		var qitajine = document.getElementById("qitajine").value;
		var cunhuojine = document.getElementById("cunhuojine").value;
		
		
		
		var baoxianfei = document.getElementById("baoxianfei").value;
		
		var baoxianjinexiaoji = document.getElementById("baoxianjinexiaoji").value;
		//var jiaofeifangshi = document.getElementById("jiaofeifangshi").value;
		var fujiatiaokuan = document.getElementById("fujiatiaokuan").value;
		var tebieyueding = document.getElementById("tebieyueding").value;
		
		//var toubaofujianshuliang = document.getElementById("toubaofujianshuliang").value;
		var toubaorenqianzhang = document.getElementById("toubaorenqianzhang").value;
		var baoxianfeichina = document.getElementById("baoxianfeichina").value;
		var start_time = document.getElementById("start_time").value;
		var end_time = document.getElementById("end_time").value;
		var jiaofeishijian= document.getElementById("jiaofeishijian").value;
		var toubaoriqi = document.getElementById("toubaoriqi").value;

		//alert("test");
		//alert(toubaorenmingcheng);
		if(isEmpty(toubaorenmingcheng)||isEmpty(toubaorendizhi)||isEmpty(toubaorendianhua)
				||isEmpty(toubaorenzuzhijigou)||isEmpty(beibaoxianrenmingcheng)||isEmpty(beibaoxianrendizhi)
				||isEmpty(beibaoxianrenyingyexingzhi)||isEmpty(baoxiancaichandizhi)||isEmpty(youzhengbianma)
				||isEmpty(fangwujine)||isEmpty(jiqishebeijine)||isEmpty(qitajine)
				||isEmpty(cunhuojine)||isEmpty(baoxianfei)||isEmpty(baoxianjinexiaoji)
				||isEmpty(fujiatiaokuan)||isEmpty(tebieyueding)
				||isEmpty(toubaorenqianzhang)||isEmpty(baoxianfeichina)
				||isEmpty(start_time)||isEmpty(end_time)||isEmpty(jiaofeishijian)||isEmpty(toubaoriqi)){
			alert("请将必填项填写完整!");
			return false;
		}
		
		if(isNaN(fangwujine)){
			alert("房屋建筑物保险金额必须为数字");
			return false;
		}else if(isNaN(jiqishebeijine)){
			alert("机器设备保险金额必须为数字");
			return false;
		}else if(isNaN(qitajine)){
			alert("其他保险金额必须为数字");
			return false;
		}else if(isNaN(cunhuojine)){
			alert("存货保险金额必须为数字");
			return false;
		}
		
		if(isNaN(baoxianfei)){
			alert("保险费必须是数字");
			return false;
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

		
		
		var toubaofujians = document.getElementsByName("toubaofujian");
		var mark = false;//用户是否选择了投保附件
		for(var i=0;i<toubaofujians.length;i++){
			if(toubaofujians[i].checked){
				mark = true;
				break;
			}
		}
		//只要有一个投保附件被选中，mark为true
		if(mark){
			var toubaofujianshuliang = document.getElementById("toubaofujianshuliang").value;
			if(isEmpty(toubaofujianshuliang)){
				alert("请填写投保附件数量");
				return false;
			}else if(isNaN(toubaofujianshuliang)){
				alert("投保附件数量必须为数字");
				return false;
			}
		}
		//如果其他被选中，则需要填写其他附件
		if(toubaofujians[3].checked){
			var qita = document.getElementById("toubaofujian_4").value;
			
			if(isEmpty(qita)){
				alert("其他附件需要填写！");
				return false;
			}
			
		}
		
		var shifoutouguo = document.getElementsByName("shifoutouguo");
		var test2 = false;
		for(var i=0;i<shifoutouguo.length;i++){
			if(shifoutouguo[i].checked){
				test2 = true;
				if(shifoutouguo[i].value=="shi"){
					var baoxiandanhao = document.getElementById("baoxiandanhao").value;
					if(isEmpty(baoxiandanhao)){
						alert("保险单号不能为空");
						return false;
					}else{
						break;
					}
				}
				
			}
		}
		if(!test2){
			alert("请填写是否投保过类似险种！");
			return false;
		}
		
		var lipeijilu = document.getElementsByName("lipeijilu");
		
		var test3 = false;
		for(var i=0;i<lipeijilu.length;i++){
			if(lipeijilu[i].checked){
				test3 = true;
				if(lipeijilu[i].value=="you"){
					var chuxianshijian = document.getElementById("chuxianshijian").value;
					var sunshijine = document.getElementById("sunshijine").value;
					var chuxianyuanyin = document.getElementById("chuxianyuanyin").value;
					var gaijincuoshi = document.getElementById("gaijincuoshi").value;
					if(isEmpty(chuxianshijian)||isEmpty(sunshijine)||isEmpty(chuxianyuanyin)||isEmpty(gaijincuoshi)){
						alert("请将理赔记录填写完整！");
						return false;
					}else if(isNaN(sunshijine)){
						alert("损失金额必须是数字！");
						return false;
					}
					else{
						break;
					}
				}
				
			}
		}
		if(!test3){
			alert("请填写是否有过理赔记录！");
			return false;
		}
		
		
		document.charset='utf-8';
		
	}
	
	
	
	
	
	
	</script>
	<!-- Main js file -->
</body>
</html>