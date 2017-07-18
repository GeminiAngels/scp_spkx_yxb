<%@page contentType="text/html;charset=utf-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
	<meta name="description" content="第七届食品与生物学科高水平SCI论文撰写与投稿技巧研修班">
	<meta name="author" content="北京国科智地科技有限公司">
	<link rel="shortcut icon" href="<%=path%>/static/assets/ico/favicon.ico">

	<title>第七届食品与生物学科高水平SCI论文撰写与投稿技巧研修班</title>

	<!-- Bootstrap core CSS -->
	<link href="<%=path%>/static/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="<%=path%>/res/css/bootstrap-datetimepicker.min.css">

	<link rel="stylesheet" type="text/css" href="<%=path%>/static/spkx/css/style.css" />

	<!-- Custom styles for this template -->
	<link href="<%=path%>/static/css/font-awesome.min.css" rel="stylesheet">

	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
	<![endif]-->

	<link href="<%=path%>/res/lib/jquery-validation/jquery.validate.min.css" rel="stylesheet">

</head>

<body>
<!-- 头部模块 -->
<%@include file="/inc/headbar.jsp" %>

<div id="contactWrap">
	<form id="registerForm">
		<div class="overlay">
			<div class="container">
				<div class="row">
					<div class="col-xs-12">
						<h2 class="sectionTitle">
							${not empty register?'个人中心':'用户注册'}
						</h2>
					</div>
				</div>
				<div class="row">
					<input type="text" name="id" id="id" class="hide"  value="${register.id}">
					<div class="col-sm-4 col-sm-offset-2">
						<div class="inputContainer">
							<label>姓名：</label>
							<input type="text" name="nickname" id="nickname" class="form-control" autocomplete="off" value="${register.nickname}" >
						</div>
					</div>
					<div class="col-sm-4">
						<div class="inputContainer">
							<label class="screen-reader-text">性别：</label>
							<div class="form-control" style="line-height:20px;">
								<label class="radio-inline">
									<input type="radio" name="sex" id="sex1" value="男" ${register.sex eq '男' or empty regisgter?'checked':''} > 男
								</label>
								<label class="radio-inline">
									<input type="radio" name="sex" id="sex2" value="女" ${register.sex eq '女'?'checked':''} > 女
								</label>
							</div>
						</div>
					</div>
					<div class="col-sm-4 col-sm-offset-2">
						<div class="inputContainer">
							<label>身份证号：</label>
							<input type="text" name="sfzhm" id="sfzhm" placeholder="请准确填写本人身份证号，用于制作培训证书" class="form-control" autocomplete="off" value="${register.sfzhm}" >
						</div>
					</div>
					<div class="col-sm-4">
						<div class="inputContainer">
							<label>学历：</label>
							<input type="text" name="degree" id="degree" class="form-control" autocomplete="off" value="${register.degree}" >
						</div>
					</div>
					<div class="col-sm-4 col-sm-offset-2 register-adv" style="${empty register?'':'display:none'}">
						<div class="inputContainer">
							<label class="screen-reader-text">会员密码：</label>
							<input type="password" name="password" id="password" value="" class="form-control" autocomplete="off"  />
						</div>
					</div>
					<div class="col-sm-4 register-adv" style="${empty register?'':'display:none'}">
						<div class="inputContainer">
							<label class="screen-reader-text">确认密码：</label>
							<input type="password" name="repassword" id="repassword" value="" class="form-control" autocomplete="off"  />
						</div>
					</div>
					<div class="col-sm-4 col-sm-offset-2">
						<div class="inputContainer">
							<label class="screen-reader-text">工作情况：</label>
							<select id="gzqk" name="gzqk" class="form-control" >
								<option value="">请选择职称</option>
								<option value="在职" ${not empty register and register.gzqk eq '在职'?'selected="selected"':''}>在职</option>
								<option value="普通在校本科生" ${not empty register and register.gzqk eq '普通在校本科生'?'selected="selected"':''}>普通在校本科生</option>
								<option value="普通在校硕士研究生" ${not empty register and register.gzqk eq '普通在校硕士研究生'?'selected="selected"':''}>普通在校硕士研究生</option>
								<option value="普通在校博士研究生" ${not empty register and register.gzqk eq '普通在校博士研究生'?'selected="selected"':''}>普通在校博士研究生</option>
								<option value="其他" ${not empty register and register.gzqk eq '其他'?'selected="selected"':''}>其他</option>
							</select>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="inputContainer">
							<label class="screen-reader-text">单位：</label>
							<input type="text" name="company" id="company" value="${register.company}" class="form-control" autocomplete="off" />
						</div>
					</div>

					<div class="col-sm-4  col-sm-offset-2">
						<div class="inputContainer">
							<label class="screen-reader-text">职称：</label>
							<select id="title" name="title" class="form-control" >
									<option value="">请选择职称</option>
									<option value="教授" ${not empty register and register.title eq '教授'?'selected="selected"':''}>教授</option>
									<option value="副教授" ${not empty register and register.title eq '副教授'?'selected="selected"':''}>副教授</option>
									<option value="讲师" ${not empty register and register.title eq '讲师'?'selected="selected"':''}>讲师</option>
									<option value="助理讲师" ${not empty register and register.title eq '助理讲师'?'selected="selected"':''}>助理讲师</option>
									<option value="研究员" ${not empty register and register.title eq '研究员'?'selected="selected"':''}>研究员</option>
									<option value="副研究员" ${not empty register and register.title eq '副研究员'?'selected="selected"':''}>副研究员</option>
									<option value="助理研究员" ${not empty register and register.title eq '助理研究员'?'selected="selected"':''}>助理研究员</option>
									<option value="研究实习员" ${not empty register and register.title eq '研究实习员'?'selected="selected"':''}>研究实习员</option>
									<option value="教授级高级工程师" ${not empty register and register.title eq '教授级高级工程师'?'selected="selected"':''}>教授级高级工程师</option>
									<option value="高级工程师" ${not empty register and register.title eq '高级工程师'?'selected="selected"':''}>高级工程师</option>
									<option value="工程师" ${not empty register and register.title eq '工程师'?'selected="selected"':''}>工程师</option>
									<option value="助理工程师" ${not empty register and register.title eq '助理工程师'?'selected="selected"':''}>助理工程师</option>
									<option value="高级教师" ${not empty register and register.title eq '高级教师'?'selected="selected"':''}>高级教师</option>
									<option value="高级农艺师" ${not empty register and register.title eq '高级农艺师'?'selected="selected"':''}>高级农艺师</option>
									<option value="农艺师" ${not empty register and register.title eq '农艺师'?'selected="selected"':''}>农艺师</option>
									<option value="助理农艺师" ${not empty register and register.title eq '助理农艺师'?'selected="selected"':''}>助理农艺师</option>
									<option value="其他" ${not empty register and register.title eq '其他'?'selected="selected"':''}>其他</option>
									<option value="其他（研究生等）" ${not empty register and register.title eq '其他（研究生等）'?'selected="selected"':''}>其他（研究生等）</option>
							</select>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="inputContainer">
							<label class="screen-reader-text">职务：</label>
							<input type="text" name="job" id="job" class="form-control" autocomplete="off" value="${register.job}" >
						</div>
					</div>
					<div class="col-sm-4 col-sm-offset-2">
						<div class="inputContainer">
							<label class="screen-reader-text">地址：</label>
							<input type="text" name="address" id="address" value="${register.address}" class="form-control" autocomplete="off" />
						</div>
					</div>
					<div class="col-sm-4">
						<div class="inputContainer">
							<label class="screen-reader-text">邮编：</label>
							<input type="text" name="postcode" id="postcode" value="${register.postcode}" class="form-control" autocomplete="off"/>
						</div>
					</div>
					<div class="col-sm-4 col-sm-offset-2">
						<div class="inputContainer">
							<label class="screen-reader-text">办公电话：</label>
							<input type="text" name="officephone" id="officephone" class="form-control" autocomplete="off" value="${register.officephone}"/>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="inputContainer">
							<label class="screen-reader-text">手机：</label>
							<input type="text" name="telphone" id="telphone" placeholder="请准确填写本人手机号，用于培训现场签到" value="${register.telphone}" class="form-control" autocomplete="off" ${not empty register?'disabled="disabled"':''}/>
						</div>
					</div>
					<div class="col-sm-8 col-sm-offset-2">
						<div class="inputContainer">
							<label class="screen-reader-text">Email：</label>
							<input type="text" name="email" id="email" class="form-control" placeholder="请准确填写email地址，用于接收电子版邀请函以及后续的报道通知" autocomplete="off" ${not empty register?'disabled="disabled"':''} value="${register.email}"/>
							<%--<p style="color:red ;${not empty register?'display:none':''} " >请尽量不要选择QQ邮箱，否则可能无法收到会务组发出的邮件</p>--%>
						</div>
					</div>

					<div class="col-sm-4 col-sm-offset-2">
						<div class="inputContainer">
							<label class="screen-reader-text">住宿要求：</label>
							<div class="form-control" style="line-height:20px;border:none">
								<%--<label class="radio-inline">
									<input type="radio" name="zsyq" id="zsyq1" value="不住宿" ${empty register or register.zsyq eq '不住宿'?'checked':''} > 不住宿
								</label>--%>
								<label class="radio-inline">
									<input type="radio" name="zsyq" id="zsyq2" value="标间" ${register.zsyq eq '标间'?'checked':''} > 标间
								</label>
								<label class="radio-inline">
									<input type="radio" name="zsyq" id="zsyq3" value="单床拼住" ${register.zsyq eq '单床拼住'?'checked':''} > 单床拼住
								</label>
							</div>
						</div>
					</div>
					<div id="zssj_area" class="col-sm-4" >
						<label class="screen-reader-text">住宿时间：</label>
						<table style="width:100%">
							<tr>
								<td class="date">
									<input type="text" name="zskssj" id="zskssj" value="${fn:substring(c,0,10)}" class="form-control" style="width:130px;" autocomplete="off" />
								</td>
								<td width="20" style="padding:2px 4px">到</td>
								<td align="right">
									<input type="text" name="zsjssj" id="zsjssj" value="${fn:substring(register.zsjssj,0,10)}" class="form-control" style="width:130px;" autocomplete="off" />
								</td>
							</tr>
						</table>
					</div>
					<div class="col-sm-4  col-sm-offset-2">
						<label class="screen-reader-text">证件照片：</label>
						<input type="file" name="thesis" id="thesis" class="form-control"  ${not empty thesis?'style="display: none"':'style="display: inline"'} />
						<p style="color:red ;${not empty register?'display:none':''} " >请上传本人正面免冠彩色照片，分辨率大于500*500</p>

					<%--<a id="fileName" class="form-control " href="<%=path%>/auth.do?method=download&fileid=${thesis.id}" ${not empty thesis?'style="display: inline"':'style="display: none"'}>${thesis.filename}.${thesis.type}</a><span class="input-group-addon" >重新上传</span>--%>
						<div class="" id="fileName" ${not empty thesis?'style="display: inline"':'style="display: none"'}>
							<a  class="form-control "  href="<%=path%>/auth.do?method=download&fileid=${thesis.id}" >${thesis.filename}.${thesis.type}</a>
							<span class="btn btn-default" style=" width: 25% ;float: right ;margin-top: -46px" id="btn-clear" >重新上传</span>
						</div>
					</div>
					<div class="col-sm-4 ">
						<div class="inputContainer">
							<label class="screen-reader-text">汇款方式：</label>
							<%--<input type="text" name="hkfs" id="hkfs" value="${register.hkfs}" class="form-control" autocomplete="off"/>--%>
							<select id="hkfs" name="hkfs" class="form-control" >
								<option value="">请选择</option>
								<option value="银行转账" ${not empty register and register.hkfs eq '银行转账'?'selected="selected"':''}>银行转账</option>
								<option value="邮局汇款" ${not empty register and register.hkfs eq '邮局汇款'?'selected="selected"':''}>邮局汇款</option>
								<option value="现场缴费" ${not empty register and register.hkfs eq '现场缴费'?'selected="selected"':''}>现场缴费</option>
							</select>
						</div>
					</div>
					<%--<div class="col-sm-4">
						<div class="inputContainer">
							<label class="screen-reader-text">培训费：</label>
							<input type="text" name="pxf" id="pxf" class="form-control" autocomplete="off" value="${register.pxf}"/>
						</div>
					</div>--%>
					<div class="col-sm-8 col-sm-offset-2">
						<div class="inputContainer">
							<label class="screen-reader-text"><i>备注：</i></label>
							<textarea name="message" id="message" class="form-control" autocomplete="off" >${register.message}</textarea>
						</div>
					</div>
					<c:if test="${not empty register}">
					<div class="col-sm-4 col-sm-offset-2">
						<div class="inputContainer">
							<label class="screen-reader-text">到款情况：</label>
							<input type="text" name="zfflag" id="zfflag" class="form-control" autocomplete="off" value="<c:if test="${register.zfflag eq 0}">未缴纳会议费</c:if><c:if test="${register.zfflag eq 1}">已缴纳会议费</c:if><c:if test="${register.zfflag eq 2}">收到电子版汇款单</c:if>" disabled="disabled" >
						</div>
					</div>
					<div class="col-sm-4">
						<div class="inputContainer">
							<label class="screen-reader-text">注册时间：</label>
							<input type="text" name="yqhfszt" id="registertime" class="form-control" autocomplete="off" value="<fmt:formatDate value="${register.registertime}" type="both"/>" disabled="disabled" >
						</div>
					</div>

					<div class="col-sm-4 col-sm-offset-2">
						<div class="inputContainer">
							<label class="screen-reader-text">电子版邀请函发送状态：</label>
							<input type="text" name="yqhfszt" id="yqhfszt" class="form-control" autocomplete="off" value="${register.yqhfszt}" disabled="disabled" >
						</div>

					</div>
					<div class="col-sm-4">
						<div class="inputContainer">
							<label class="screen-reader-text">纸质版邀请函发送状态：</label>
							<input type="text" name="zfflag" id="zzyqhfszt" class="form-control" autocomplete="off" value="${register.zzyqhfszt}" disabled="disabled" >
						</div>
					</div>
					</c:if>
					<div class="col-sm-8 col-sm-offset-2">
						<c:choose>
							<c:when  test="${empty register}">
								<button id="registerBtn" name="submit" type="button" class="btn btn-primary btn-lg">提交报名</button>
							</c:when >
							<c:otherwise>
								<button id="editBtn" name="submit" type="button" class="btn btn-primary btn-lg">确定修改</button>
							</c:otherwise>
						</c:choose>

						<!-- <c:if test="${not empty register}">
						<button id="payBtn" name="submit" type="button" class="btn btn-primary btn-lg" ${register.zfflag eq '1'?'disabled="disabled"':''}>${register.invoice eq '不需要'?'确定':'生成订单并支付'}</button>
						</c:if> -->
					</div>
					<%--<c:if test="${not empty register}">
						<div class="col-sm-4 col-sm-offset-4" style="padding-top: 20px">
							&lt;%&ndash;<h3 style="text-align: center">二维码</h3>&ndash;%&gt;
							<div id="qrcode">
							</div>
						</div>
					</c:if>--%>

				</div>
			</div>
		</div>
	</form>
