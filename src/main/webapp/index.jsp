<%@page contentType="text/html;charset=utf-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	String path = request.getContextPath();
%>
<!doctype html>
<html>

<head>
	<meta charset="utf-8">
	<meta name="viewport"
	      content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no"/>
	<link rel="shortcut icon" href="<%=path%>/static/assets/ico/favicon.ico">
	<title>第七届食品与生物学科高水平SCI论文撰写与投稿技巧研修班</title>
	<link rel="stylesheet" type="text/css" href="<%=path%>/static/spkx/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="<%=path%>/static/spkx/css/style.css"/>

	<link href="<%=path%>/static/css/font-awesome.min.css" rel="stylesheet">
	<!--    <script src="js/jquery.js" type="text/javascript"></script>-->
	<script src="<%=path%>/static/spkx/js/jquery.min.js" type="text/javascript"></script>
	<script src="<%=path%>/static/spkx/js/tab.js" type="text/javascript"></script>
	<script src="<%=path%>/static/spkx/js/bootstrap.min.js"></script>
</head>

<body>
<!-- 头部模块 -->
<%@include file="/inc/headbar.jsp" %>
<%--头部通知滚动条--%>
<div class="main alert alert-info">
	<marquee behavior="scroll" width="100%" direction="left" scrollamount="3" onmouseover="this.stop()"
	         onmouseout="this.start()">

	</marquee>
	<%--<marquee class="marquee"   scrollamount="1" direction="up" onmouseover="this.stop()" onmouseout="this.start()">&nbsp;
	</marquee>--%>
</div>
<div class="main">
	<h2><img src="<%=path%>/static/spkx/images/ico_tt.png" alt=""/><a
			href="#">前言</a></h2>
	<div class="hyjs row">
		<img src="<%=path%>/static/spkx/images/pic02.png" alt="" class="col-sm-4 col-xs-6 "/>
		<p class="col-sm-8 col-xs-12">为了帮助食品及生物学科科技人员掌握英文科技论文的撰写技巧、提高SCI期刊收录的命中率，综合提升我国食品及生物学科科技人员的高质量科技论文写作能力。在《Journal
			of Agricultural and Food Chemistry》、《Food Chemistry》、《Journal of Food Science》、《Food and Bioprocess
			Technology》、《Journal of Functional
			Foods》杂志等SCI期刊主编及在《Nature》等期刊发表大量高水平学术论文的专家支持下，《食品科学》编辑部拟定于2017年8月3－4日在长春举办“第七届食品与生物学科高水平SCI论文撰写与投稿技巧研修班”，为期两天。参加研修的人员，测评合格后颁发由北京食品科学研究院和中国食品杂志社《食品科学》编辑部共同签章的《培训证书》。</p>
		<div class="clear"></div>
	</div>
</div>
<div class="main_bg">
	<div class="main">
		<h2><img src="<%=path%>/static/spkx/images/ico_tt.png" alt=""/><a href="#">招生对象</a>
		</h2>
		<div class="fyhk">
			<p>食品与生物学科的相关教师、研究人员、学生、企事业单位技术人员、检验检疫人员，及其他有SCI期刊投稿需求的人员等。
			</p>
		</div>
	</div>
</div>
<%--<div class="main">
	<h2><img src="<%=path%>/static/spkx/images/ico_tt.png" alt=""/><a
			href="#">研修内容</a></h2>
	<div class="fyhk">
		<p>SCI期刊的介绍、概况、特点，目标刊物选择，论文撰写技巧，英文撰写规范，投稿技巧等。
		</p>
	</div>
