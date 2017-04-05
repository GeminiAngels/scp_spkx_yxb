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
<div class="main">
	<h2><img src="<%=path%>/static/spkx/images/ico_tt.png" alt=""/>
		<a href="#">授课内容及授课专家</a>
	</h2>
	<div class="hynr">
		<div class="left col-sm-12 col-xs-12 row">
			<h3>授课语言：中文＋英文</h3>
			<div class="col-sm-12 col-xs-12 prof">
				<h4 class="col-sm-12 col-xs-12">1） SCI期刊及其投稿准备策略</h4>
				<img class="col-sm-3 col-xs-6" src="<%=path%>/static/spkx/images/prof01.png" height="200"
				     width="120" alt=""/>
				<p class="col-sm-9 col-xs-12">孙大文院士：欧洲人文和自然科学院院士、爱尔兰皇家科学院院士、国际食品科学院(IAFoST)院士、国际农业工程学会前任主席、《Food and
					Bioprocess
					Technology》（2.691）总编、爱尔兰国立都柏林大学教授、华南理工大学教授，在世界上著名杂志和国际会议上发表了超过800篇高水平论文，出版专著14部，其中超过400篇论文被SCI收录（H-index
					64）。</p>
			</div>
			<div class="col-sm-12 col-xs-12 prof">
				<h4 class="col-sm-12 col-xs-12">2） 如何撰写科技论文和评价研究质量</h4>
				<img class="col-sm-3 col-xs-6" src="<%=path%>/static/spkx/images/prof02.png" height="200"
				     width="120" alt=""/>
				<p class="col-sm-9 col-xs-12">刘瑞海教授：国际食品科学院院士、《Food Science and Human Wellness》总编、《Journal of Food
					Science》(IF 1.696)副主编、美国康奈尔大学食品科学系教授，在国际著名期刊（包括Nature）上发表学术论文140多篇。论文总引用次数为9679，论文平均被引用次数为66.
					29次，H-index 48。目前是农业科学领域 (包括营养学和食品科学)连续6年（2009—2014）蝉联论文被引用率最高的5名科学家之一。</p>
			</div>
			<div class="col-sm-12 col-xs-12 prof">
				<h4 class="col-sm-12 col-xs-12">3） 如何准备并成功的发表研究成果</h4>
				<img class="col-sm-3 col-xs-6" src="<%=path%>/static/spkx/images/prof03.png" height="200"
				     width="120" alt=""/>
				<p class="col-sm-9 col-xs-12">Fereidoon Shahidi教授：加拿大《Journal of Functional Foods》(IF
					3.574)主编、英国《Food Chemistry》(IF 3.390
					)副主编、加拿大纽芬兰纪念大学生物化学系教授、国际食品科学院院士、英国皇家化学会会士、国际保健营养品与功能性食品协会主要创始人和执行委员会委员、加拿大纽芬兰纪念大学生物化学系大学研究教授。Shahidi博士从事农业科学及其他领域的研究，在学术期刊和著作中发表了760余篇研究性论文，他还是64篇著作的编辑或作者。</p>
			</div>
			<div class="col-sm-12 col-xs-12 prof">
				<h4 class="col-sm-12 col-xs-12">4） 如何提高您的文章接收率：作为Journal of Food Science杂志主编的经验和建议</h4>
				<img class="col-sm-3 col-xs-6" src="<%=path%>/static/spkx/images/prof04.png" height="200"
				     width="120" alt=""/>
				<p class="col-sm-9 col-xs-12">熊幼翎教授：美国肯塔基大学动物和食品科学系研究部主任，目前担任《Journal of Food Science》(IF 1.
					696)主编、《Food Bioscience》副主编，美国食品科学协会（IFT）会士、美国化学协会农业与食品化学部会士。获瑞典皇家农林科学院最高奖Bertebos
					Prize。熊教授研究主要在食品蛋白化学与功能、肉制品加工技术、抗氧化肽和蛋白氧化机理等领域。合计发表SCI文章220余篇。</p>
			</div>
			<div class="col-sm-12 col-xs-12 prof">
				<h4 class="col-sm-12 col-xs-12">5） SCI文章被退稿原因以及如何避免</h4>
				<img class="col-sm-3 col-xs-6" src="<%=path%>/static/spkx/images/prof05.png" height="200"
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
				<img class="col-sm-3 col-xs-6" src="<%=path%>/static/spkx/images/prof07.png" height="200"
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
<%@include file="/inc/footer.jsp"%>
<script type='text/javascript' src='<%=path%>/dwr/engine.js'></script>
<script type='text/javascript' src='<%=path%>/dwr/interface/RegisterService.js'></script>
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
	});
</script>
</body>
</html>