</div> <!-- /contactWrap -->
<%@include file="/inc/footer.jsp"%>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script type='text/javascript' src='<%=path%>/dwr/engine.js'></script>
<script type='text/javascript' src='<%=path%>/dwr/util.js'></script>
<script type='text/javascript' src='<%=path%>/dwr/interface/RegisterService.js'></script>
<c:if test="${not empty register}">
	<script type='text/javascript' src='<%=path%>/dwr/interface/OrderService.js'></script>
</c:if>
<script src="<%=path%>/static/js/jquery-1.11.1.min.js"></script>
<script src="<%=path%>/static/js/bootstrap.min.js"></script>
<!-- bootstrap日期控件 -->
<script src="<%=path%>/res/js/bootstrap-datetimepicker.min.js"></script>
<!-- 格式化输入 -->
<script src="<%=path%>/res/js/jquery.inputmask.bundle.js"></script>

<script src="<%=path%>/res/lib/jquery-validation/jquery.validate.min.js"></script>
<script src="<%=path%>/res/lib/jquery-validation/localization/messages_zh.js"></script>

<script src="<%=path%>/res/js/common.js"></script>
<script src="<%=path%>/res/js/card.js"></script>
<script src="<%=path%>/static/spkx/js/biz.js"></script>
<script src="<%=path%>/res/js/qrcode.js"></script>

