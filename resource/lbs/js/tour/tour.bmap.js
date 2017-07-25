/**
 * 旅游总览百度地图
 */
//----------------------------------方法入口------------------------------
var App = (function() {
	return {
		baseURL : window.location.protocol + '//' + window.location.host + '/'
				+ window.location.pathname.split('/')[1]
	};
})();


var closeWindowInfo;
/*地图放缩级别变化监听事件*/
function onViewChanged(){
	var zoom = bmap.mapObj.getZoom();
	//根据的等级展示景区
	if(zoom >= 8 && zoom < 12 && bmap.scenicData.length > 0 ){
		//清除覆盖物
		bmap.clearAll();	
		var points = [] ;
		for(var i = 0 ; i < 10 ; i++ ){
			var marker = addMarkerOverlay(bmap.scenicData[i]);
			points.push(marker.getPosition());
			//bmap.mapObj.setViewport(points);
		}
	}else if(zoom >= 12 && bmap.scenicData.length > 0){
		//清除覆盖物
		bmap.clearAll();
		var points = [] ;
		for(var i = 0 ; i < bmap.scenicData.length ; i++ ){
			var marker = addMarkerOverlay(bmap.scenicData[i]);
			points.push(marker.getPosition());
			//bmap.mapObj.setViewport(points);
		}
	}else if ( zoom <= 8){
		
		//清除覆盖物
		bmap.clearAll();
		
		var points = [] ;
		for(var i = 0 ; i < bmap.scenicData.length ; i++ ){
			//4A和5A
			if($.trim(bmap.scenicData[i].SCENIC_LVL) == "5A"){
				var marker = addMarkerOverlay(bmap.scenicData[i]);
				points.push(marker.getPosition());
			}
			//bmap.mapObj.setViewport(points);
		}
	}
}

/*添加marker标注点*/
function addMarkerOverlay(obj){
	var markerOpts = {
		obj : obj,
		imgIndex  : bmap.markers.length,
		templateId : "baseTemplate4" 
	}							
	var marker = bmap.creatMarker(markerOpts); //添加标注
	if(marker){
		bmap.markers.push(marker);
		//添加标注点
		bmap.mapObj.addOverlay(marker);
		//添加文本标注点
		//addLabelOverlay(obj);
		//添加柱状图覆盖物
		addBarOverlay(obj);
	}
	return marker;
}
/*添加景区名称文本标注点*/
function addLabelOverlay(obj){
	//添加lable标注点
	var point = new BMap.Point(Number(obj.LON),Number(obj.LAT));
	var lableOpts = {
		title : obj.SCENICNAME,
 		position : point,    // 指定文本标注所在的地理位置
 		offset   : new BMap.Size(20,-10),    //设置文本偏移量
		style : {
			color:"#000",
			fontSize : "14px",
			fontWeight : "bold" ,
			fontFamily:"微软雅黑",
			marginTop:"7px",
			backgroundColor:'#f00',
			textShadow:"0px 0px 2px #fff",
		}  
	}
	var lable =  bmap.$bmap.createLabel(lableOpts);
	if(lable){
		bmap.scenicLabels.push(lable); //记录文本标注点
	}
	return lable ;
}
/*添加柱状图覆盖物公共方法入口*/
function addBarOverlay(obj){
	var point = new BMap.Point(Number(obj.LON),Number(obj.LAT));
	//---------自定义柱状图覆盖物---------------
	barOptions = {
			content : obj.SCENICNAME,
     		point : point, //坐标位置
     		offset : new BMap.Size(15, 30),  //容器位置偏移量
     		style :{                     //容器样式
     			minWidth : "120px",
     			height :"30px",
     		},
     		width: "8px",                  //柱状图宽度
     		height : "30px",              //柱状图高度
     		percent:  Number(obj.LVLSCORE)             //柱状图占比，范围： 1----100
	};
	var myBarOverlay = new BarOverlay(barOptions);
	bmap.mapObj.addOverlay(myBarOverlay);
	if(myBarOverlay){
		bmap.myBarOverlays.push(myBarOverlay); //记录柱状图标注点
	}
	//为自定义覆盖物添加点击事件
	myBarOverlay.addEventListener('click', function () {
		//alert($("#totalKpi").html());
	}); 	
	return myBarOverlay;
}

