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
		<link href="${ctx }/resource/font-awesome-4.4.0/css/font-awesome.css" type="text/css" rel="stylesheet" />
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
		<title>城际交通-雷锋号</title>
		
	</head>
	<body>
		<div data-role="page">
			<div class="header">
				<h2>城际客运-雷锋号</h2>
				<a href="#userDetail" class="pull-right"><i class="fa fa-user"></i></a>
				<a href="#" class="pull-left">×</a>
			</div><!-- /header -->
			<div class="content-bar ui-content">
				<div class="brand">
					<img src="${ctx }/resource/image/lfh.png" width="80" height="80" />
					<span>雷锋号为您服务</span>
				</div>
				<div class="form" >
					<div class="input">
						<i class="fa fa-send-o"></i>
						<input id="out" type="text" placeholder="出发地" />
					</div>
					<div class="input">
						<i class="fa fa-map-marker"></i>
						<input id="in" type="text" placeholder="目的地"  />
					</div>
					<!-- <a href="busList.html" class="btn btn-default">查询线路</a> -->
					<a onclick="selectLine();" class="btn btn-default">查询线路</a>
				</div>
				<div class="normalRoute">
					<h2>常用线路</h2>
					<div>
						<a>珠林桥</a>
						<a>惠工广场</a>
						<a>珠林桥</a>
						<a>惠工广场</a>
						<a>珠林桥</a>
						<a>惠工广场</a>
						<a>珠林桥</a>
						<a>惠工广场</a>
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
			var outSite;
			var inSite;
			var one;
			var two;
		$(function(){
					
			$("#out").bind('click',function(){
				var id='out';
				window.location.href="${ctx }/trasportview/testMap.do?id="+id;
				
			})
			$("#in").bind('click',function(){
				var id='in';
				window.location.href="${ctx }/trasportview/testMap.do?id="+id;
			})
			
			outSite='${out}';
			if(outSite!=null&&outSite!=''){
				$("#out").val(outSite);
			}
			inSite='${in}';
			if(inSite!=null&&inSite!=''){
				$("#in").val(inSite);
			}
		})
		
		function selectLine(){

			one=$("#out").val();
			two=$("#in").val();
			if(one==null||one==''||one==undefined){
				$("#out").attr('placeholder','请输入始发站');
				return;
			}
			if(two==null||two==''||two==undefined){
				$("#in").attr('placeholder','请输入终点站');
				return;
			}
			
			window.location.href="${ctx}/trasportview/togetlines.do?star="+one+"&end="+two;
		}
		
		
		
		</script>
		</div>
	</body>
</html>