</div>--%>
<%--<div class="main_bg">--%>
	<div class="main">
		<h2><img src="<%=path%>/static/spkx/images/ico_tt.png" alt=""/><a href="#">授课内容及授课专家</a>
		</h2>
		<div class="hynr">
			<div class="left col-sm-12 col-xs-12 row">
				<h3>授课语言：中文＋英文</h3>
				<div class="col-sm-12 col-xs-12 prof">
					<h4 class="col-sm-12 col-xs-12">1） SCI期刊及其投稿准备策略</h4>
					<img class="col-sm-3 col-xs-12 text-center" src="<%=path%>/static/spkx/images/prof01.png" height="200"
					     width="120" alt=""/>

					<p class="col-sm-9 col-xs-12">孙大文院士：欧洲人文和自然科学院院士、爱尔兰皇家科学院院士、国际食品科学院(IAFoST)院士、国际农业工程学会前任主席、《Food and
						Bioprocess
						Technology》（2.691）总编、爱尔兰国立都柏林大学教授、华南理工大学教授，在世界上著名杂志和国际会议上发表了超过800篇高水平论文，出版专著14部，其中超过400篇论文被SCI收录（H-index
						64）。</p>
				</div>
				<div class="col-sm-12 col-xs-12 prof">
					<h4 class="col-sm-12 col-xs-12">2） 如何撰写科技论文和评价研究质量</h4>
					<img class="col-sm-3 col-xs-12" src="<%=path%>/static/spkx/images/prof02.png" height="200"
					     width="120" alt=""/>
					<p class="col-sm-9 col-xs-12">刘瑞海教授：国际食品科学院院士、《Food Science and Human Wellness》总编、《Journal of Food
						Science》(IF 1.696)副主编、美国康奈尔大学食品科学系教授，在国际著名期刊（包括Nature）上发表学术论文140多篇。论文总引用次数为9679，论文平均被引用次数为66.
						29次，H-index 48。目前是农业科学领域 (包括营养学和食品科学)连续6年（2009—2014）蝉联论文被引用率最高的5名科学家之一。</p>
				</div>
				<div class="col-sm-12 col-xs-12 prof">
					<h4 class="col-sm-12 col-xs-12">3） 如何准备并成功的发表研究成果</h4>
					<img class="col-sm-3 col-xs-12" src="<%=path%>/static/spkx/images/prof03.png" height="200"
					     width="120" alt=""/>
					<p class="col-sm-9 col-xs-12">Fereidoon Shahidi教授：加拿大《Journal of Functional Foods》(IF
						3.574)主编、英国《Food Chemistry》(IF 3.390
						)副主编、加拿大纽芬兰纪念大学生物化学系教授、国际食品科学院院士、英国皇家化学会会士、国际保健营养品与功能性食品协会主要创始人和执行委员会委员、加拿大纽芬兰纪念大学生物化学系大学研究教授。Shahidi博士从事农业科学及其他领域的研究，在学术期刊和著作中发表了760余篇研究性论文，他还是64篇著作的编辑或作者。</p>
				</div>
				<div class="col-sm-12 col-xs-12 prof">
					<h4 class="col-sm-12 col-xs-12">4） 如何提高您的文章接收率：作为Journal of Food Science杂志主编的经验和建议</h4>
					<img class="col-sm-3 col-xs-12" src="<%=path%>/static/spkx/images/prof04.png" height="200"
					     width="120" alt=""/>
					<p class="col-sm-9 col-xs-12">熊幼翎教授：美国肯塔基大学动物和食品科学系研究部主任，目前担任《Journal of Food Science》(IF 1.
						696)主编、《Food Bioscience》副主编，美国食品科学协会（IFT）会士、美国化学协会农业与食品化学部会士。获瑞典皇家农林科学院最高奖Bertebos
						Prize。熊教授研究主要在食品蛋白化学与功能、肉制品加工技术、抗氧化肽和蛋白氧化机理等领域。合计发表SCI文章220余篇。</p>
				</div>
				<div class="col-sm-12 col-xs-12 prof">
					<h4 class="col-sm-12 col-xs-12">5） SCI文章被退稿原因以及如何避免</h4>
					<img class="col-sm-3 col-xs-12" src="<%=path%>/static/spkx/images/prof05.png" height="200"
					     width="120"
					     alt=""/>
					<p class="col-sm-9 col-xs-12">何其傥教授：国际食品科学院院士、美国罗格斯大学食品科学系杰出教授、美国化学学会会士、美国食品科学技术学会会士，现任《Journal of
						Agricultural and Food Chemistry》(IF
						2.912)副主编。何教授目前的研究兴趣为风味化学与功能食品化学。他已经发表了662篇期刊论文和218篇书本章节，并编辑出版了38部专业论著。</p>
				</div>
				<div class="col-sm-12 col-xs-12 prof">
					<h4 class="col-sm-12 col-xs-12">6） 图表制作以及文献的引用</h4>
					<img class="col-sm-3 col-xs-6" src="<%=path%>/static/spkx/images/prof06.png" height="200"
					     width="120"
					     alt=""/>
					<p class="col-sm-9 col-xs-12">
						任胜利总编：《中国科学》杂志社总编辑、国家自然科学基金委员会杂志社编审。先后担任《科学通报》、《中国科学基金》、《自然科学进展》的责任编辑。已在
						《Science》、《Nature》 《Scientometrics》、 《Learned
						Publishing》等期刊上发表文献计量学和科技编辑与写作方面的论文或杂文60余篇。先后主持翻译了《科技英文写作与演讲》和《科技英语写作进阶》，主编出版了《英语科技论文撰写与投稿》。</p>
				</div>
				<div class="col-sm-12 col-xs-12 prof">
					<h4 class="col-sm-12 col-xs-12">7） 英文科技期刊稿件及部分已发表文章中常见病句的分析</h4>
					<img class="col-sm-3 col-xs-12" src="<%=path%>/static/spkx/images/prof07.png" height="200"
					     width="120"
					     alt=""/>
					<p class="col-sm-9 col-xs-12">
						照日格图研究员：中华医学杂志英文版名誉总编辑、中华儿科杂志副总编辑。先后任北京儿童医院及北京市儿科研究所病毒研究室副主任、主任、副所长，从事病毒学研究，发表论文70余篇，自1996年起任《中华医学杂志英文版》(Chin
						Med J)(( IF 0.845)总编辑，于2007年12月被美国《The New England Journal of Medicine》聘为编委，2009年被聘为 《European
						Journal of Clinical Investigation》(SCI核心) 编委。</p>
				</div>
				<div class="col-sm-12 col-xs-12 prof">
					<h4 class="col-sm-12 col-xs-12">8）如何撰写与发表高质量SCI论文</h4>
					<img class="col-sm-3 col-xs-12" src="<%=path%>/static/spkx/images/prof08.jpg" height="200"
					     width="120"
					     alt=""/>
					<p class="col-sm-9 col-xs-12">
						王应宽主编：《国际农业与生物工程学报(IJABE)》（SCI）主编、《农业工程学报》副主编、《农业工程技术》社长/总编辑。曾任国际期刊《CIGR Journal》主编、《IAEJ》执行主编。主要研究方向为农业机械化与信息化、农产品加工、生物质能、编辑出版、开放存取和国际科技交流。作科技论文撰写与发表的讲座报告100多场次，为农业部、商务部援外农业培训研修班英文授课6 次。</p>
				</div>
			</div>
			<div class="clear"></div>
		</div>
	</div>
<%--</div>--%>
<div class="main_bg" style="margin:0;">
<div class="main">
	<h2><img src="<%=path%>/static/spkx/images/ico_tt.png" alt=""/>
		<a href="#">与大咖面对面交流——SCI期刊主编现场答疑会</a>
	</h2>
	<div class="fyhk">
		<%--<h3>会议费</h3>--%>
		<p>　　为提供充分交流机会，使得学员获得更好的学习效果，解决自己在撰写SCI文章过程中遇到的困扰，主办方特别在培训班召开第一天8月3日晚上19：00-21:00设置“SCI期刊主编现场答疑会”，由当天授课主编针对学员提出的问题予以详细解答。
		</p>
	</div>
</div>
</div>
<div class="main">
	<h2><img src="<%=path%>/static/spkx/images/ico_tt.png" alt=""/>
		<a href="#">授课时间及地点</a>
	</h2>
	<div class="fyhk">
		<h3>时 间</h3>
		<p>2017年8月3－4日 (8月2日周三早9：00—晚21：00报到)
		</p>
		<h3>地 点</h3>
		<p>      长春（详细地址待后续通知）
		</p>
	</div>
</div>
<div class="main_bg" style="margin:0;">
<div class="main">
	<h2><img src="<%=path%>/static/spkx/images/ico_tt.png" alt=""/><a href="#">报名方式</a>
	</h2>
	<div class="bmfs row">
		<div class="col-sm-8 col-xs-12">
			<h3>1）手机微信扫描下方二维码报名</h3>
			<%--<p>1）手机微信扫描下方二维码报名</p>--%>
			<div class="ewm"><img src="<%=path%>/static/spkx/images/ewm01.jpg" width="113" height="113"></div>
			<h3>2）网上报名</h3>
			<p>登录我刊网站SCI培训页面<a href="http://www.chnfood.cn/SCI/" target="_blank">http://www.chnfood.cn/SCI/</a>，进行网上报名。
			</p>
			<h3>3）回执报名</h3>
			<p>填写附页的<span><a href="down/第7届食品与生物学科高水平SCI论文撰写与投稿技巧研修班报名表.doc" target="_blank">参会回执</a></span>
				并发送E-mail至chnfood_sci@163.com或传真至010-83155436均可。
				该回执电子版也可以从我刊网站SCI培训页面<a
						href="http://www.chnfood.cn/SCI/" target="_blank">http://www.chnfood.cn/SCI/</a>下载。</p>
		</div>
		<div class="time col-sm-4 col-xs-12">
			<%--<h4>时 间 </h4>
			2017年8月3－4日
			<br>(8月2日周三早9：00—晚21：00报到)
			<h4>地 点 </h4>
			长春（详细地址待后续通知）--%>
			<h4>报名截止时间 </h4>
			请计划参加培训的人员于2017年7月15日前报名，名额有限，预报从速。
		</div>
		<div class=" col-sm-12 col-xs-12">
		<p> 以上三种报名方式采用其中一种即可，不需重复报名，推荐采用微信及网上报名方式。
			<br>会务组收到报名信息后，会尽快向参会代表电子邮箱发送电子版邀请函，同时邮寄纸质版邀请函，请务必准确填写电子邮箱、详细地址及邮编、电话号码。
		</p>
		<%--<p>更多会议信息请关注食品科学微博和微信</p>
		<div class="ewm"><span class="col-sm-6 col-xs-12" style="padding-top:0;"><img
				src="<%=path%>/static/spkx/images/ewm02.png"><span>食品科学订阅号</span></span><span
				class="col-sm-6 col-xs-12" style="padding-top:0;"><img src="<%=path%>/static/spkx/images/ewm01.png"><span>食品科学服务号</span></span>
		</div>--%>
		</div>
	</div>
</div>
</div>
<div class="main">
	<h2><img src="<%=path%>/static/spkx/images/ico_tt.png" alt=""/>
		<a href="#">培训费</a>
	</h2>
	<div class="fyhk">
		<p>请于<span class="reddate">2017年7月15日</span>前汇至中国食品杂志社，以便制作学习证。
		</p>
		<h3>收费标准</h3>
		<p>教师：1400元
			<br> 普通在校学生：1000元(不含在职攻读学位人员)
			<br> 包括学费、资料费、餐费、证书费等。
		</p>
		<h3>银行汇款</h3>
		<p>      户　名：中国食品杂志社
			<br> 开户行：工行阜外大街支行
			<br> 帐　号：0200049209024922112
		</p>
		<h3>邮局汇款</h3>
			<p>  邮寄地址：北京市西城区禄长街头条4号
			<br> <span class="w3">收款人</span>：《食品科学》编辑部收
			<br> 邮　　编：100050
			<br> 会议期间统一安排住宿，费用自理。
			</p>
	</div>
</div>
<div class="main_bg" style="margin:0;">
<div class="main">
	<h2><img src="<%=path%>/static/spkx/images/ico_tt.png" alt=""/><a
			href="#">报到注意事项</a></h2>
	<div class="fyhk">
		<%--<h3>会议费</h3>--%>
		<p>
			报到时请带身份证，以核对身份证号信息。
		</p>
	</div>
</div>
</div>
<div class="main">
	<div class="hw_zs">
		<div class="col-sm-12 col-xs-12">
			<div class="left">
				<h3>联系方式</h3>
				<p><span class="w3">联系人</span>：袁艺、张睿梅
					<br>联系电话：010-63157001或010-83155446/47/48/49/50转8032
					<br>Email：chnfood_sci@163.com
					<br>
				</p>
			</div>
		</div>
		<%--<div class="col-sm-7 col-xs-12">
			<div class="right">
				<h3>广告招商招展</h3>
				<p>会刊广告、会场广告、会场产品展示
					<br> 详情请拨打广告招商招展热线：010-83155438
					<br> 传真：010-83152138
					<br>
					<a href="down/参加培训回执.doc" target="_blank">招商招展回执</a></p>
			</div>
		</div>--%>
		<div class="clear"></div>
	</div>
</div>


<%@include file="/inc/footer.jsp" %>
<script type='text/javascript' src='<%=path%>/dwr/engine.js'></script>
<script type='text/javascript' src='<%=path%>/dwr/interface/RegisterService.js'></script>
<script type='text/javascript' src='<%=path%>/dwr/interface/NoticeService.js'></script>
<c:if test="${not empty register}">
	<script type='text/javascript' src='<%=path%>/dwr/interface/OrderService.js'></script>
</c:if>

<script src="<%=path%>/static/spkx/js/biz.js"></script>
<script type="text/javascript">
	$(function () {
		var hash = '${param["position"]}';
		if (hash) {
			var target = $('#' + hash);
			if ($(window).width() < 768) {
				if (target.length) {
					$('html,body').animate({
						scrollTop: target.offset().top - $('.navbar-header').outerHeight(true) + 1
					}, 1000);
				}
			}
			else {
				if (target.length) {
					$('html,body').animate({
						scrollTop: target.offset().top - $('.navbar').outerHeight(true) + 1
					}, 1000);
				}
			}
		}
		//获取后台通知内容
		NoticeService.getAllEnabledNotice(function (notices) {
			$("marquee").html('');
			var trs = '';
			$.each(notices, function (index, n) {
				if (notices.length == 1) {
					trs += "<a href='tz.jsp?notice=" + n.id + "'>" + n.title + "</a>";
				} else {
					trs += (index + 1) + ".<a href='tz.jsp?notice=" + n.id + "'>" + n.title + "</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
				}
			});
			$("marquee").append(trs);
		});
		/*//获取后台通知内容
		 NoticeService.getAllEnabledNotice(function (notices) {
		 $("marquee").html('');
		 var trs='';
		 $.each(notices, function (index, n) {
		 trs+= "<a href='tz.jsp?notice="+n.id+"'>"+n.title+"</a><br><br>";
		 });
		 $("marquee").append(trs);
		 });*/
	});
</script>
</body>
</html>