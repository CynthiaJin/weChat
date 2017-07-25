<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="format-detection" content="telephone=no" />
    <title>机场快线线路详情</title>
    <link rel="stylesheet" href="${ctx }/resource/css/style.css"/>
    <link rel="stylesheet" href="${ctx }/resource/css/main.css" />
    <link rel="stylesheet" href="${ctx }/resource/jquery-mobile/css/themes/default/jquery.mobile-1.4.5.min.css" />
    <link rel="stylesheet" href="${ctx }/resource/font-awesome-4.4.0/css/font-awesome.css" />
    <script type="text/javascript" src="${ctx }/resource/js/jquery-1.10.1.min.js" ></script>
    <script type="text/javascript" src="${ctx }/resource/js/main.js" ></script>
    <script type="text/javascript" src="${ctx }/resource/jquery-mobile/js/jquery.mobile-1.4.5.min.js" ></script>
    <script type="text/javascript" 
    	src="http://api.map.baidu.com/api?v=1.5&ak=ezofnKG8X1gQ29UuOUjQlo1Q">
	</script>
	<script src="http://libs.baidu.com/jquery/1.9.0/jquery.js"></script>

    
    <style>
    	
    </style>
</head>
<body  data-role="page" >
<div class="box airPortBusDetail">
    <!--页头-->
   <!--  <div class="topColor">
        <a class="topIcon"><img class="img" src="${ctx }/resource/image/main/backup.png"></a>
        <div class="topTitle">机场快线</div>
        <a class="topIcon2" href="#userDetail"><img class="img" src="${ctx }/resource/image/main/user.png"></a>
    </div>
    <div class="clear"></div> -->
    <div style="background:#35A8D7;height:5px;"></div>
    <!-- <a class="topIcon" href="#userDetail"><i class="fa fa-user"></i></a> -->
    <!--页头结束-->
    <!--主体-->
        <div class="mainBox bottom0">
       <div class="mapContainer" id="mapContainer"></div>
       <!-- <div id="r-result"></div> -->
    
       <!-- <div class="btnContainer">
	       	<a class="btn">全部站点</a>
	       	<a class="btn">全程显示</a>
       </div> -->
        <div class="routeMessage">
       		<div class="piece">
				<a href="busDetail.html">
					<ul>
						<li class="firstRow">
							<span><i class="fa fa-bus gray"></i><strong class="">${result.rouName}</strong></span>
							<%-- <small>${list.SMALL_TIMES}公里</small> --%> 
						</li>
						<li class="secondRow">
							<span>${result.startSite}<i class="fa fa-arrow-right"></i>${result.endSite}</span>
						</li>
						<li class="thirdRow">
							<span>
								<small>
									<c:choose>
										<c:when test="${result.startTime !=null}">
											首末发车时间：${result.startTime} -- ${result.endTime}
										</c:when>										
										<c:otherwise>
											首末发车时间：时间待定
										</c:otherwise>
									</c:choose>
								</small>							
							</span>
							<small>运行约${result.runningTime}分钟</small> 
						</li>
					</ul>
				</a>
				<a class="orderbtn btn" data-ajax="false" href="javascript:toOrder();"><span>预定</span><i class="fa fa-jpy"></i>${result.price}</a>
			</div>
       </div>
    </div>
    
    <form id="busForm" action="${ctx }/airportbus/in/airBusOrder.do" method="post">
	    <input type="hidden" id="sRouId" name="sRouId" value="${result.sRouId }" form="busForm" />
	    <input type="hidden" id="rouId" name="rouId" value="${result.rouId }" form="busForm" />	  
	    <input type="hidden" id="startSite" name="startSite" value="${result.startSite }" form="busForm" />
	    <input type="hidden" id="endSite" name="endSite" value="${result.endSite }" form="busForm" />
	    <input type="hidden" id="price" name="price" value="${result.price }" form="busForm" />
	</form>
    
    <!--主体结束-->
    <!--用户信息panel-->
	<!-- <div data-role="panel" id="userDetail" class="userDetail" data-display="overlay" data-position="right"  data-position-fixed="true"  >
		<ul>
			<li>
				<span class="logo"><img class="img" src="../../../resource/image/main/icon7.png" /></span>
				<span>136****8982</span>
				<a class="btn blue" href="#">退出</a>
			</li>
			<li class="li">
				<a href="../my/integration.html" data-transition="slide" data-direction="reverse"><i class="fa fa-money"></i>我的积分</a>
			</li>
			<li class="li">
				<a href="../my/myOrderList.html" data-transition="slide" data-direction="reverse"><i class="fa fa-newspaper-o"></i>我的订单</a>
			</li>
			<li class="li">
				<a href="../my/advice.html" data-transition="slide" data-direction="reverse"><i class="fa fa-commenting-o"></i>我的建议</a>
			</li>
			<li class="li">
				<a href="../service/lostList.html" data-transition="slide" data-direction="reverse"><i class="fa fa-tty"></i>失物招领</a>
			</li>
			
		</ul>
	</div> -->
    <!--页脚-->
   <%-- <div class="footer">
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
    </div>  --%>
    <!--页脚结束-->
</div>
<script type="text/javascript">
//alert('${list.START_SITE}');
var localLng;
var localLat; 
var startLng;
var startLat;
var map;
var start;
var end;
var price;
//console.log(end);
//console.log('${route}');
var localPath;
	// 百度地图API功能
	$(function(){
		map = new BMap.Map("mapContainer");
		//alert(start+"--->"+end);
		map.setCurrentCity("沈阳");   	
		//console.log('${result}')	
		map.enableScrollWheelZoom(true);//开启鼠标滑轮缩放
		var p1 = new BMap.Point('${result.startLon}','${result.startLat}');
		var p2 = new BMap.Point('${result.endLon}','${result.endLat}');
		map.centerAndZoom(p1, 11);
		var driving = new BMap.DrivingRoute(map, {
			renderOptions : {
				map : map,
				autoViewport : true
			}
		});
		driving.search(p1, p2);
	})

	function toOrder(){
		$("#busForm").submit();
		//document.getElementById('busForm').submit();
	}

</script>
</body>
</html>