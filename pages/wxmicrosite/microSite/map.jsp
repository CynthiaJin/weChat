<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>

<script type="text/javascript" src="${ctx }/js/jquery-1.9.1.min.js"></script>
<!--  script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=ezofnKG8X1gQ29UuOUjQlo1Q"></script>
 -->
<script type="text/javascript" src="http://api.map.baidu.com/api?type=quick&v=1.0&ak=O1cB8qoVA51oR4DGtmMiT9Di"></script>
<style type="text/css">
	 html,body { height: 100%; }
</style>
<style type="text/css">
	.anchorBL{
		display: none ;
	}
	.BMap_scaleCtrl{
		display: block;
	}
</style>
</head>

<body>			
	<div id="mapDiv" style=" height:98%;width:100%;overflow:hidden;"></div>

	<script type="text/javascript">
	var bmap = {
			status : false,
			mapObj : '',
			styleOptions : {
				strokeWeight : 2,
				strokeColor : "#00ff00",
				fillColor : "#00ff00",
				fillOpacity : 0.6,
				strokeOpacity : 0.8
			},
			//地图初始化事件
			init : function() {
				
				if (this.status) {return;}
				this.status = true;
				bmap.mapObj = new BMap.Map('mapDiv');
				var mapObj = bmap.mapObj;
				mapObj.centerAndZoom(new BMap.Point(116.404, 39.915), 13);
				//添加覆盖物---------------------
				 var points=[];      
				 var coordinateListStr = ${coordinateListStr};
				 var bmapPoint={};	
				 for(var i=0;i<coordinateListStr.length;i++){
					bmapPoint = new BMap.Point(coordinateListStr[i].U_LONGITUDE,coordinateListStr[i].U_LATITUDE);	
					points.push(bmapPoint);
				}  			
				bmap.onPolyLine(points,bmap.styleOptions,true);
				
			},
			//多点坐标划线
			onPolyLine : function(points,styleOptions,hasView) {	
				if(typeof(styleOptions) == "undefined" && styleOptions == ""){
					var styleOptions = bmap.styleOptions;
				}
				var polyline = new BMap.Polyline(points, styleOptions);  //定义折线				
				bmap.mapObj.addOverlay(polyline);     //添加折线到地图上
				if(hasView){
					bmap.mapObj.setViewport(points);
				}
			}
		}
	</script>
	<script type="text/javascript">
			
		jQuery(document).ready(function() {
		    //地图初始化
			bmap.init();	    	    	
		});		
	</script>
</body>
</html>