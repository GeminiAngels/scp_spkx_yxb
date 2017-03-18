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
	<h2><img src="<%=path%>/static/spkx/images/ico_tt.png" alt=""/><a href="#">报名方式</a>
	</h2>
	<div class="bmfs row">
		<div class="col-sm-8 col-xs-12">
			<h3>1）手机微信扫描下方二维码报名</h3>
			<%--<p>1）手机微信扫描下方二维码报名</p>--%>
			<div class="ewm"><img src="<%=path%>/static/spkx/images/ewm01.png"></div>
			<h3>2）网上报名</h3>
			<p>登录我刊网站SCI培训页面<a href="http://www.chnfood.cn/SCI/" target="_blank">http://www.chnfood.cn/SCI/</a>，进行网上报名。
			</p>
			<h3>3）回执报名</h3>
			<p>填写附页的<span><a href="down/第七届食品与生物学科高水平SCI论文撰写与投稿技巧研修班报名表.doc" target="_blank">参会回执</a></span>
				并发送E-mail至chnfood@163.com或传真至010-83155436均可。
				该回执电子版也可以从我刊网站SCI培训页面<a
						href="http://www.chnfood.cn/SCI/" target="_blank">http://www.chnfood.cn/SCI/</a>下载。</p>
		</div>
		<div class="time col-sm-4 col-xs-12">
		<%--	<h4>时 间 </h4>
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
<%@include file="/inc/footer.jsp" %>
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