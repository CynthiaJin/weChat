<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0">
    <meta name="format-detection" content="telephone=no" />
    <title>城际巴士线路详情</title>
    <link rel="stylesheet" href="${ctx }/resource/font-awesome-4.4.0/css/font-awesome.css" />
    <link rel="stylesheet" href="${ctx }/resource/css/style.css"/>
    <link rel="stylesheet" type="text/css" href="${ctx }/resource/css/main.css"/>
    
    <link rel="stylesheet" type="text/css" href="${ctx }/resource/lbs/css/BaiduControl.css"/>
    <link rel="stylesheet" type="text/css" href="${ctx }/resource/lbs/css/LBSglobal.css"/>
    
    <link rel="stylesheet" href="${ctx }/resource/font-awesome-4.4.0/css/font-awesome.css" />
    <link rel="stylesheet" href="${ctx }/resource/jquery-mobile/css/themes/default/jquery.mobile-1.4.5.min.css" />
    <script src="${ctx }/resource/js/jquery-1.10.1.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="${ctx }/resource/js/main.js" ></script>
    <script type="text/javascript" src="${ctx }/resource/js/angular.min.js" ></script>
    <script type="text/javascript" src="${ctx }/resource/jquery-mobile/js/jquery.mobile-1.4.5.min.js" ></script>
 	<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=ezofnKG8X1gQ29UuOUjQlo1Q"></script>
 	 <script type="text/javascript" src="${ctx }/resource/lbs/js/jquery.bmap.core.js"></script>
    <script type="text/javascript" src="${ctx }/resource/lbs/js/jquery.bmap.overlay.js"></script>
    <style>
    .mapContainer{background: none !important;position: absolute !important;}
	.anchorBL{display: none !important;}
    </style>
</head>
<body  data-role="page">
<div class="box busDetail"  ng-app="myApp" ng-controller="myCtrl">
    <!--页头-->
    <%-- <div class="topColor">
        <a class="topIcon" onclick="javascript:window.history.back()" data-transition="slide" data-direction="reverse"><img class="img" src="${ctx }/resource/image/main/backup.png"></a>
        <div class="topTitle">城际巴士-线路详情</div>
        <a class="topIcon2" href="#userDetail"><img class="img" src="${ctx }/resource/image/main/user.png"></a>
    </div>
    <div class="clear"></div>  --%>
     <div style="background:#35A8D7;height:5px;"></div>
 <!--    <a class="topIcon" href="#userDetail"><i class="fa fa-user"></i></a> -->
    <!--页头结束-->
    <!--主体-->
    <div class="mainBox bottom0">
       <div class="mapContainer" id="mapContainer">
      </div>
       <div class="btnContainer">
	       	<a class="btn" onclick="setZoom(10);">全程显示</a>
	       	<a class="btn" onclick="showPointList(this);">全部站点</a>
       		<div class="pointList" id="pointList">
       		<!-- <ul >
       			<li ng-repeat="x	in busDetail">
       				<span>{{x.sta_name}}</span>
       			</li>
       		 </ul> -->
       	</div>
       </div>
       <div class="routeMessage">
       		<div class="piece">
				<a>
					<ul>
						<li class="firstRow">
							<span><i class="fa fa-bus gray"></i><strong class="">{{busDetail.rou_name}}</strong></span>
							<small>大型高级客车</small>
						</li>
						<li class="secondRow">
							<span>{{busDetail.beginstationname}}<i class="fa fa-arrow-right"></i>{{busDetail.endstationname}}</span>
							<span><small>全程票价：<i class="fa fa-jpy"></i>{{busDetail.price}}</small></span>
						</li>
						<li class="thirdRow">						
							<span>首车时间：{{busDetail.start_time}}</span><span>末车时间：{{busDetail.end_time}}</span>
							<span>最小间隔：{{busDetail.small_times}}<small>分钟</small></span><span>运行时长：{{busDetail.drive_times}}<small>分钟</small></span>
						</li>
 						<!-- <li class="thirdRow">
 							<input type="button"  value="预定（暂缓开通）"></input>
 						</li> -->
					</ul>
				</a>
				
