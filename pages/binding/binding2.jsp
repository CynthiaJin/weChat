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
		<link rel="stylesheet" href="${ctx }/resource/css/main.css" type="text/css" />
		<link rel="stylesheet" href="${ctx }/resource/css/style.css" type="text/css" />
		<link rel="stylesheet" href="${ctx }/resource/jquery-mobile/css/themes/default/jquery.mobile-1.4.5.min.css" type="text/css" />
		<script src="${ctx }/resource/js/jquery-1.10.1.min.js" type="text/javascript"></script>
		<script src="${ctx }/resource/jquery-mobile/js/jquery.mobile-1.4.5.min.js" type="text/javascript"></script>
		<title>用户手机绑定</title>
	</head>
	<body data-role="page">
		<div class="box bindingpage bindingpage2">
		    <!--页头-->
		    <!-- div class="topColor">
		        <div class="topTitle center">用户绑定</div>
		    </div>
		    <div class="clear"></div> -->
		    <div style="background:#35A8D7;height:5px;"></div>
			<div class="mainBox">
				<div class="binding bodyPadding">
					<div class="pagetwo">
						<div>
							<img class="img" src="${ctx }/resource/image/success.png" />
						</div>
						<%
							Object url =request.getSession().getAttribute("filterUrl");
							System.out.println(url);
						%>
						
						<span>手机号绑定成功！</span>
						<a class="btn" href="${filterUrl }" data-ajax="false">完成</a>
<%-- 						<a class="btn" href="${ctx }/myinfo/in/advice.do" data-ajax=“false”>完成</a> --%>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
