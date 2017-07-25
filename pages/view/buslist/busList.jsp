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
		<title>城际bus 查询线路列表</title>
		<style>
			
		</style>
	</head>
	<body>
		<div data-role="page" class="busList">
			<div class="header">
				<h2>本溪-沈阳南站</h2>
				<a href="#userDetail" class="pull-right"><i class="fa fa-user"></i></a>
				<a class="pull-left" onclick="javascript:history.back()" ><i class="fa fa-angle-left"></i></a>
				<a href="#" class="pull-left">×</a>
			</div><!-- /header -->
			<div class="content-bar ui-content">
				<div class=""></div>
				<div id="mList" class="mList">
					<div class="piece">
						<a href="busDetail.html">
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
							</ul>
							<span><i class="fa fa-jpy"></i>36</span>
						</a>
					</div>
					<div class="piece">
						<a href="busDetail.html">
							<ul>
								<li class="firstRow">
									<span><i class="fa fa-bus gray"></i><strong class="">1号线（高湾）</strong></span>
								</li>
								<li class="secondRow">
									<span>沈阳站<i class="fa fa-arrow-right"></i>抚顺南站</span>
									<small>（全程：120分钟）</small>
								</li>
								<li class="thirdRow">
									<span><small>首车：05:05</small>--<small>末车：17:20</small></span>
									<small>车隔：20-30分钟</small>
								</li>
							</ul>
							<span><small class="gray">全程</small><i class="fa fa-jpy"></i>36</span>
						</a>
					</div>
					<div class="piece">
						<a href="busDetail.html">
							<ul>
								<li class="firstRow">
									<span><i class="fa fa-bus gray"></i><strong class="">1号线（高湾）</strong></span>
								</li>
								<li class="secondRow">
									<span>沈阳站<i class="fa fa-arrow-right"></i>抚顺南站</span>
									<small>（全程：120分钟）</small>
								</li>
								<li class="thirdRow">
									<span><small>首车：05:05</small>--<small>末车：17:20</small></span>
									<small>车隔：20-30分钟</small>
								</li>
							</ul>
							<span><i class="fa fa-jpy"></i>36</span>
						</a>
					</div>
					<div class="piece">
						<a href="busDetail.html">
							<ul>
								<li class="firstRow">
									<span><i class="fa fa-bus gray"></i><strong class="">3号线（高湾）</strong></span>
								</li>
								<li class="secondRow">
									<span>沈阳站<i class="fa fa-arrow-right"></i>抚顺南站</span>
									<small>（全程：120分钟）</small>
								</li>
								<li class="thirdRow">
									<span><small>首车：05:05</small>--<small>末车：17:20</small></span>
									<small>车隔：20-30分钟</small>
								</li>
							</ul>
							<span><i class="fa fa-jpy"></i>36</span>
						</a>
					</div>
					<div class="piece">
						<a href="busDetail.html">
							<ul>
								<li class="firstRow">
									<span><i class="fa fa-bus gray"></i><strong class="">3号线（高湾）</strong></span>
								</li>
								<li class="secondRow">
									<span>沈阳站<i class="fa fa-arrow-right"></i>抚顺南站</span>
									<small>（全程：120分钟）</small>
								</li>
								<li class="thirdRow">
									<span><small>首车：05:05</small>--<small>末车：17:20</small></span>
									<small>车隔：20-30分钟</small>
								</li>
							</ul>
							<span><i class="fa fa-jpy"></i>36</span>
						</a>
					</div>
					<div class="piece">
						<a href="busDetail.html">
							<ul>
								<li class="firstRow">
									<span><i class="fa fa-bus gray"></i><strong class="">1号线（高湾）</strong></span>
								</li>
								<li class="secondRow">
									<span>沈阳站<i class="fa fa-arrow-right"></i>抚顺南站</span>
									<small>（全程：120分钟）</small>
								</li>
								<li class="thirdRow">
									<span><small>首车：05:05</small>--<small>末车：17:20</small></span>
									<small>车隔：20-30分钟</small>
								</li>
							</ul>
							<span><i class="fa fa-jpy"></i>36</span>
						</a>
					</div>
					<div class="piece">
						<a href="busDetail.html">
							<ul>
								<li class="firstRow">
									<span><i class="fa fa-bus gray"></i><strong class="">1号线（高湾）</strong></span>
								</li>
								<li class="secondRow">
									<span>沈阳站<i class="fa fa-arrow-right"></i>抚顺南站</span>
									<small>（全程：120分钟）</small>
								</li>
								<li class="thirdRow">
									<span><small>首车：05:05</small>--<small>末车：17:20</small></span>
									<small>车隔：20-30分钟</small>
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
		</div>
		
		<script>
		var upload;
		var star;
		var end;
		$(document).on('pagecreate',function(){
			star='${star}';
			end='${end}';
			
			 $.ajax({url:"${ctx}/trasportview/getLines.do?json",async: false,
				 data:{star:star,end:end},
					type: "POST",dataType:'json',error:function(){top.jAlert("服务器异常");},
					success:function(result){
						upload='';
						console.info(result);
						for(var i=0;i<result.length;i++){							
							upload+='<div class="piece"><a href="busDetail.html"><ul><li class="firstRow">';
							upload+='<span><i class="fa fa-bus gray"></i><strong class="">'+result[i].ROU_NAME+'</strong></span></li>';
							upload+='<li class="secondRow"><span>'+result[i].START_SITE+'<i class="fa fa-arrow-right"></i>'+result[i].END_SITE+'</span>';
							upload+='<small>(全程：'+result[i].DRIVE_TIMES+'分钟）</small>';
							upload+='<li class="thirdRow"><span><small>首车：'+result[i].S_START_TIME+'</small>--';
							upload+='<small>末车：'+result[i].S_END_TIME+'</small></span>';
							upload+='<small>车隔：'+result[i].SMALL_TIMES+'</small></li></ul>';
							upload+='<span><i class="fa fa-jpy"></i>'+result[i].PRICE+'</span></a></div>';
							
						}

						$('#mList').html(upload);
	
						
						}
			   	  			
				}); 	
		 
		})
		</script>
	</body>
	
</html>
