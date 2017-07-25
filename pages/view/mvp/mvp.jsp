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
		<title>商务车</title>
		
	</head>
	<body>
		<div data-role="page">
			<div class="header">
				<h2>商务车</h2>
				<a href="#userDetail" class="pull-right"><i class="fa fa-user"></i></a>
				<a href="#" class="pull-left">×</a>
			</div><!-- /header -->
			<div class="content-bar ui-content">
				<div class="chosen">
					<ul>
						<li class="active">
							<span>GL8</span>
							<span><img src="${ctx }/resource/image/gl8.png" alt="" width="80" height="50"/></span>
							<span class="chosenBtn">
								<i class="fa fa-check"></i>
								<input type="radio" name="choose"  />
							</span>
							
						</li>
						<li>
							<span>黄海瑞途</span>
							<span><img src="${ctx }/resource/image/hhrt.png" alt="" height="50" /></span>
							<span class="chosenBtn">
								<i class="fa fa-check"></i>
								<input type="radio" name="choose"  />
							</span>
						</li>
					</ul>
				</div>
				<div class="road">
					<div>
						<input type="text" placeholder="沈阳北站" />
						<i class="fa fa-street-view"></i>
					</div>
					<div>
						<input type="text" placeholder="目的地" />
						<i class="fa fa-map-marker"></i>
					</div>
				</div>
				<div class="scrollImg">
					<ul id="imgContainer">
						<li><img src="${ctx }/resource/image/inside/safety0.jpg" alt=""/></li>
						<li><img src="${ctx }/resource/image/inside/safety1.jpg" alt=""/></li>
						<li><img src="${ctx }/resource/image/inside/safety2.jpg" alt=""/></li>
						<li><img src="${ctx }/resource/image/inside/safety3.jpg" alt=""/></li>
					</ul>
				</div>
				<div class="costRole">
					<span>价格计算：套餐价：50元</span>
					<span>超出按<i class="fa fa-jpy"></i>0.5/分钟+<i class="fa fa-jpy"></i>4.1/公里计费</span>
				</div>
				
				<div class="cost">
					<span>预估价<strong><i class="fa fa-jpy"></i>50</strong></span>
				</div>
			</div>
			<script>
			
				$(function(){
					$(".chosenBtn").on('tap',function(){
						$(".chosen>ul>li").removeClass('active');
						$(this).parent().addClass('active');
						$(this).parent().children("input").attr('checked','checked');
					});
					var child = $("#imgContainer").children('li').length;
					var left=0;
					
					$("#imgContainer").width((child*350)+'px');
					$("#imgContainer").on("swipeleft",function(){
						if(left>-350*(child-1)){
							left = left-350;
							$(this).animate({'left':left+'px'},500);
						}
					})
					$("#imgContainer").on("swiperight",function(){
						if(left<0){
							left = left+350;
							$(this).animate({'left':left+'px'},500);
						}
					})
					window.setInterval(function(left){
						
						if(left>-350*(child-1)){
							left = left-350;
							
						}else if(left<=-350*(child-1)){
							left = left+350;
						}else if(left>0){
							left=left-350;
						}else if(left<=0){
							left=left+350;
						}
						$("#imgContainer").animate({'left':left+'px'},500);
					},1000);
				})
			</script>
		</div>
	</body>
</html>
