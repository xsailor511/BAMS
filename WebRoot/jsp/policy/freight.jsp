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
<title>货运险投保单</title>
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
							class="icon-home"></i>货运险投保单</a> <!-- Sub menu markup 
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
						

<form name="baodan" action="<%=basePath %>servlet/AddFreightServlet" method="get" onsubmit="return checkForm()">

		<table width="820" height="530" border="1">
  <caption>
    货物运输保险投保单
  <br />
  APPLICATION FOR CARGO TRANSPORTATION INSURANCE<br />
  </caption>
  <tr>
    <td colspan="7" rowspan="3" >&nbsp;</td>
    <td colspan="2">FAX</td>
  </tr>
  <tr>
    
    <td width="150">From</td>
    <td width="210">&nbsp;
    <input type="text" name="fax_from" id="fax_from"></td>
  </tr>
  <tr>
    <td>To</td>
    <td>&nbsp;
    <input type="text" name="fax_to" id="fax_to"></td>
  </tr>
  <tr>
    <td colspan="2" style="width:150px"><p>被保险人</p>
    <p>INSURED</p></td>
    <td colspan="7">&nbsp;
    <input type="text" name="beibaoxianren" id="beibaoxianren"></td>
  </tr>
  <tr>
    <td colspan="2"><p>发票号</p>
    <p>INVOICE NO.</p></td>
    <td colspan="3">&nbsp;
    <input type="text" name="fapiaohao" id="fapiaohao"></td>
    <td colspan="2"><p>发票日期</p>
    <p>INVOICE DATE</p></td>
    <td colspan="2">&nbsp;<input type="text" class="Wdate" name="fapiaoriqi" id="fapiaoriqi" onClick="WdatePicker()"></td>
  </tr>
  <tr>
    <td colspan="2"><p>进口合同号</p>
    <p>IMP.CONTRACT NO. </p></td>
    <td colspan="3">&nbsp;
    <input type="text" name="jinkouhetonghao" id="jinkouhetonghao"></td>
    <td colspan="2"><p>信用证号</p>
    <p>L/C NO.</p></td>
    <td colspan="2">&nbsp;
    <input type="text" name="xinyongzhenghao" id="xinyongzhenghao" style="width:80%"></td>
  </tr>
  <tr>
    <td colspan="2"><p>包装数量&nbsp;QUANTITY:</p></td>
    <td colspan="5">&nbsp;
    <input type="text" name="baozhuangshuliang" id="baozhuangshuliang"></td>
    <td rowspan="2"><p>标记</p>
    <p>MARK&amp;NOS.</p></td>
    <td rowspan="2">&nbsp;
    <input type="text" name="biaoji" id="biaoji"></td>
  </tr>
  
  <tr>
  <td colspan="2">
    <p>保险货物名称</p>
    <p>&nbsp;DESCRIPTION&nbsp;OF&nbsp;GOODS</p></td>
    <td colspan="5">&nbsp;
    <input type="text" name="baoxianhuowumingcheng" id="baoxianhuowumingcheng"></td>
   
    
  </tr>
  <tr>
    <td colspan="2"><p>价格条件</p>
    <p>PRICE TERMS</p></td>
    <td colspan="3">&nbsp;
    <input type="text" name="jiagetiaojian" id="jiagetiaojian"></td>
    <td colspan="2" rowspan="2"><p>保险金额</p>
    <p>AMOUNT INSURED</p></td>
    <td colspan="2" rowspan="2">&nbsp;
    <input type="text" name="baoxianjine" id="baoxianjine"></td>
  </tr>
  <tr>
    <td colspan="2"><p>发票金额</p>
    <p>INVOICE VALUE</p></td>
    <td colspan="3">&nbsp;
    <input type="text" name="fapiaojine" id="fapiaojine"></td>
  </tr>
  <tr>
    <td colspan="2"><p>费率‰</p>
    <p>INSURANCE RATE</p></td>
    <td colspan="3">&nbsp;
    <input type="text" name="feilv" id="feilv" value="<%=feilv %>" readonly="readonly"/></td>
    <td colspan="2">保险费</td>
    <td colspan="2">&nbsp;
    <input type="text" name="baoxianfei" id="baoxianfei"></td>
  </tr>
  <tr>
    <td colspan="2"><p>船名</p>
    <p>VESSEL.NAME</p></td>
    <td colspan="4">&nbsp;
    <input type="text" name="chuanming" id="chuanming"></td>
    <td colspan="2" rowspan="2"><p>启运日期</p>
    <p>DATE OF COMMENCEMENT</p></td>
    <td rowspan="2">&nbsp;<input type="text" class="Wdate" name="qiyunriqi" id="qiyunriqi" onClick="WdatePicker()"></td>
  </tr>
  <tr>
    <td width="160"><p>建造年份</p>
    <p>YEAR OF BULLT</p></td>
    <td width="149">&nbsp;
    <input type="text" name="jianzaonianfen" id="jianzaonianfen"></td>
    <td width="181"><p>船旗</p>
    <p>FLAG</p></td>
    <td colspan="3">&nbsp;
    <input type="text" name="chuanqi" id="chuanqi"></td>
  </tr>
  <tr>
    <td><p>起运港</p>
    <p>FROM</p></td>
    <td colspan="2">&nbsp;
    <input type="text" name="qiyungang" id="qiyungang"></td>
    <td width="85"><p>经由</p>
    <p>VIA</p></td>
    <td colspan="3">&nbsp;
    <input type="text" name="via" id="via"></td>
    <td><p>目的港</p>
    <p>TO</p></td>
    <td>&nbsp;
    <input type="text" name="mudigang" id="mudigang"></td>
  </tr>
  <tr>
    <td colspan="2"><p>承保险别</p>
    <p>CONDITIONS</p></td>
    <td colspan="7">&nbsp;
    <input type="text" name="chengbaoxianbie" id="chengbaoxianbie"></td>
  </tr>
  <tr>
    <td colspan="2"><p>备注</p>
    <p>NOTE</p></td>
    <td colspan="7">&nbsp;
    <input type="text" name="note" id="note"></td>
  </tr>
  <tr>
    <td colspan="2"><p>投保人签章</p>
    <p>SIGNATURE/SEAL OF APPLICANT</p></td>
    <td colspan="3">&nbsp;
    <input type="text" name="toubaorenqianzhang" id="toubaorenqianzhang"></td>
    <td colspan="2"><p>投保填单日期</p>
    <p>ISSUED DATE</p></td>
    <td colspan="2">&nbsp;<input type="text" class="Wdate" name="tianbiaoriqi" id="tianbiaoriqi" onClick="WdatePicker()"></td>
  </tr>
  <tr>
    <td colspan="10" style="text-align:center" >&nbsp;<input type="submit" value="提交保单" /></td>
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
	<!-- Main js file -->
	
	<script type="text/javascript">
	function isEmpty(str){
		if(str==null || str.trim().length==0)
			return true;
		else 
			return false;
	}
	
	function checkForm(){
		var fax_from = document.getElementById("fax_from").value;
		var fax_to = document.getElementById("fax_to").value;
		var beibaoxianren = document.getElementById("beibaoxianren").value;
		var fapiaohao = document.getElementById("fapiaohao").value;
		var fapiaoriqi = document.getElementById("fapiaoriqi").value;
		var jinkouhetonghao = document.getElementById("jinkouhetonghao").value;
		var xinyongzhenghao = document.getElementById("xinyongzhenghao").value;
		var baozhuangshuliang = document.getElementById("baozhuangshuliang").value;
		
		var baoxianhuowumingcheng = document.getElementById("baoxianhuowumingcheng").value;
		var biaoji = document.getElementById("biaoji").value;
		var jiagetiaojian = document.getElementById("jiagetiaojian").value;
		var fapiaojine = document.getElementById("fapiaojine").value;
		var baoxianjine = document.getElementById("baoxianjine").value;
		//var feilv =document.getElementById("feilv");
		var baoxianfei = document.getElementById("baoxianfei").value;
		
		var chuanming = document.getElementById("chuanming").value;
		var jianzaonianfen = document.getElementById("jianzaonianfen").value;
		var chuanqi = document.getElementById("chuanqi").value;
		var qiyunriqi = document.getElementById("qiyunriqi").value;
		var qiyungang = document.getElementById("qiyungang").value;
		var via = document.getElementById("via").value;
		var mudigang = document.getElementById("mudigang").value;
		var chengbaoxianbie = document.getElementById("chengbaoxianbie").value;
		var note = document.getElementById("note").value;
		var toubaorenqianzhang = document.getElementById("toubaorenqianzhang").value;
		var tianbiaoriqi = document.getElementById("tianbiaoriqi").value;
		
		if(isEmpty(fax_from)||isEmpty(fax_to)||isEmpty(beibaoxianren)||isEmpty(fapiaohao)||
				isEmpty(fapiaoriqi)||isEmpty(jinkouhetonghao)||isEmpty(xinyongzhenghao)||isEmpty(baozhuangshuliang)||
				isEmpty(baoxianhuowumingcheng)||isEmpty(biaoji)||isEmpty(jiagetiaojian)||isEmpty(fapiaojine)||
				isEmpty(baoxianjine)||isEmpty(baoxianfei)||isEmpty(chuanming)||isEmpty(jianzaonianfen)
				||isEmpty(jianzaonianfen)||isEmpty(chuanqi)||isEmpty(qiyungang)||isEmpty(via)
				||isEmpty(qiyunriqi)||isEmpty(mudigang)||isEmpty(chengbaoxianbie)||isEmpty(note)
				||isEmpty(toubaorenqianzhang)||isEmpty(tianbiaoriqi)){
			alert("还有没填的选项");
			return false;
		}
		if(isNaN(baozhuangshuliang)){
			alert("包装数量必须为数字");
			return false;
		}
		if(isNaN(fapiaojine)){
			alert("发票金额必须为数字");
			return false;
		}
		if(isNaN(baoxianjine)){
			alert("保险金额必须为数字");
			return false;
		}
		if(isNaN(baoxianfei)){
			alert("保险费必须为数字");
			return false;
		}
		
		
		if(jianzaonianfen.length!=4){
			alert("建造年份是4位的数字");
			return false;
		}
	}
	</script>
</body>
</html>