<script type="text/javascript">
	function not_pc(){
		var os = new Array("Android","iPhone","Windows Phone","iPod","BlackBerry","MeeGo","SymbianOS");  // 其他类型的移动操作系统类型，自行添加
		var info = navigator.userAgent;
		var len = os.length;
		for (var i = 0; i<len; i++) {
			if (info.indexOf(os[i]) >= 0){
				return true;
			}
		}
		return false;
	}

	$(document).ready(function() {

		if(document.getElementById("qrcode")){
			//生成二维码
			var qrcode = new QRCode(document.getElementById("qrcode"), {
				width : 300,//设置宽高
				height : 300
			});
			qrcode.makeCode("http://hy.chnfood.cn/2017spkx/auth.do?method=signin&telphone=${register.telphone}");

		}

		//重新上传论文按钮
		$("#btn-clear").click(function () {
			$("#fileName").attr('style','display: none');
			$("#thesis").attr('style','display: inline');

			var file = $("#file")
			file.after(file.clone().val(""));
			file.remove();
			file.val('');
		});

		if(not_pc()){
			$('.pc_show').hide();
			$('#zftb_zfb').attr('src','<%=path%>/static/assets/img/aliwap.png');
			$('#zftb_wx').attr('src','<%=path%>/static/assets/img/wechatgzh.png');
			$('#zftb_yl').attr('src','<%=path%>/static/assets/img/icon-unwap.png');
		} else {
			$('.pc_hide').hide();
		}

		$('.btn-newpay').off('click').on('click',function(e){
			var register = {
				id : '${register.id}',
				zfflag : '0'
			}
			RegisterService.updateRegisterPaystatus(register,function(ret){
				if(ret)
					window.location.reload();
			});
		});

		$('.btn-deleteorder').off('click').on('click',function(e){
			var order = {id:$(this).data('id'),orderregisterid:$(this).data('orderregisterid')};
			OrderService.deleteOrder(order,function(ret){
				if(ret){
					window.location.reload();
				}
			});
		});

		$('#isAutoLogin').on('change',function(e){
			if($(this).prop('checked')){
				$('.register-adv').show();
			} else {
				$('.register-adv').hide();
			}
		});

		$('#payBtn').off('click').on('click',function(e){
			var that = this;
			var invoice = getInvoiceValue();
			var fptt = $('#fptt').val();
			var rid = '${register.id}';

			if($('input[name="invoice"]:checked').val() == '需要'){
				if(!$('input[name="invoice_chk"]:checked').val()){
					alert('请选择开票内容！');
					return;
				}
				if(!fptt){
					$('#fptt').focus().attr('placeholder','请填写发票抬头！');
					return;
				}
			}

			//先更新会员发票信息，再生成支付订单
			$(that).addClass('disabled');
			RegisterService.updateRegisterInvoice(invoice,fptt,rid,function(success){
				//如果不需要发票则不生成订单
				if(success){
					if(invoice=='不需要'){
						$(that).removeClass('disabled');
						return;
					}
					var order = {
						orderregisterid:'${register.id}',
						orderuname:'${register.nickname}',
						ordertype:$('input[name="ordertype"]:checked').val(),
						ordertitle:'会议费订单',
						orderno:'',//由后台生成
						orderstatus:0,
						ordermoney:$('input[name="ordermoney"]:checked').val(),
						orderrebackmsg:'',
						orderremark:'',
						orderaccount:''
					}

					OrderService.addOrderAndPay(order,function(ret){
						$(that).removeClass('disabled');
						if(ret.success){
							var payPage = "";
							if(order.ordertype == 1)
								payPage = "alipay.jsp?qd="+(!not_pc()?"ALI_WEB":'ALI_WAP');
							else if(order.ordertype == 2)
								payPage = "wxpay.jsp?qd="+(!not_pc()?"WX_NATIVE":'WX_JSAPI');
							else if(order.ordertype == 3)
								payPage = "ylpay.jsp?qd="+(!not_pc()?"UN_WEB":'UN_WAP');
							// window.open(payPage+'?orderno='+ret.order.orderno+'&ordermoney='+ret.order.ordermoney + '&ordertitle='+order.ordertitle);
							// window.location.reload();
							window.location.href = payPage+'&orderno='+ret.order.orderno+'&ordermoney='+order.ordermoney + '&rid='+order.orderregisterid;
						} else {
							alert('订单生成失败，请稍后重试');
							window.location.href = 'index.jsp';
						}
					});
				}
			});
		});

		function getInvoiceValue(){
			var v = $('input[name="invoice"]:checked').val();
			if(v == '需要'){
				v = [];
				$('input[name="invoice_chk"]:checked').each(function(index, chk) {
					v.push($(chk).val());
				});
				v = v.join('、');
			}
			return v||'不需要';
		}

		// 身份证号码验证
		jQuery.validator.addMethod("isIdCardNo", function(value, element) {
			return this.optional(element) || idCardNoUtil.checkIdCardNo(value);
		}, "请正确输入您的身份证号码");

		jQuery.validator.addMethod("isPhone", function(value, element) {
			var length = value.length;
			var mobile = /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1})|(17[0-9]{1}))+\d{8})$/;
			return this.optional(element) || (length == 11 && mobile.test(value));
		}, "请填写正确的手机号码");//可以自定义默认提示信息

		jQuery.validator.addMethod("isTel", function(value, element) {
			var tel = /^\d{3,4}-?\d{7,9}$/; //电话号码格式010-12345678
			return this.optional(element) || (tel.test(value));
		}, "请正确填写您的办公电话");

		// 邮政编码验证
		jQuery.validator.addMethod("isZipCode", function(value, element) {
			var tel = /^[0-9]{6}$/;
			return this.optional(element) || (tel.test(value));
		}, "请正确填写您的邮政编码");

		$("#registerForm").validate({
			errorElement: 'i', //default input error message container
			errorClass: 'fa fa-check', // default input error message class
			focusInvalid: false, // do not focus the last invalid input
			ignore: "",  // validate all fields including form hidden input
			rules: {
				nickname:'required',
				password:{
					required:true,
					minlength:6
				},
				repassword:{
					required:true,
					equalTo:'#password'
				},
				sfzhm: {
					required:true,
					isIdCardNo:true
				},
				degree:'required',
				gzqk:'required',
				job:'required',
				title:'required',
				company:'required',
				officephone:{
					required:true,
					isTel:true
				},
				email: {
					required: true,
					email: true
				},
				telphone: {
					required: true,
					isPhone:true
				},
				address:'required',
				postcode: {
					required:true,
					isZipCode:true
				}
			},
			messages: {
				email: "邮箱格式不正确！",
				password:{
					required:'密码不能为空',
					minlength:'密码长度最少6位'
				},
				repassword:{
					equalTo:'两次密码输入不一致！'
				}
			},
			errorPlacement: function (error, element) { // render error placement for each input type
				element.attr("data-original-title", error.text()).tooltip({'container': 'body'});
				element.attr('placeholder',error.text());
			},

			highlight: function (element) {
				$(element).css('border','2px dotted red');
				$(element).focus();
			},

			success: function (label, element) {
				$(element).removeAttr("data-original-title");
				$(element).css('border','1px solid green');
			},
		});

		//注册按钮
		$('#registerBtn').off('click').on('click',function(e){

			if(!$('#registerForm').valid())
				return false;

			var that = this;
			var register = {
				username:'',
				nickname:$('#nickname').val(),
				password:$('#password').val()||'123',
				sex:$('input[name="sex"]:checked').val(),
				job:$('#job').val(),
				title:$('#title').val(),
				company:$('#company').val(),
				officephone:$('#officephone').val(),
				telphone:$('#telphone').val(),
				email:$('#email').val(),
				address:$('#address').val(),
				postcode:$('#postcode').val(),
				sfztlw:'',//是否张贴论文
				sfsqhyfy:'',//是否申请会议发言
				sffblw:'',//是否发表论文
				gjbh:'',
				journalname:'',//稿件期刊
				gjtm:'',//论文题目
				sfzhm:$('#sfzhm').val(),//身份证号码
				zsyq:$('input[name="zsyq"]:checked').val(),
				zskssj:$('input[name="zsyq"]:checked').val() === '不住宿'?'':$('#zskssj').val(),
				zsjssj:$('input[name="zsyq"]:checked').val() === '不住宿'?'':$('#zsjssj').val(),

				gzqk:$('#gzqk').val(),//工作情况
				fax:'',//传真
				degree:$('#degree').val(),//学历
				invoice:'',
				sfcjsx:'',
				sxxl:'',
				fptt:'',
				gjzt:'',
				fytm:'',//发言题目
				fynrzy:'',//发言内容摘要
				sfzs:$('input[name="zsyq"]:checked').val() === '不住宿'?'否':'是',
				yqhfszt:'',
				message:$('#message').val(),

				hkfs:$('#hkfs').val(),
				pxf:''
			};
			if(!register.nickname){
				$('#nickname').focus().attr('placeholder','该项不能为空！');
				return;
			}

			//密码校验
			if(!register.password){
				$('#password').focus().attr('placeholder','密码不能为空！');
				return;
			}
			if(register.password != $('#repassword').val()){
				alert('两次输入密码不一致！');
				$('#repassword').focus();
				return;
			}

			if(!register.title){
				$('#title').focus().attr('placeholder','该项不能为空！');
				return;
			}
			if(!register.job){
				$('#job').focus().attr('placeholder','该项不能为空！');
				return;
			}
			if(!register.email){
				$('#email').focus().attr('placeholder','该项不能为空！');
				return;
			}
			if(!register.telphone){
				$('#telphone').focus().attr('placeholder','该项不能为空！');
				return;
			}
			if(!register.company){
				$('#company').focus().attr('placeholder','该项不能为空！');
				return;
			}
			if(!register.postcode){
				$('#postcode').focus().attr('placeholder','该项不能为空！');
				return;
			}
			if(!register.address){
				$('#address').focus().attr('placeholder','该项不能为空！');
				return;
			}

			if($('input[name="invoice"]:checked').val() == '需要'){
				if(!$('input[name="invoice_chk"]:checked').val()){
					alert('请选择开票内容！');
					return;
				}
				if(!register.fptt){
					$('#fptt').focus().attr('placeholder','请填写发票抬头！');
					return;
				}
			}
			 $(that).addClass('disabled');
			RegisterService.hasRegisterByTel(register,function(has){
				if(!has){
					// alert(has);
					//注册：参数说明register为注册信息,isSendMail表示是否发送邮件
					var isSendMail = true;
					var file = dwr.util.getValue("thesis");
					var fileName = $("#thesis").val();
					RegisterService.register(register,isSendMail,file,fileName,function(msg){
						if(msg){
							alert('报名成功，请查收邮件回执!');
							$(that).removeClass('disabled');
							$('#registerForm')[0].reset();
							// if($('#isAutoLogin').prop('checked')){
							window.location.reload();
							// }
						}
					});
				} else {
					alert('该手机或邮箱报名者已经存在，请不要重复报名！');
					$('#telphone').focus();
					$(that).removeClass('disabled');
				}
			});
		});
		//修改按钮
		$('#editBtn').off('click').on('click', function (e) {

			if(!$('#id').val()) {
				alert('登录超时，请重新登录！');
				window.location.href = app.ctx+'/login.jsp';
			}

			if(!$('#registerForm').valid())
				return false;

			var that = this;
			var register = {
				id: $('#id').val(),
				username:'',
				nickname:$('#nickname').val(),
//				password:$('#password').val(),
				sex:$('input[name="sex"]:checked').val(),
				job:$('#job').val(),
				title:$('#title').val(),
				company:$('#company').val(),
				officephone:$('#officephone').val(),
				telphone:$('#telphone').val(),
				email:$('#email').val(),
				address:$('#address').val(),
				postcode:$('#postcode').val(),
				sfztlw:'',//是否张贴论文
				sfsqhyfy:'',//是否申请会议发言
				sffblw:'',//是否发表论文
				gjbh:'',
				journalname:'',//稿件期刊
				gjtm:'',//论文题目
				sfzhm:$('#sfzhm').val(),//身份证号码
				zsyq:$('input[name="zsyq"]:checked').val(),
				zskssj:$('input[name="zsyq"]:checked').val() === '不住宿'?'':$('#zskssj').val(),
				zsjssj:$('input[name="zsyq"]:checked').val() === '不住宿'?'':$('#zsjssj').val(),

				gzqk:$('#gzqk').val(),//工作情况
				fax:'',//传真
				degree:$('#degree').val(),//学历
				invoice:'',
				sfcjsx:'',
				sxxl:'',
				fptt:'',
				gjzt:'',
				fytm:'',//发言题目
				fynrzy:'',//发言内容摘要
				sfzs:$('input[name="zsyq"]:checked').val() === '不住宿'?'否':'是',
				yqhfszt:'',
				message:$('#message').val(),

				hkfs:$('#hkfs').val(),
				pxf:''

			};

			if ((register.password) &&register.password != $('#repassword').val()) {
				alert('两次输入密码不一致！');
				$('#repassword').focus();
				return;
			}
			if (!register.nickname) {
				$('#nickname').focus().attr('placeholder', '该项不能为空！');
				return;
			}


			$("#editBtn").prop('disabled', true);
			//注册：参数说明register为注册信息,isSendMail表示是否发送邮件
			var isSendMail = false;
			var files=null;
			var fileName =  $("#thesis").val();
			if(fileName){
				files = dwr.util.getValue("thesis");//这是dwr包提供的util.js文件里面的方法
			}

			RegisterService.register(register, isSendMail,files,fileName, function (msg) {
				if (msg) {
					alert('修改成功!');
					$(that).removeClass('disabled');
//							$('#registerForm')[0].reset();
					$("#editBtn").prop('disabled', false);
					// if($('#isAutoLogin').prop('checked')){
					window.location.reload();
					// }
				}
			});
		});
		$('input[name="invoice"]').change(function(event) {
			if($('input[name="invoice"]:checked').val()=='不需要'){
				$('.check-group').hide();
				$('.register-pay').hide();
				// $('#payBtn').prop('disabled',true);
				$('#payBtn').html('确定');
				$('#invoice_msg').html('说明：请与客服联系线下付款！');
			} else {
				$('.check-group').show();
				$('.register-pay').show();
				// $('#payBtn').prop('disabled',false);
				$('#payBtn').html('生成订单并支付');
				$('#invoice_msg').html('说明：会议费发票由北京国科智地科技有限公司开具，实习费由当地旅行社开具。');
			}
		});

		$('input[name="sfcjsx"]').change(function(event) {
			if($('input[name="sfcjsx"]:checked').val()=='不参加')
				$('.select-sxxl').hide();
			else
				$('.select-sxxl').show();
		});

		$('.btn-register').off('click').on('click',function(e){
			var target = $('#contactWrap');
			if ($(window).width() < 768) {
				if (target.length) {
					$('html,body').animate({
						scrollTop: target.offset().top - $('.navbar-header').outerHeight(true) + 1
					}, 1000);
					return false;
				}
			}
			else {
				if (target.length) {
					$('html,body').animate({
						scrollTop: target.offset().top - $('.navbar').outerHeight(true) + 1
					}, 1000);
					return false;
				}
			}
		});

		$('.btn-login').off('click').on('click',function(e){
			// window.location.href = 'login.jsp';
			// 由于很多人已经在没有设置密码时期报名，暂时改为直接用手机号无需密码登录
			window.location.href = 'loginWithoutPwd.jsp';
		});

		$('.btn-logout').off('click').on('click',function(e){
			RegisterService.logout(function(){
				// window.location.reload();
				window.location.href = 'loginWithoutPwd.jsp';
			});
		});

		$('a[href*=#]:not([href=#])').click(function() {
			if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') || location.hostname == this.hostname) {
				var target = $(this.hash);
				target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
				if ($(window).width() < 768) {
					if (target.length) {
						$('html,body').animate({
							scrollTop: target.offset().top - $('.navbar-header').outerHeight(true) + 1
						}, 1000);
						return false;
					}
				}
				else {
					if (target.length) {
						$('html,body').animate({
							scrollTop: target.offset().top - $('.navbar').outerHeight(true) + 1
						}, 1000);
						return false;
					}
				}

			}
		});

		var hash = '${param["position"]}';
		if(hash){
			var target = $('#'+hash);
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

		$('#toTop').click(function() {
			$('html,body').animate({
				scrollTop: 0
			}, 1000);
		});

		var timer;
		$(window).bind('scroll',function () {
			clearTimeout(timer);
			timer = setTimeout( refresh , 50 );
		});
		var refresh = function () {
			if ($(window).scrollTop()>100) {
				$(".tagline").fadeTo( "slow", 0 );
			}
			else {
				$(".tagline").fadeTo( "slow", 1 );
			}
		};

		// Mobile Navigation
		$('.nav').find('a').on('click', function() {
			var menuBtn = $('.navbar-toggle');
			if(menuBtn.css('display')=='block')
				$('.navbar-toggle').click();
		});

		$('input[name="sfztlw"]').change(function(e){
			$('#lw_area').toggle();
		});

		$('input[name="sfsqhyfy"]').change(function(e){
			$('#fy_area').toggle();
		});

		$('input[name="sffblw"]').change(function(e){
			$('#gj_area').toggle();
		});

		/*$('input[name="zsyq"]').change(function(e){
			if($('input[name="zsyq"]:checked').val()=='不住宿')
				$('#zssj_area').hide();
			else
				$('#zssj_area').show();
		});*/
		$('#zskssj').datetimepicker({
			minView: "month", //选择日期后，不会再跳转去选择时分秒
			format: 'yyyy-mm-dd',
			language: 'zh-CN',
			autoclose:true ,//选择日期后自动关闭
			width:'100%',
			startDate:new Date().getMonth()<=7?'2017-08-01':new Date(),
			endDate:'2017-08-31'
		}).on('changeDate',function(e){
			var startTime = e.date;
			$('#zsjssj').datetimepicker('setStartDate',startTime);
		});
		$('#zsjssj').datetimepicker({
			minView: "month", //选择日期后，不会再跳转去选择时分秒
			format: 'yyyy-mm-dd',
			language: 'zh-CN',
			autoclose:true ,//选择日期后自动关闭
			width:'100%',
			startDate:new Date().getMonth()<=7?'2017-08-01':new Date(),
			endDate:'2017-08-31'
		}).on('changeDate',function(e){
			var endTime = e.date;
			$('#zskssj').datetimepicker('setEndDate',endTime);
		});
		<c:choose>
		<c:when  test="${not empty register}">
		$('#zskssj').val('${fn:substring(register.zskssj,0,10)}');
		$('#zsjssj').val('${fn:substring(register.zsjssj,0,10)}');
		</c:when >
		<c:otherwise>
		//$('#zskssj,#zsjssj').val(new Date().getMonth()<=7?'2017-08-01':new Date().format('yyyy-MM-dd'));
		</c:otherwise>
		</c:choose>
		$('#zskssj,#zsjssj').inputmask("2099-99-99");
		$("#telphone").inputmask('19999999999');
		$("#postcode").inputmask('999999');
	});
</script>
</body>
</html>