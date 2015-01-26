<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
// String session_name = (String)session.getAttribute("name");
// Integer role_int = (Integer)session.getAttribute("role");
// String url = basePath+"jsp/user/login.jsp";//then go back to login page


%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html">
<!-- Title and other stuffs -->
<title>保险经纪简介</title>
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
							class="icon-home"></i>保险经纪简介</a> <!-- Sub menu markup 
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
						

					<h3 align="center">保险经纪服务简介</h3>
					<div style="font-size:15px">
					<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;易保通作为集中国内外一流保险经纪公司，提供专业保险经纪服务的，经过多年的稳健发展，
					不仅拥有600多名高素质的风险管理和保险经纪专业人才，形成了于风险管理和保险经纪为一体的专业团队，
					而且凭借优质服务赢得了良好的市场口碑，成为了保险经纪行业的领军网站。</p>
					<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;易保通目前业务范围已覆盖到国家机关、金融机构、航空航天、石油化工、电力能源、
					水利水电、电信邮电、交通运输、工业制造、冶金矿产、工程建筑、商业外贸、医药卫生、烟草酿酒、文化教育、旅游环保、农业养殖等领域，客户数量已超过3000家。</p>
					<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;易保通愿同我们的客户一同成长，为客户提供全方位、专业的保险经纪服务。</p>
					<h4>一、易保通网站优势</h4>
					<h5>1、相关经验优势</h5>
					<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;易保通所集中的保险经纪服务商目前业务范围已覆盖到国家机关、金融机构、航空航天、
					石油化工、电力能源、水利水电、电信邮电、交通运输、工业制造、冶金矿产、工程建筑、商业外贸、医药卫生、烟草酿酒、文化教育、旅游环保、
					农业养殖等领域，客户数量已超过3000家。</p>
					<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在国内的工程保险领域，服务业绩斐然，服务能力有目共睹，其客户涉及公路、
					轨道、桥梁、航天、水利、电力、石化、港口等领域，如为二滩公司提供“锦屏一级、二级主体工程” 建设工程保险咨询服务, 为杭州湾跨海大桥、
					武汉天兴洲长江大桥、西汉高速公路、南平京福高速公路、宜万铁路、哈大铁路、京沪铁路等工程提供保险经纪服务并取得圆满的成功。</p>
					<p><img alt="image002" src="<%=basePath%>img/user/image002.jpg" style="width:48%">
					<img alt="image001" src="<%=basePath%>img/user/image001.jpg" style="width:48%">
					</p>
					<p>类型和不同需求的客户制订完善的保险采购方案，并协助进行保险采购；为适应社会和国民经济发展对保险的新需求，
					已成立了中国一流的保险技术研发中心，专门进行新保险产品的研究和开发。</p>
					<h5>2、本土化服务优势</h5>
					<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;易保通所集中的保险经纪服务商分支机构分布在全国各直辖市、
					各省会城市和沿海开放城市。已建成中国保险经纪市场最大的服务网络，可为客户提供随叫随到的本地化现场化服务。</p>
					<h4>二、服务内容</h4>
					<h5>1、前期准备阶段</h5>
					<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;接受客户委托之后，
					易保通将会组织服务供应商派遣专业的风险管理工程师对企业及项目进行风险查勘和风险评估，
					分析潜在风险，并提出相应防灾防损建议，协助客户进行风险管理，以达到“防患于未然”的目的。</p>
					<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在风险识别和评估的基础上，进行恰当的风险处理，包括但不限于保险、
					合同转移、自留预防等；并协助客户审核相关合同中有关风险及保险条款，使风险合理分担和转移，对合同潜在责任进行评估，提出可行性建议。</p>
					<h5>2、保险安排阶段</h5>
					<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;技术支持部门根据风险评估报告为客户量身定做保险方案，
					经客户确认后拟定询价书或招标文件，根据实际情况向市场上各家保险公司询价或招标，确保客户得到最完善的保险条件和最合理的保费价格。
					在完成询价工作后，技术人员将针对各家保险公司的报价进行分析，对保险公司的选择提出建议，最终由客户决定由哪一家保险公司承保。</p>
					<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;协助客户与保险公司谈判、签订保险协议，审核保险单，协调客户缴纳保险费。</p>
					<h5>3、保险期间服务阶段</h5>
					<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（1）	培训</p>
					<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在保险安排完毕后为客户制定保险服务手册，其中对投保险种和索赔流程有详细介绍。
					保险服务手册下发给客户及相关人员后，专业人员提供现场培训，协助客户了解风险点、如何防范与规避风险、以及出险后如何有效索赔等。</p>
					<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（2）	协助索赔</p>
					<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;当保险事故发生以后，是客户于保险公司利益冲突最明细和突出的阶段。
					易保通将基于客户的利益，凭借丰富的索赔经验，协助客户报案、安排损失查勘、准备索赔单证、与保险理赔人谈判，
					确保投保人或被保险人的合法权益得到保障，使客户的保险利益得以实现。</p>
					<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（3）	其他期间服务</p>
					<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在保险有效期内还将提供日常风险管理与实时保险咨询服务，
					主要包括随时为贵司碰到的保险问题提供帮助，提供保险专题培训，以及根据风险变化情况调整、完善保险条件，以确保保障的合理、有效，等等。</p>
					<h4>三、服务特点</h4>
					<h5>1、客户利益的忠实代表</h5>
					<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;组织在为客户提供服务的过程中，要受到中华人民共和国《民法》、《保险法》、
					《合同法》、《保险经纪公司管理规定》等相关法律、法规的制约。要服从保险监管机构的管理，并对自身过错负赔偿责任，从而确保客户的利益不受损失。</p>
					<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;《保险法》与《保险经纪公司管理规定》中明确规定：保险经纪公司代表投保人或被保险人利益，
					为投保人与保险人订立保险合同提供中介服务，保险经纪公司必须忠实维护投保人、被保险人的合法利益。</p>
					<h5>2、为每个客户量体裁衣</h5>
					<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;保险公司业务人员和代理人的作业方式，是在市场上销售保险公司“格式化”的保险产品。
					而这些“格式化”产品是适应广泛市场需求设计的，并不一定能够满足需求多变的每个个体。易保通的作业方式是在充分了解客户保险需求的前提下，
					突破保险公司条款限制，根据保险原理，设计最符合客户实际情况的保险方案。通过保险方案在市场上的询价或招投标运作，最大程度地满足客户的实际要求。</p>
					<h5>3、不改变客户在购买保险和风险管控中的主导地位</h5>
					<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;提供服务的每一步骤均随时向客户汇报，客户拥有最终决策权，
					无论是保险方案、询价结果及分析，还是保险协议，都要获得客户的首肯。</p>
					<h5>4、为客户提供专业化的团队服务</h5>
					<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;保险公司在展业过程中，通常采用的是业务人员的单兵作战方式。易保通在为客户提供服务过程中，
					会成立一个由保险、风险管理、工程技术、法律、客户服务等各方面人员的工作团队，确保为客户提供最专业、最优质的保险经纪服务。</p>
					<h5>5、不额外增加客户成本</h5>
					<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;根据国际惯例，保险经纪公司为客户安排保险，不向客户收费，由保险公司支付佣金，
					给经纪公司佣金比例在保险公司的报价中明确列出，以确保公平、公正、公开。</p>
					<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;保险经纪公司不向客户收费的原因有二：（1）经纪公司作的大量工作（风险查勘、风险评估、
					保险方案设计等）既是维护客户利益，同时也减少了保险公司的展业费用；（2）经纪公司除了为客户安排保险，还要为客户提供风险管理的建议与培训，这降低了客户的出险概率，
					减少了保险公司的赔付支出。所以经纪公司的佣金由保险公司支付。佣金不是增加保费的因素，无论有无经纪人，保费的30％用于支付保险公司各项开支和利润。
					经纪人所要的佣金只是保险公司费用的一部分，不存在‘羊毛出羊身’问题。</p>
					<h5>6、通过规模购买效应为客户争取最合理的价格、最全面的保障、最完善的服务</h5>
					<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;以优质的服务、诚信的品质拥有一个由3000多个品牌客户组成的客户群体，是保险公司的一个超大型客户，
					所以易保通在面对保险公司时会形成规模购买效应，一般会获得优于客户直接从保险公司得到的承保条件，
					这样每一个客户通过易保通能够得到最合理的价格、最全面的保障和最完善的服务。</p>
					<h5>7、提供专业服务，客户可以集中精力做好主业</h5>
					<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;面对众多的保险公司，我们可以作为客户与保险公司沟通的桥梁，协助客户平衡关系，
					减少因保险安排为客户所带来的繁杂的事务性工作。在整个保险过程中，客户甚至可以完全不与保险公司直接接触，我们将按照客户的要求安排好保险。</p>
					<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;我司将组成专门项目小组为客户提供风险管理建议与保险安排，全程为客户提供“一条龙”的专业服务，
					为客户解除后顾之忧。客户将可以从烦琐的保险安排工作中解脱出来，集中精力做好主营业务。</p>
					<h4>四、服务流程</h4>
					<p><img alt="image005" src="<%=basePath%>img/user/image005.png" ></p>
					
			
						</div>
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
	<!-- Main js file -->
</body>
</html>