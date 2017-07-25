<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head lang="en">
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="format-detection" content="telephone=no" />
<title>周边加油加气</title>
<link rel="stylesheet" href="${ctx }/resource/css/style.css" />
<link rel="stylesheet" href="${ctx }/resource/css/main.css" />
<link rel="stylesheet"
	href="${ctx }/resource/jquery-mobile/css/themes/default/jquery.mobile-1.4.5.min.css" />
<link rel="stylesheet"
	href="${ctx }/resource/font-awesome-4.4.0/css/font-awesome.css" />
<script type="text/javascript"
	src="${ctx }/resource/js/jquery-1.10.1.min.js"></script>
<script type="text/javascript" src="${ctx }/resource/js/main.js"></script>
<script type="text/javascript"
	src="${ctx }/resource/jquery-mobile/js/jquery.mobile-1.4.5.min.js"></script>
<script type="text/javascript"
	src="http://api.map.baidu.com/api?v=1.5&ak=ezofnKG8X1gQ29UuOUjQlo1Q">
	</script>


<style>
</style>
</head>
<body data-role="page">
	<div class="box">
		<!--页头-->
		<!--  <div class="topColor">
        <a class="topIcon"><img class="img" src="${ctx }/resource/image/main/backup.png"></a>
        <div class="topTitle">机场快线</div>
        <a class="topIcon2" href="#userDetail"><img class="img" src="${ctx }/resource/image/main/user.png"></a>
    </div>
    <div class="clear"></div> -->
		<div style="background: #35A8D7; height: 5px;"></div>
		<!-- <a class="topIcon" href="#userDetail"><i class="fa fa-user"></i></a> -->
		<!--页头结束-->
		<!--主体-->
		<div class="mainBox bottom0">
			<div class="mapContainer" id="mapContainer">
			</div>

	</div>
	<script type="text/javascript">
	// 百度地图API功能
		 var map = new BMap.Map("mapContainer");
	 map.centerAndZoom("抚顺", 12);
	pointGas();
	/* var geolocation = new BMap.Geolocation();
	geolocation.getCurrentPosition(function(r){
		if(this.getStatus() == BMAP_STATUS_SUCCESS){
			var myIcon = new BMap.Icon("${ctx}/resource/image/BMap/map-gps.png", new BMap.Size(45,55)); 
			var mk = new BMap.Marker(r.point,{icon:myIcon});
			map.addOverlay(mk);
			map.centerAndZoom(r.point,15);
		}
		else {
			alert('failed'+this.getStatus());
		}        
	},{enableHighAccuracy: true}); */
	
	function addClickHandler(content,marker){
		marker.addEventListener("click",function(e){
			openInfo(content,e)}
		);
	}
	function openInfo(content,e){
		var p = e.target;
		var point = new BMap.Point(p.getPosition().lng, p.getPosition().lat);
		var infoWindow = new BMap.InfoWindow(content,{width:300});  // 创建信息窗口对象 
		map.openInfoWindow(infoWindow,point); //开启信息窗口
	}
	function pointGas(){
		$.ajax({
			url:'${ctx}/surround/gasjson.do?json',
			dataType :"json",
			success:function(data){
				console.log(data);
				for(var i=0;i<data.length;i++){
					var sContent =
						"<h4 style='margin:0 0 5px 0;padding:0.2em 0'>"+data[i].name+"</h4>" + 
						"<img style='margin:4px;width:30%;height:80px;float:left' id='imgDemo' src='"+data[i].url+"' width='139' height='104' title='"+data[i].name+"'/>"+ 
						"<div>地址:"+data[i].addr+"</div>";
						if(data[i].tel != undefined ){
							sContent=sContent+"<div><a href='tel:"+data[i].tel+"' >电话号码:"+data[i].tel+"</a></div>";
						}
						if(data[i].remark != undefined ){
							sContent=sContent+"<p style='margin:0;line-height:1.5;font-size:13px;text-indent:2em'>"+data[i].remark+"</p>";
						}
						sContent=sContent+"</div>";
					var point = new BMap.Point(data[i].longitude,data[i].latitude);
					var marker = new BMap.Marker(point);// 创建标注 
					map.addOverlay(marker);             // 将标注添加到地图中 
					if(data[i].name.indexOf("建设中")>0){
						var label = new BMap.Label("建设中",{offset:new BMap.Size(20,-10)});
						marker.setLabel(label);
					}
					addClickHandler(sContent,marker);
				}
			},
			error:function(e){
				alert(error);
			}
		});
	}

</script>
		</div>
</body>
</html>