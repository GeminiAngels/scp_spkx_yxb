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
	<div class="hw_zs">
		<div class="col-sm-12 col-xs-12">
			<div class="left">
				<h3>联系方式</h3>
				<p>联&nbsp;&nbsp;系&nbsp;&nbsp;人：袁艺  张睿梅
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