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
<title>易保通用户注册协议</title>
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
							class="icon-home"></i>易保通用户注册协议</a> <!-- Sub menu markup 
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
						

					<h4 align="center">易保通用户注册协议</h4>
					<p>本协议是您与易保通网站（简称"本站"，网址：www.ybtoon.com）所有者（以下简称为"易保通"）
					之间就易保通网站服务等相关事宜所订立的契约，请您仔细阅读本注册协议，您点击"同意并继续"按钮后，本协议即构成对双方有约束力的法律文件。</p>
					<h5>第1条本站服务条款的确认和接纳</h5>
					<p>1.1本站的各项电子服务的所有权和运作权归易保通所有。用户同意所有注册协议条款并完成注册程序，才能成为本站的正式用户。用户确认：
					本协议条款是处理双方权利义务的契约，始终有效，法律另有强制性规定或双方另有特别约定的，依其规定。</p>
					<p>1.2用户点击同意本协议的，即视为用户确认自己具有享受本站服务、下单购物（待开通此功能后）等相应的权利能力和行为能力，能够独立承担法律责任。</p>
					<p>1.3易保通保留在中华人民共和国大陆地区法施行之法律允许的范围内独自决定拒绝服务、关闭用户账户、清除或编辑内容或取消订单的权利。</p>
					<h5>第2条本站服务</h5>
					<p>2.1易保通通过互联网依法为用户提供互联网信息等服务，用户在完全同意本协议及本站规定的情况下，方有权使用本站的相关服务。</p>
					<h5>第3条用户信息</h5>
					<p>3.1用户应自行诚信向本站提供注册资料，用户同意其提供的注册资料真实、准确、完整、合法有效，用户注册资料如有变动的，应及时更新其注册资料。
					如果用户提供的注册资料不合法、不真实、不准确、不详尽的，用户需承担因此引起的相应责任及后果，并且易保通保留终止用户使用易保通各项服务的权利。</p>
					<p>3.2用户在本站进行浏览、下单购物（待开通此功能后）等活动时，涉及用户真实姓名/名称、通信地址、联系电话、电子邮箱等隐私信息的，
					本站将予以严格保密，除非得到用户的授权或法律另有规定，本站不会向外界披露用户隐私信息。</p>
					<p>3.3用户注册成功后，将产生用户名和密码等账户信息，您可以根据本站规定改变您的密码。用户应谨慎合理的保存、使用其用户名和密码。
					用户若发现任何非法使用用户账号或存在安全漏洞的情况，请立即通知本站并向公安机关报案。</p>
					<p>3.4用户同意，易保通拥有通过邮件、短信电话等形式，向在本站注册、购物用户、收货人发送订单信息、促销活动等告知信息的权利。</p>
					<p>3.5用户不得将在本站注册获得的账户借给他人使用，否则用户应承担由此产生的全部责任，并与实际使用人承担连带责任。</p>
					<p>3.6用户同意，易保通有权使用用户的注册信息、用户名、密码等信息，登录进入用户的注册账户，进行证据保全，包括但不限于公证、见证等。</p>
					<h5>第4条用户依法言行义务</h5>
					<p>本协议依据国家相关法律法规规章制定，用户同意严格遵守以下义务：</p>
					<p>（1）不得传输或发表：煽动抗拒、破坏宪法和法律、行政法规实施的言论，煽动颠覆国家政权，推翻社会主义制度的言论，煽动分裂国家、
					破坏国家统一的的言论，煽动民族仇恨、民族歧视、破坏民族团结的言论；</p>
					<p>（2）不得利用本站从事洗钱、窃取商业秘密、窃取个人信息等违法犯罪活动；</p>
					<p>（3）不得干扰本站的正常运转，不得侵入本站及国家计算机信息系统；</p>
					<p>（4）不得传输或发表任何违法犯罪的、骚扰性的、中伤他人的、辱骂性的、恐吓性的、伤害性的、庸俗的，淫秽的、不文明的等信息资料；</p>
					<p>（5）不得传输或发表损害国家社会公共利益和涉及国家安全的信息资料或言论；</p>
					<p>（6）不得教唆他人从事本条所禁止的行为；</p>
					<p>用户应不时关注并遵守本站不时公布或修改的各类合法规则规定。</p>
					<p>本站保有删除站内各类不符合法律政策或不真实的信息内容而无须通知用户的权利。</p>
					<p>若用户未遵守以上规定的，本站有权作出独立判断并采取暂停或关闭用户帐号等措施。用户须对自己在网上的言论和行为承担法律责任。</p>
					<h5>第5条商品信息</h5>
					<p>本站上的商品价格、数量、是否有货等商品信息随时都有可能发生变动，本站不作特别通知。由于网站上商品信息的数量极其庞大，
					虽然本站会尽最大努力保证您所浏览商品信息的准确性，但由于众所周知的互联网技术因素等客观原因存在，
					本站网页显示的信息可能会有一定的滞后性或差错，对此情形您知悉并理解；易保通欢迎纠错，并会视情况给予纠错者一定的奖励。</p>
					<h5>第6条订单（待开通此功能后）</h5>
					<p>6.1在您下订单时，请您仔细确认所购商品的名称、价格、数量、型号、规格、尺寸、联系地址、电话、收货人等信息。收货人与用户本人不一致的，
					收货人的行为和意思表示视为用户的行为和意思表示，用户应对收货人的行为及意思表示的法律后果承担连带责任。</p>
					<p>6.2除法律另有强制性规定外，双方约定如下：本站上销售方展示的商品和价格等信息仅仅是要约邀请，您下单时须填写您希望购买的商品数量、
					价款及支付方式、收货人、联系方式、收货地址（合同履行地点）、合同履行方式等内容；系统生成的订单信息是计算机信息系统根据您填写的内容自动生成的数据，
					仅是您向销售方发出的合同要约；销售方收到您的订单信息后，在销售方将您在订单中订购的商品向您发出时，方视为您与销售方之间就实际直接向您发出的商品建立了合同关系；
					只有在销售方实际直接向您发出了订单中订购的其他商品时，您和销售方之间就订单中该其他已实际直接向您发出的商品才成立合同关系。
					您可以随时登录您在本站注册的账户，查询您的订单状态。</p>
					<h5>第7条配送</h5>
					<p>7.1销售方将会把商品（货物）送到您所指定的收货地址，所有在本站上列出的送货时间为参考时间，参考时间的计算是根据库存状况、
					正常的处理过程和送货时间、送货地点的基础上估计得出的。</p>
					<p>7.2因如下情况造成订单延迟或无法配送等，销售方不承担延迟配送的责任：</p>
					<p>（1）用户提供的信息错误、地址不详细等原因导致的；</p>
					<p>（2）货物送达后无人签收，导致无法配送或延迟配送的；</p>
					<p>（3）情势变更因素导致的；</p>
					<p>（4）不可抗力因素导致的，例如：自然灾害、交通戒严、突发战争等。</p>
					<h5>第8条所有权及知识产权条款</h5>
					<p>8.1用户一旦接受本协议，即表明该用户主动将其在任何时间段在本站发表的任何形式的信息内容
					（包括但不限于客户评价、客户咨询、各类话题文章等信息内容）的财产性权利等任何可转让的权利，如著作权财产权
					（包括并不限于：复制权、发行权、出租权、展览权、表演权、放映权、广播权、信息网络传播权、摄制权、改编权、翻译权、汇编权以及应当由著作权人享有的其他可转让权利），
					全部独家且不可撤销地转让给易保通所有，用户同意易保通有权就任何主体侵权而单独提起诉讼。</p>
					<p>8.2本协议已经构成《中华人民共和国著作权法》第二十五条（条文序号依照2011年版著作权法确定）及相关法律规定的著作财产权等权利转让书面协议，
					其效力及于用户在易保通网站上发布的任何受著作权法保护的作品内容，无论该等内容形成于本协议订立前还是本协议订立后。</p>
					<p>8.3用户同意并已充分了解本协议的条款，承诺不将已发表于本站的信息，以任何形式发布或授权其它主体以任何方式使用（包括但限于在各类网站、媒体上使用）。</p>
					<p>8.4易保通是本站的制作者,拥有此网站内容及资源的著作权等合法权利,受国家法律保护,有权不时地对本协议及本站的内容进行修改，并在本站张贴，
					无须另行通知用户。在法律允许的最大限度范围内，易保通对本协议及本站内容拥有解释权。</p>
					<p>8.5除法律另有强制性规定外，未经易保通明确的特别书面许可,任何单位或个人不得以任何方式非法地全部或部分复制、转载、引用、
					链接、抓取或以其他方式使用本站的信息内容，否则，易保通有权追究其法律责任。</p>
					<p>8.6本站所刊登的资料信息（诸如文字、图表、标识、按钮图标、图像、声音文件片段、数字下载、数据编辑和软件），均是易保通或其内容提供者的财产，受中国和国际版权法的保护。
					本站上所有内容的汇编是易保通的排他财产，受中国和国际版权法的保护。本站上所有软件都是易保通或其关联公司或其软件供应商的财产，受中国和国际版权法的保护。</p>
					<h5>第9条协议更新及用户关注义务</h5>
					<p>根据国家法律法规变化及网站运营需要，易保通有权对本协议条款不时地进行修改，修改后的协议一旦被张贴在本站上即生效，并代替原来的协议。用户可随时登录查阅最新协议；
					<strong>用户有义务不时关注并阅读最新版的协议及网站公告。如用户不同意更新后的协议，可以且应立即停止接受易保通网站依据本协议提供的服务；如用户继续使用本网站提供的服务的，
					即视为同意更新后的协议。易保通建议您在使用本站之前阅读本协议及本站的公告。</strong> 如果本协议中任何一条被视为废止、无效或因任何理由不可执行，
					该条应视为可分的且并不影响任何其余条款的有效性和可执行性。</p>
					<h5>第11条法律管辖和适用</h5>
					<p>本协议的订立、执行和解释及争议的解决均应适用在中华人民共和国大陆地区适用之有效法律（但不包括其冲突法规则）。如发生本协议与适用之法律相抵触时，
					则这些条款将完全按法律规定重新解释，而其它有效条款继续有效。如缔约方就本协议内容或其执行发生任何争议，双方应尽力友好协商解决；
					协商不成时，任何一方均可向有管辖权的中华人民共和国大陆地区法院提起诉讼。</p>
					<h5>第12条其他</h5>
					<p>12.1易保通网站所有者是指在政府部门依法许可或备案的易保通网站经营主体。</p>
					<p>12.2易保通尊重用户和消费者的合法权利，本协议及本网站上发布的各类规则、声明等其他内容，均是为了更好的、
					更加便利的为用户和消费者提供服务。本站欢迎用户和社会各界提出意见和建议，易保通将虚心接受并适时修改本协议及本站上的各类规则。</p>
					<p>12.3本协议内容中以黑体、加粗、下划线、斜体等方式显著标识的条款，请用户着重阅读。</p>
					<p>12.4您点击本协议下方的"同意并继续"按钮即视为您完全接受本协议，在点击之前请您再次确认已知悉并完全理解本协议的全部内容。</p>

						
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