/*数据初始化入口*/
function initialize(param){
	  //初始化景区(只显示5A级景区)
	  if( bmap.status){
		  bmap.clearAll();
	  }
	  $.ajax({
		url:util.warpRandom(App.baseURL+"/out/serv/queryScenicTourIndex.do?json"),
		async: false,data : param,
		type: "POST",
		dataType:'json',
		error:function(){
			//jAlert("服务器异常");
		},
		success:function(data){
			if(typeof (data) != 'undefined' && data != null){	
   	  			if (typeof (data) != 'undefined' && data.length > 0) {
   	  				bmap.scenicData = data ; //记录景区数据
   	  				var counts = [] ;
					for(var i = 0 ; i < data.length ; i++){
						if($.trim(data[i].SCENIC_LVL) == "5A"){							
							var marker = addMarkerOverlay(data[i]);
							counts.push(marker.getPosition());
						}
					}
				}else{
					//jMessage("消息提示",'获取数据失败!');
				}	   	  						   	  			
	  		}
		}
	});
}


function writeSheng(shengCode,shengName){
	$.ajax({
		url:util.warpRandom(App.baseURL+"/out/tour/getCityBySheng.do?json"),
		data:{shengCode:shengCode},
		dataType:'json',
		success:function(data){
			if(!data||data.length==0){
				return;
			}
	 	    var bOptions = {
				orgs : data,
				strokeWeight : 2,
		 			strokeColor : "#976D00",
	 			fillColor : "",
	 			fillOpacity : 0.1
	 		}
	 	    bmap.$bmap.bdaryLocations(bOptions);
	 		var gzOption = {
				org : shengName,
				strokeWeight : 3,
	 			strokeColor : "#945305",
	 			fillColor : "#fff",
	 			fillOpacity : 0.1
	 		}
	 		bmap.$bmap.bdaryLocation(gzOption); 

		},error:function(){
			top.jMessage("消息提示",'连接服务器失败!');
		}
	});
}

