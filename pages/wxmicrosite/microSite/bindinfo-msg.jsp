<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML>
<html>
<head>
<link href="<%=path%>/resouces/css/m.css" rel="stylesheet" type="text/css" />
<title>绑定信息</title>
<script src="<%=path%>/resouces/js/jquery-2.1.1.min.js" type="text/javascript"></script>
<link rel="stylesheet" href="<%=path%>/resouces/css/cate.css">
<link rel="stylesheet" href="<%=path%>/resouces/css/style.css">
<style type="text/css">
		body {background: url(<%=path%>/resouces/image/bg.gif) repeat;}
		.userline{height:50px;border:1px solid #CCCCCC;line-height: 50px;width:99%;}
		.userline_1{height:100%;width:25%;  text-align: center;}
		.userline_2{height: 50px;text-align: left;}
	
</style>
</head>
<body>
<div id="top">
			<span id="list">
		     	<a href="javascript:window.history.back();"><img src="<%=path%>/resouces/image/goback.png" align="top"></a>
			</span>
		</div>
		<div id="con">
			<div id="login_div">
					<div class="userline">
						<div class="userline_1">工号：</div>
						<div class="userline_2">
							<input type="text" name="empNo" id="empNo" value="123456" readonly="readonly"/>			
						</div>
					</div>
					<div class="userline">
						<div class="userline_1 c1">手机号：</div>
						<div class="userline_2">
								<input name="mobileNum" id="mobileNum" type="text" value="18800160185" readonly="readonly"/>				
						</div>
					</div>
					<div class="userline">
						<div class="userline_1 c2">姓名：</div>
						<div class="userline_2">
							<input name="realName" id="realName" type="text" value="微信测试号" readonly="readonly"/>
						</div>
					</div>
					<div class="userline">
						<div class="userline_1 c3">微信号：</div>
						<div class="userline_2">
							<input name="unit" id="unit" type="text" value="weixinzhanghao" readonly="readonly"/>
						</div>
					</div>
					<div class="userline">
						<div class="userline_1 c4">身份证：</div>
						<div class="userline_2">
							<input name="cardId" id="cardId" type="text" value="133254756958214475" readonly="readonly"/>
						</div>
					</div>
			</div>		
		</div>	

</body>
</html>