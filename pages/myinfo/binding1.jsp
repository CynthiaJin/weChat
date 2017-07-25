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
<head lang="en">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="format-detection" content="telephone=no" />
    <title>用户绑定</title>
    <link rel="stylesheet" href="${ctx }/resource/font-awesome-4.4.0/css/font-awesome.css" />
    <link rel="stylesheet" href="${ctx }/resource/css/style.css"/>
    <link rel="stylesheet" type="text/css" href="${ctx }/resource/css/main.css"/>
    <link rel="stylesheet" href="${ctx }/resource/jquery-mobile/css/themes/default/jquery.mobile-1.4.5.min.css" />
    <script src="${ctx }/resource/js/jquery-1.10.1.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="${ctx }/resource/js/main.js" ></script>
    <script type="text/javascript" src="${ctx }/resource/jquery-mobile/js/jquery.mobile-1.4.5.min.js" ></script>
    <style>
    	.btn{text-align: center;color: #FFFFFF !important;display: inline-block;border-radius: 4px;}
    </style>
</head>
<body>
<div class="box busDetail" data-role="page">
    <!--页头-->
    <div class="topColor">
        <div class="topIcon"><img src="${ctx }/resource/image/main/backup.png"></div>
        <div class="topTitle">城际巴士-线路详情</div>
        <div class="topIcon2"><img src="${ctx }/resource/image/main/user.png"></div>
    </div>
    <div class="clear"></div>
    <!--页头结束-->
    <!--主体-->
    <div class="mainBox">
    	<!--<div class="bindingRoute" id="bindRoute">
			<ul>
				<li class="active">请输入手机号</li>
				<li>请输入验证码</li>
				<li>完成绑定</li>
			</ul>
		</div>-->
		<img src="${ctx }/resource/image/main/ad4.png" />
		<div class="binding bodyPadding">
	       <div class="pageone active">
				<span >绑定手机号，赚积分！！</span>
				<div class="phone">
					<i class="fa fa-phone"></i>
					<input type="text" name="phone" placeholder="请输入电话号码" />
				</div>
				<div class="code">
					<i class="fa fa-shield"></i>
					<input type="text" name="checkCode" placeholder="验证码" />
					<a class="btn btn-success" id="checkCode">获取验证码</a>
				</div>
				<a class="btn btn-success" href="binding2.html" id="submitBinding">提交绑定</a>
			</div>
		</div>
    </div>
    <!--主体结束-->
    <!--页脚
    <div class="footer">
    <div class="iconBox">
        <div class="icon"><img src="${ctx }/resource/image/main/icon1.png"></div>
        <p>城际巴士</p>
    </div>
    <div class="iconBox">
        <div class="icon"><img src="${ctx }/resource/image/main/icon2.png"></div>
        <p role="mid">商务车</p>
    </div>
    <div class="iconBox">
        <div class="icon"><img src="${ctx }/resource/image/main/icon3.png"></div>
        <p>机场快线</p>
    </div>
    </div>
    <!--页脚结束-->
    <script type="text/javascript">
		function sendCode(){
			$("#checkCode").unbind('click');
			$('#bindRoute>ul>li').removeClass('active');
			$('#bindRoute>ul>li:eq(1)').addClass('active');
			
			$("#checkCode").addClass('check');
			var s = 30;
			var i =window.setInterval(function(){
				$("#checkCode").text(s+"s 后重发");
				s--;
				if(s==0){
					window.clearInterval(i);
					$("#checkCode").removeClass('check').text('重新发送');
					$("#checkCode").bind('click',function(){
						sendCode();
					});
				}
			},1000);
		}
		
			$("#checkCode").bind('click',function(){
				sendCode();
			});
			
		</script>
</div>
</body>
</html>