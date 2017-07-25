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
		<title>城际bus 详情</title>
	</head>
	<body>
		<div data-role="page" id="busDetail" class="busDetail">
			<div class="header">
				<h2>3号线（高湾）</h2>
				<a href="#userDetail" class="pull-right"><i class="fa fa-user"></i></a>
				<a href="#" onclick="javascript:history.back()" class="pull-left"><i class="fa fa-angle-left"></i></a>
				<a href="#" class="pull-left">×</a>
			</div><!-- /header -->
			<div class="content-bar">
				<div class="mapContainer" id="busDet"></div>
				<div class="mList busMessage ui-content">
					<div class="piece">
						<a>
							<ul>
								<li class="firstRow">
									<span><i class="fa fa-bus gray"></i><strong class="">1021</strong></span>
								</li>
								<li class="secondRow">
									<span>本溪<i class="fa fa-arrow-right"></i>沈阳南站</span>
									<small>（全程：120分钟）</small>
								</li>
								<li class="thirdRow">
									<span><small>首车：05:05</small>--<small>末车：17:20</small></span>
									<small>车隔：20-30分钟</small>
								</li>
								<li class="pull-down">
									<div class="point">
										<h2>全部站点</h2>
										<div class="bus-list">
											<ul>
												<li><span><small class="grey">1</small>抚顺南站</span></li>
												<li><span><small class="grey">2</small>三街道</span></li>
												<li><span><small class="grey">3</small>大官屯</span></li>
												<li><span><small class="grey">4</small>海城</span></li>
												<li><span><small class="grey">5</small>油研</span></li>
												<li><span><small class="grey">6</small>七首</span></li>
												<li><span><small class="grey">7</small>石化大学</span></li>
												<li><span><small class="grey">8</small>北镇街北</span></li>
												<li><span><small class="grey">9</small>和平桥北</span></li>
												<li><span><small class="grey">10</small>高湾</span></li>
												<li><span><small class="grey">11</small>海阳镇</span></li>
												<li><span><small class="grey">12</small>来广营西桥东</span></li>
												<li><span><small class="grey">13</small>来广营西桥东</span></li>
												<li><span><small class="grey">14</small>来广营西桥东</span></li>
												<li><span><small class="grey">15</small>来广营西桥东</span></li>
												<li><span><small class="grey">16</small>来广营西桥东</span></li>
												<li><span><small class="grey">17</small>来广营西桥东</span></li>
												<li><span><small class="grey">18</small>来广营西桥东</span></li>
												<li><span><small class="grey">19</small>来广营西桥东</span></li>
												<li><span><small class="grey">20</small>沈阳北站</span></li>
											</ul>
										</div>
									</div>
									<i class="fa fa-angle-double-down" id="down"></i>
								</li>
							</ul>
							<span><i class="fa fa-jpy"></i>36</span>
							
						</a>
						
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
			$(document).ready(function(){
				$("#down").on("tap",function(){
				if($(this).parent().children('.point').css('display')=='none'){
					$(this).parent().children('.point').slideDown('fast');
					$(this).removeClass('fa-angle-double-down').addClass('fa-angle-double-up');
				}else{
					$(this).parent().children('.point').slideUp('fast');
					$(this).removeClass('fa-angle-double-up').addClass('fa-angle-double-down');
				}
			})
			})
		</script>
		</div>
	</body>
		
</html>