//-----------------------------------地图初始化-----------------------------
$(function(){
	/**
	 * 百度地图全局控制
	 */
	bmap = {
		color : ["#f52a1d","#ff7200","#ffae00","#9bc702","#46b035"],
		mapObj : null,	//地图对象
		$bmap : null,  //地图jquery对象
		status : false, //地图状态
		markers : [],  //所有景区标注点集合
		bMarkers : [], //指标指数景区标注点集合
		markerClusterer : null ,//所有景区总聚集标注点
		bMarkerClusterer : null , // 指标指数景区聚集标注点
		bMarkerIds : [],   //指标指数景区标注点唯一标识
		bInfoWindows : [],  //指数标注点信息窗口集合
		bdaryLocations : [], //地图省份多边形覆盖物集合
		myLegendControl : null, //景区客流量来源图例控件
		sbCustomLayer : null,   //基站图层对象
		sbStatus :  false,  //基站图层对象状态
		heatmapOverlay : null, //热力区覆盖物
		hpStatus : false, //热力区覆盖物状态标记
		defaults: {
			kpiCode:"",
			lvl:""
		},//记录检索参数
		citys : [],
		cityTourNums : [],
		gzCitys : ["贵阳市","遵义市","六盘水市","安顺市","黔南","黔西南","黔东南","毕节","铜仁市"],
		scenicData : [], //贵州景区数据
		scenicLabels : [] , //景区lable标注
		myBarOverlays : [],  //景区综合指数柱状图覆盖物
		/**
		*	初始化方法
		**/
		init : function (param){  
			var opts = {
			    mapType : BMAP_NORMAL_MAP, //BMAP_NORMAL_MAP、BMAP_PERSPECTIVE_MAP、BMAP_SATELLITE_MAP、BMAP_HYBRID_MAP
		 		//x : 116.39564503788, // 中心点 x坐标
		 		//y : 39.92998577808, // 中心点y坐标
		 		//x : 104.11412925348, // 中心点 x坐标
		 		//y : 37.550339474591, // 中心点y坐标
		 		x : 106.7349961033, // 中心点 x坐标
		 		y : 26.902825927797, // 中心点y坐标
		 		zoom : 8, // 缩放级别
				//开启滚动轮
				enableScrollWheelZoom : true,
				//开启地图可拖动
				enableKeyboard : true,  
				// 显示版权信息
				enableCopyrightControl:false,
				copyrightAnchor : BMAP_ANCHOR_BOTTOM_RIGHT, // 版权信息显示的位置
				enableScaleControl : false,   			
				enableNavigationControl : false
		 	};
			
			//初始化百度地图
		 	var $bmap = bmap.$bmap = $("#mapArea").baiduMap(opts);
		 	//获取百度地图对象
	    	var mapObj = bmap.mapObj = $bmap.mapObj;
		 	//
	    	mapObj.enableAutoResize() ;
	    	//设置地图最小缩放级别
		 	//mapObj.setMinZoom(8) ;
		 	//设置地图最大缩放级别
		 	//mapObj.setMaxZoom(13) ;
		 	//缩放控件
	    	mapObj.addControl(new BMap.NavigationControl({
				type : BMAP_NAVIGATION_CONTROL_SMALL,
				//type : BMAP_NAVIGATION_CONTROL_LARGE,
				offset : new BMap.Size(10, 10)
			}));
		 	//比例尺控件
		 	mapObj.addControl(new BMap.ScaleControl({
				anchor : BMAP_ANCHOR_BOTTOM_LEFT,
				offset : new BMap.Size(10, 10)
			}));
	    	//重新设置中心点
	 		mapObj.centerAndZoom(param.provName, 8);
		     // 地图自定义样式
	 		/*mapObj.setMapStyle({
	 			style:'grassgreen' //默认地图样式(normal)、清新蓝风格(light)、黑夜风格(dark)、红色警戒风格(redalert)
	 		});*/
		 	mapObj.setMapStyle({styleJson: styleJsonD }); 
		 	
		 	writeSheng(param.provId,param.provName);
		 	
			//地图事件监听
			mapObj.addEventListener("zoomend",onViewChanged);
			//根据IP城市地	
			/* window.setTimeout(function(){
				mapObj.setZoom(8) ;
				$bmap.localCity();
			},2000); */
			//初始化所有景区标记点
			initialize(param);
		},
		/**
		*	清楚所有覆盖物
		**/
		clearAll : function(){
			bmap.mapObj.clearOverlays() ; //清除地图所有可清楚的覆盖物。
			bmap.markers = [];       //清除marker标注点
			bmap.scenicLabels = [];  //清除文本标注点
			bmap.myBarOverlays = [];//清除柱状图标注点
		},
		/**
		*	创建标注点方法入口
		**/
		creatMarker : function(options){
			var defaults = {
					obj : {},  //对象
					imgIndex  : 0, //图标像素索引
					imgUrl : App.baseURL+'/resource/lbs/images/markers_3.png',
					html : "" ,    //信息窗口内容
					templateId : ""  //信息窗口内容模板ID				
			}
			var opts = $.extend({},defaults, options);
			var lng = opts.obj.LON;//经度
			var lat = opts.obj.LAT;//维度	
			//alert(opts.obj.SCENIC_URL);
			if(lng && lat && (Number(lng) != 0 && Number(lat) != 0)){
				var point =new BMap.Point(Number(lng),Number(lat)); //创建点坐标
				var marker=null;
				//-------------------------------------------
				var myIcon=null;//自定义地图标记图片
				if(opts.imgIndex<10){
					myIcon = new BMap.Icon(opts.imgUrl, new BMap.Size(22, 25), {  //左侧图片 22 ，右侧图片 44 
	                    anchor: new BMap.Size(10, 20), 
	                    imageOffset: new BMap.Size(0, 0 - opts.imgIndex * 25)   //左侧图片 0 ， 右侧图片 -22 //取x+1
					});
				}else{
					myIcon = new BMap.Icon(opts.imgUrl,new BMap.Size(22, 25), { //左侧图片 22 ，右侧图片 44 
						anchor : new BMap.Size(10, 12),
						imageOffset : new BMap.Size(0, 0 - 10 * 25)    //左侧图片 0 ， 右侧图片 -22 //取x+1
					});
				}
				var markerOptions = {enableDragging:false, icon:myIcon};
				marker = new BMap.Marker(point,markerOptions);
				closeWindowInfo = function(turl){
					$("#windowsTra").empty();
					$("#windowsTra").append('<iframe src="'+turl+'"></iframe>');
					setTimeout (function () {
						$('.windows').removeClass('windowsC');
						$('.windows').addClass('windowsO');
						$('.windows, .windowsShadow').show();
						$('#windowsTra').find("iframe").width($('#windowsTra').width());
						$('#windowsTra').find("iframe").height($('#windowsTra').height());
					}, 1000);
					marker.openInfoWindow();
				};
				//
				opts.obj.imgIndex = opts.imgIndex+1 ;
				var infoWindow = bmap.createInfoWin(opts);
				infoWindow.addEventListener("close", function(type, target, point){
					infoWindow.setContent("");
				});
				infoWindow.addEventListener("open", function(type, target, point){
					var defaults = {
							obj : {},  //对象
							html : "" ,
							templateId : "" 					
					}
					var temOptions = $.extend({},defaults, opts);
					
					var html = "";
					if(temOptions.obj.PC_URL){
						if(temOptions.templateId){
							var tempHtml = [];
							tempHtml.push('<table border="0" cellpadding="1" cellspacing="1" >');				
							tempHtml.push('<tr><td align="left" >景区名称:</td>');
							tempHtml.push('<td align="left" class="common"><a onclick="closeWindowInfo(\''+temOptions.obj.PC_URL+'\');" href="#">'+temOptions.obj.SCENICNAME+'</a></td></tr>');
							tempHtml.push('<tr><td align="left" >景区等级:</td>');
							tempHtml.push('<td align="left" class="common">'+temOptions.obj.SCENIC_LVL+'</td></tr>');
							tempHtml.push('<tr><td align="left" >所属地域:</td>');
							tempHtml.push('<td align="left" class="common">'+temOptions.obj.AREA_NAME+'</td></tr>');
							tempHtml.push('<tr><td align="left" >指数类型:</td>');
							tempHtml.push('<td align="left" class="common">'+temOptions.obj.FEATURE+'</td></tr>');
							tempHtml.push('<tr><iframe src="'+opts.obj.PC_URL+'" width=\"260px\" height=\"200px\" border=\"0\" ></iframe></tr>');
							tempHtml.push('</table>');
							html = tempHtml.join('');
						}else{
							html = temOptions.html;
						}
					}else{
						if(temOptions.templateId){
							var tempHtml = [];
							tempHtml.push('<table border="0" cellpadding="1" cellspacing="1" >');				
							tempHtml.push('<tr><td align="left" >景区名称:</td>');
							tempHtml.push('<td align="left" class="common">'+temOptions.obj.SCENICNAME+'</td></tr>');
							tempHtml.push('<tr><td align="left" >景区等级:</td>');
							tempHtml.push('<td align="left" class="common">'+temOptions.obj.SCENIC_LVL+'</td></tr>');
							tempHtml.push('<tr><td align="left" >所属地域:</td>');
							tempHtml.push('<td align="left" class="common">'+temOptions.obj.AREA_NAME+'</td></tr>');
							tempHtml.push('<tr><td align="left" >指数类型:</td>');
							tempHtml.push('<td align="left" class="common">'+temOptions.obj.FEATURE+'</td></tr>');
							tempHtml.push('<tr><img src="'+temOptions.obj.SCENIC_URL+'" width="260px" height="200px" border="0" alt="景区图片"></tr>');
							tempHtml.push('</table>');
							html = tempHtml.join('');
						}else{
							html = temOptions.html;
						}
					}
					infoWindow.setContent(html);
				});
				bmap.bInfoWindows.push(infoWindow);
				if(infoWindow){
				    marker.addEventListener("click", function() {
						marker.openInfoWindow(infoWindow);
						//景区
						if($("#flexibleIcon").attr("class").indexOf("glyphicon-chevron-down") > 0){
							$("#flexibleIcon").click();
						}					
						//景区编码切换
						$("#sceincCode").attr("name",opts.obj.SCENICNAME);
						$("#sceincCode").val(opts.obj.SCENICCODE);
						//集合参数
						var param = {
							provName : $("#cityCode").attr("name"),provId :$("#cityCode").val(),
							scenicName :opts.obj.SCENICNAME ,scenicCode :opts.obj.SCENICCODE,kpiLvl : "0"							
						}
						//景区数据转换
						changeScenicData(param);						
					});
				}
				//-------------------------------------
				return marker
			}
			return null;
		},
		/*
		*	百度地图信息窗口
		*/
		createInfoWin : function (options){
			html="";
			infoWindowOptions = { 
				width : 300,     
				height: 300, 
				enableAutoPan :true,
				enableCloseOnClick:true,
				enableMessage:false
			}
			var infoWindow =new  BMap.InfoWindow(html,infoWindowOptions);
			return infoWindow;
		}
	}

})