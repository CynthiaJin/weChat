<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1,userscale=no,maximum-scale=1.0,minimum-scale=1.0">
		<link href="${ctx }/resource/font-awesome-4.4.0/css/font-awesome.css" type="text/css" rel="stylesheet" />
		<link rel="stylesheet" href="${ctx }/resource/css/style.css" type="text/css" />
		<link rel="stylesheet" href="${ctx }/resource/css/main.css" type="text/css" />
		<link rel="stylesheet" href="${ctx }/resource/jquery-mobile/css/themes/default/jquery.mobile-1.4.5.min.css" type="text/css" />
		<script src="${ctx }/resource/js/jquery-1.10.1.min.js" type="text/javascript"></script>
		<script src="${ctx }/resource/jquery-mobile/js/jquery.mobile-1.4.5.min.js" type="text/javascript"></script>
		<title>用户手机绑定</title>
		<style>
	
		</style>
	</head>
	<body data-role="page">
		<div class="box bindingpage">
		    <!--页头-->
		    <!-- <div class="topColor">
		        <div class="topTitle center">用户绑定</div>
		    </div>
		    <div class="clear"></div> -->
		    <div style="background:#35A8D7;height:5px;"></div>
		    <!--页头结束-->
		    <!--主体-->
		    <div class="mainBox bottom0">
		    	<!--<div class="bindingRoute" id="bindRoute">
					<ul>
						<li class="active">请输入手机号</li>
						<li>请输入验证码</li>
						<li>完成绑定</li>
					</ul>
				</div>-->
				<img class="img" src="${ctx }/resource/image/main/ad4.png" />
				<div class="binding bodyPadding">
					<div class="pageone active">
						<span >绑定手机号，赚积分！！</span>
						<div class="phone">
							<i class="fa fa-phone"></i>
							<input type="text" id="phone" name="phone" placeholder="请输入电话号码" />
						</div>
						<div class="code">
							<i class="fa fa-shield"></i>
							<input type="text" id="checkCode" name="checkCode" placeholder="验证码" />
							<a href="javascript:getNumCode();" class="btn btn-success" id="checkCode">获取验证码</a>
						</div>
						<a class="btn btn-success" href="javascript:submit();" id="submitBinding">提交绑定</a>
					</div>
				</div>
		    </div>
		    <!--主体结束-->
		    <!--页脚
		    <div class="footer">
		    <div class="iconBox">
		        <div class="icon"><img src="../../resource/image/main/icon1.png"></div>
		        <p>城际巴士</p>
		    </div>
		    <div class="iconBox">
		        <div class="icon"><img src="../../resource/image/main/icon2.png"></div>
		        <p role="mid">商务车</p>
		    </div>
		    <div class="iconBox">
		        <div class="icon"><img src="../../resource/image/main/icon3.png"></div>
		        <p>机场快线</p>
		    </div>
		    </div>
		    <!--页脚结束-->
			<script type="text/javascript">
				function sendCode() {
					$("#checkCode").unbind('click');
					$('#bindRoute>ul>li').removeClass('active');
					$('#bindRoute>ul>li:eq(1)').addClass('active');
		
					$("#checkCode").addClass('check');
					var s = 30;
					var i = window.setInterval(function() {
						$("#checkCode").text(s + "s 后重发");
						s--;
						if (s == 0) {
							window.clearInterval(i);
							$("#checkCode").removeClass('check').text('重新发送');
							$("#checkCode").bind('click', function() {
								sendCode();
							});
						}
					}, 1000);
				}
		
				$("#checkCode").bind('click', function() {
					sendCode();
				});
				
				function submit(){			
					var phone = $("#phone").val();
					var checkCode = $("#checkCode").val();
					var openid = "${openid }";
					if(!phone||phone==""){
						alert("手机号不能为空");
						return;
					}
					if(!checkCode||checkCode==""){
						alert("验证码不能为空");
						return;
					}
					location.href="${ctx}/bind/binding2.do?openid="+openid+"&phone="+phone+"&checkCode="+checkCode;
		// 			location.href="${ctx}/bind/getAccessToken.do?phone="+phone;
				}
				
				function getNumCode(){
					var phone = $("#phone").val();
					if(phone==""){
						alert("请输入验证吗");
						return;
					}
					$.ajax({
						url:"${ctx}/bwebCommon/sendMessage.do?json",
						data:{phone:phone},
						success:function(data){
							if(data==1){
								alert("请检查电话号码是否正确");
							}else if(data==2){
								alert("系统繁忙，请稍后获取验证码");
								//临时添加, 不再发送短信
							}else if(data > 2){
								alert("验证码:"+data);
							}else{
								alert("验证码已发送，请查看");
							}
						},error:function(){
							alert("后台异常");
						}
					});
				}
			</script>
		</div>
</body>
</html>
