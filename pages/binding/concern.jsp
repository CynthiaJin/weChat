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
		<title>用户关注</title>
		<style>
			.img{
				width:100% !important;
				display:block !important;
				margin:20px auto !important;
			}
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
				<img class="img" src="${ctx }/resource/image/main/qrcode.jpg" />
				<div class="binding bodyPadding">
					<div class="pageone active">						
						<!-- <div class="phone">
							<i class="fa fa-phone"></i>
							<input type="text" id="phone" name="phone" placeholder="请输入电话号码" />
						</div>
						<div class="code">
							<i class="fa fa-shield"></i>
							<input type="text" id="checkCode" name="checkCode" placeholder="验证码" />
							<a href="javascript:getNumCode();" class="btn btn-success" id="checkCode">获取验证码</a>
						</div>
						<a class="btn btn-success" href="javascript:submit();" id="submitBinding">提交绑定</a>
					</div> -->
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
		</div>
</body>
</html>
