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
	<h2><span><a href="#">查看更多+</a></span><img src="<%=path%>/static/spkx/images/ico_tt.png" alt=""/>
		<a href="#">培训费</a>
	</h2>
	<div class="fyhk">
		<h3>费用</h3>
		<p>请于2017年7月15日前汇至中国食品杂志社，以便制作学习证。
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
			<br> 收&nbsp;&nbsp;款&nbsp;人：《食品科学》编辑部收
			<br> 邮　　编：100050
			<br> 会议期间统一安排住宿，费用自理。
		</p>
	</div>
</div>

<%@include file="/inc/footer.jsp"%>
<script type='text/javascript' src='<%=path%>/dwr/engine.js'></script>
<script type="text/javascript" src="<%=path%>/dwr/util.js"></script>
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
		/*$("#btn-sendEmail").click(function () {
			if(app.register.id){
				var register = {
					id:app.register.id,
					usertype:$("#usertype").val(),
					zsyq:$("#zsyq").val()
				};
				var files = dwr.util.getValue("file");//这是dwr包提供的util.js文件里面的方法
				var fileName =  $("#file").val();
				if(!fileName){
					alert("请选择需要上传的缴费凭据!");return;
				}

				RegisterService.uploadFile(register,files, fileName,function(ret){
					if(ret) {
						alert("提交成功!");
						window.loaction.reload();
					}
				});
			}else{
				alert("请先登录后再提交!");
				window.location.href = 'login.jsp';
			}
		});*/

	});
</script>
</body>
</html>