<!-- 				 <a class="orderbtn btn"  ng-click="busOrder(busDetail.rou_name,busDetail.price);"><span>预定</span><i class="fa fa-jpy"></i>{{busDetail.price}}</a>  -->
<!--  				<a class="orderbtn btn"  ng-click="busOrder(busDetail.rou_name,busDetail.price);"><span>预定</span></a>  -->
			</div>
       </div>
    </div>
    <!--主体结束-->
    <!--用户信息panel-->
<%-- 	<div data-role="panel" id="userDetail" class="userDetail" data-display="overlay" data-position="right"  data-position-fixed="true">
		<ul>
			<li>
				<span class="logo"><img class="img" src="${ctx }/resource/image/main/icon7.png" /></span>
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
	</div> --%>
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
    </div> --%>
    <!--页脚结束-->
    
   <script type="text/javascript"> 

   var resMap;
   var starMap;

   var starlat;
   var starlng;
    var staSitelat;
   var staSitelng;
     var endlat;
     var endlng;
     var endSitelng;
     var endSitelat;
     
     //初始化控制器
   var app = angular.module('myApp', []);
  
   		/*控制全部站点的显示和隐藏*/
	   function showPointList(obj){
   			
			if($(obj).siblings('#pointList').css('display')=='none'){
				
				$(obj).siblings('#pointList').slideDown();
			}else{
				
				$(obj).siblings('#pointList').slideUp();
			}
		}
   		//改变 百度地图显示的大小
   		function setZoom(num){
   			map.setZoom(num);
   		}
   		//初始化百度地图
		var rouId;
	    rouId='${rouId}';
