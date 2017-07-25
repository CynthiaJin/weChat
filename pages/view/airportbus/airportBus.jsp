<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link href="../resource/font-awesome-4.4.0/css/font-awesome.css" type="text/css" rel="stylesheet" />
		<link rel="stylesheet" href="${ctx }/resource/jquery-mobile/css/themes/default/jquery.mobile-1.4.5.min.css" />
		<link rel="stylesheet" href="${ctx }/resource/css/bootstrap.min.css" type="text/css" />
		<link rel="stylesheet" href="${ctx }/resource/css/main.css" type="text/css" />
		<script src="${ctx }/resource/js/jquery-1.10.1.min.js" type="text/javascript"></script>
		<script src="${ctx }/resource/js/jquery.SuperSlide.js" type="text/javascript"></script>
		<script type="text/javascript" src="${ctx }/resource/jquery-mobile/js/jquery.mobile-1.4.5.min.js" ></script>
		<script type="text/javascript" src="${ctx }/resource/js/bootstrap.min.js" ></script>
		<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=ezofnKG8X1gQ29UuOUjQlo1Q"></script> 
		<script type="text/javascript" src="${ctx }/resource/lbs/js/jquery.bmap.core.js" ></script>
		<script type="text/javascript" src="${ctx }/resource/lbs/js/jquery.bmap.overlay.js" ></script>
		<title>机场专线</title>
		<style>
			.content-bar .todayRoute .piece{}
			
			
		</style>
	</head>
	<body>
		<div data-role="page" class="airportBus">
			<div class="header">
				<h2>城际客运-机场专线</h2>
				<a href="#userDetail" class="pull-right"><i class="fa fa-user"></i></a>
				<a href="#" class="pull-left">×</a>
			</div><!-- /header -->
			<div class="content-bar ui-content">
				<div class="allLine">
					<span><i class="fa fa-search"></i> 查看全部空港城际专线</span>
				</div>
				<div class="form">
					<div class="input">
						<i class="fa fa-send-o"></i>
						<input id="out" type="text" placeholder="出发地" />
					</div>
					<div class="input">
						<i class="fa fa-map-marker"></i>
						<input id="in" type="text" placeholder="目的地"  />
					</div>
					<div class="input">
						<i class="fa fa-clock-o"></i>
						<input type="text" placeholder="今天 2016/2/27 /17:01" />
					</div>
					<a href="busList.html" class="btn btn-default">查询线路</a>
				</div>
				<div class="todayRoute">
					<h2>今日线路</h2>
					<div>
						<div class="piece">
							<span><i class="fa fa-bus"></i> <strong>本溪</strong>--<strong>沈阳桃仙机场</strong></span>
							<span>当前时间暂无空港城际专线</span>
							<span>17:20出发</span>
							
						</div>
					</div>
				</div>
			</div>
			<div data-role="panel" id="userDetail" data-display="overlay" data-position="right">
				<ul>
					<li>
						<span class="logo"></span>
						<span>136****8982</span>
						<a class="ui-btn" href="#">退出</a>
					</li>
					<li>
						<a><i></i></a>
					</li>
					
				</ul>
				
			</div>
			<script>
		$(function(){
			$("#out").bind('click',function(){
				window.location.href="posDetail.html";
			})
			$("#in").bind('click',function(){
				window.location.href="posDetail.html";
			})
		})
		</script>
		</div>
	</body>
</html>