//	    rouId=80;
//	    updownType=1;
		if (rouId == null || rouId == '') { 
			  rouId=80;
			} 

		 // 百度地图 初始化
		var map = new BMap.Map("mapContainer");
		map.centerAndZoom('沈阳', 10);
		map.enableScrollWheelZoom(true);
		 map.enableDragging(true);
		
		$.ajax({url:"${ctx}/bus/getLines.do?json",async: false,
			data:{rouId:rouId},
			type: "POST",dataType:'json',
			error:function(){},
			success:function(result){
				console.info(result);
				
			   app.controller('myCtrl', function($scope) {
				   $scope.busDetail=result.lineInfo[0];
				   $scope.busOrder = function(rouname,price){
					   //提交服务器器时添加 /in/
					    window.location.href="${ctx}/bus/in/tobusorder.do?rouId="+rouId+"&price="+price;   
				/*	     window.location.href="${ctx}/bus/tobusorder.do?rouId="+rouId+"&price="+price;  */
					}
				 
			   });
			  	var data = result.lineSite;
				var myIcon = new BMap.Icon("${ctx}/resource/image/BMap/sta-sitew.png", new BMap.Size(8,8));
				var myIconR = new BMap.Icon("${ctx}/resource/image/BMap/map-star.png", new BMap.Size(32,32));
				var myIconE = new BMap.Icon("${ctx}/resource/image/BMap/end-site.png", new BMap.Size(24,24));
				var mySite = new BMap.Icon("${ctx}/resource/image/BMap/sta-site24.png", new BMap.Size(24,24));
				
				var myBus = new BMap.Icon("${ctx}/resource/image/BMap/map-bus24.png", new BMap.Size(32,32));
				 var carInfo = result.carInfo;
				
				
				
				
				var h='<ul>';
		/* 		starMap='${starloc}';
				 if(starMap != null && starMap != ''){					  
					   startMap();
				   } 
				 function startMap(){
					   starlat='${starloc.starlat}';
					   starlng='${starloc.starlng}';
					   staSitelat='${starloc.starSitelat}';
					   staSitelng='${starloc.starSitelng}';
					   
					   var myP11 = new BMap.Point(starlng,starlat); 
					 	var myP21 = new BMap.Point(staSitelng,staSitelat);  
						var walking3 = new BMap.WalkingRoute(map, {renderOptions:{map: map, autoViewport: true}});
						walking3.search(myP11, myP21);
						walking3.setMarkersSetCallback(function(result){
							result[0].marker.setIcon(myIconR);
							result[1].marker.setIcon(myIcon);					
							}); 
						walking3.setInfoHtmlSetCallback(function(s,h){
						 	var p = $(h).parent();
				//		 	console.info(h);
				//		 	$(h).html('<div>起点</div>');
							$(h).remove();
							
						});
				   }
				 */
		
		var driving = new BMap.DrivingRoute(map);
		var opt = {
					width : 50,     // 信息窗口宽度
					height:50,     // 信息窗口高度
			   };
		for(var i=0;i<data.length-1;i++){		
			//		h+='<li><span>'+data[i].sta_name+'</span></div>';
					var star = new BMap.Point(data[i].b_lon,data[i].b_lat);
					var end = new BMap.Point(data[i+1].b_lon,data[i+1].b_lat);
					driving.search(star, end);				
					var marker = new BMap.Marker(star,{icon:myIcon});  // 创建标注	
					  map.addOverlay(marker);  
				 	var content = '<div style="text-align:center"></br>'+data[i].sta_name+'</div>';	
				 	h+='<li><span  onclick="upInfoWindow(this,'+data[i].b_lon+','+data[i].b_lat+')">'+data[i].sta_name+'</span></li>';
				 	
				 	addClickHandler(content,opt,marker);
		}
		var endsite = new BMap.Point(data[data.length-1].b_lon,data[data.length-1].b_lat);
		var endmarker = new BMap.Marker(endsite,{icon:myIcon});  // 创建标注	
		 map.addOverlay(endmarker); 
	 	var endcontent = '<div >'+data[data.length-1].sta_name+'</div>';	
	 	addClickHandler(endcontent,opt,endmarker);
		
	 	driving.setSearchCompleteCallback(function(){  
		        var pts = driving.getResults().getPlan(0).getRoute(0).getPath();    //通过驾车实例，获得一系列点的数组  
		  
		        var polyline = new BMap.Polyline(pts);  
		        map.addOverlay(polyline);         
		    }); 
	 	
	 		set(endcontent,driving)
	 	
				
		//		h+='<li><span>'+data[data.length-1].sta_name+'</span></div>';
		h+='<li><span  onclick="upInfoWindow(this,'+data[data.length-1].b_lon+','+data[data.length-1].b_lat+')">'+data[data.length-1].sta_name+'</span></li>';
				h+='</ul>';
				
				$("#pointList").append(h); 
				
				
				for(var j=0;j<carInfo.length;j++){
					var carloc = new BMap.Point(carInfo[j].Longitude,carInfo[j].Latitude);			
					var carMaker = new BMap.Marker(carloc,{icon:myBus});  // 创建标注	
					  map.addOverlay(carMaker); 
				}
				
				
				
				
				
				
					
			}
		}); 
		
		
		
	 	function set(content,obj){
			obj.setInfoHtmlSetCallback(function(s,h){
			 	var p = $(h).parent();
				$(h).remove();
				p.append(content); 
				
			});
		}
		//给多个点添加 文本框
		function addClickHandler(content,opt,marker){
				marker.addEventListener("click",function(e){
					openInfo(content,opt,e)}
				);
			}
		
		
		function openInfo(content,opt,e){
				var p = e.target;
				var point = new BMap.Point(p.getPosition().lng, p.getPosition().lat);
				var infoWindow = new BMap.InfoWindow(content,opt);  // 创建信息窗口对象 
				map.openInfoWindow(infoWindow,point); //开启信息窗口
		}
			
			
		function upInfoWindow(obj,lon,lat){	
			$('#pointList').slideUp();
			var tippoint = new BMap.Point(lon,lat);
			var tipcont='<div style="text-align:center"></br>'+$(obj).text()+'</div>';
			var tipinfoWindow = new BMap.InfoWindow(tipcont);
	//		 map.setViewport([tippoint]);
			  map.openInfoWindow(tipinfoWindow,tippoint);
			  map.setViewport([tippoint]);
			  map.setZoom(12);
			
		}
		
		
		
		
		/* map.addEventListener("zoomend", function () {
			driving.setSearchCompleteCallback(function(){  
		        var pts = driving.getResults().getPlan(0).getRoute(0).getPath();    //通过驾车实例，获得一系列点的数组  
		  
		        var polyline = new BMap.Polyline(pts);       
		        map.addOverlay(polyline);         
		    }); 
			
			
				
	}); */
				
		
</script> 
    
</div>

 
</body>
</html>