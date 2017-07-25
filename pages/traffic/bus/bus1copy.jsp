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

    <title>城际巴士</title>
    <%@ include file="../../../common/common.jsp" %>
    <link rel="stylesheet" href="${ctx }/resource/css/style.css"/>
    <link rel="stylesheet" type="text/css" href="${ctx }/resource/css/main.css"/>
     <link rel="stylesheet" href="${ctx }/resource/font-awesome-4.4.0/css/font-awesome.css" />
    <link rel="stylesheet" href="${ctx }/resource/jquery-mobile/css/themes/default/jquery.mobile-1.4.5.min.css" />
 <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=ezofnKG8X1gQ29UuOUjQlo1Q"></script>

     <script type="text/javascript" src="${ctx }/resource/js/angular.min.js" ></script>
          <script type="text/javascript" src="${ctx }/resource/js/flow.js"></script>
        <script type="text/javascript" src="${ctx }/resource/js/main.js" ></script>
     <script type="text/javascript" src="${ctx }/resource/jquery-mobile/js/jquery.mobile-1.4.5.min.js" ></script>
    <style type="text/css">
		#setmap{height:0px;width:0px;}
	 
	</style>
</head>
<body data-role="page">
	<div class="box" class="">
    <!--页头-->
   <%-- <div class="topColor">
        <a class="topIcon" onclick="javascript:window.history.back();" data-transition="slide" data-direction="reverse"><img class="img" src="${ctx }/resource/image/main/backup.png"></a>
        <div class="topTitle">城际巴士</div>
        <a class="topIcon2" href="#userDetail"><img class="img" src="${ctx }/resource/image/main/user.png"></a>
    </div>
    <div class="clear"></div> --%>
     <div style="background:#35A8D7;height:5px;"></div>
  <!--   <a class="topIcon" href="#userDetail"><i class="fa fa-user"></i></a> -->
    <!--页头结束-->
    <!--主体-->
    <div class="mainBox bottom0 bus">
    <div class="brandBox">
       		<div class="scrollImg">
				<ul id="imgContainer">
					<li><img class="img" src="${ctx }/resource/image/main/ad1.jpg" alt=""/></li>
					<li><img class="img" src="${ctx }/resource/image/main/ad2.jpg" alt=""/></li>
					<li><img class="img" src="${ctx }/resource/image/main/ad3.jpg" alt=""/></li>
				</ul>
			</div>
       </div>
    	<a class="putBox"  onclick="showAllLines();">
    		<span class="left"><img class="img" src="${ctx }/resource/image/main/line.png"></span>
    		<span class="center">查看城际巴士全部线路</span>
    		<span class="right" ><img class="img" src="${ctx }/resource/image/main/more.png"></span>
    	</a>
      
        <div class="exchangeInput">
        	<div class="inputContainer">
	        	<div>
	        		<img class="img" src="${ctx }/resource/image/main/co-green.png" />
	        		<!-- <span>出发地</span> -->
	        		
	        		<input type="text" name="starName" id="startSite"  placeholder="请输入出发地" form="busForm"  />
	        		<a class="taged"  id="selectstar">选择站点</a>
	        	</div>
	        	<div class="">
	        		<img class="img"  src="${ctx }/resource/image/main/co-red.png" />
	        		<!-- <span>目的地</span> -->
	        		<input type="text" name="endName" id="endSite" placeholder="请输入目的地" form="busForm" />
	        		<a class="taged"  id="selectend" >选择站点</a>
	        	</div>
	        	<input type="hidden" id="upanddown"   value="" />
        	</div>
        	
<!--         	<input type="hidden"  id="endLat" name="endLat"  value="" form="busForm" /> -->
<!--         	<input type="hidden"  id="endLng" name="endLng" value="" form="busForm"  /> -->
<!--         	<input type="hidden"  id="starLng" name="starLng" value="" form="busForm"  /> -->
<!-- 	        <input type="hidden"  id="starLat" name="starLat" value=""  form="busForm"  /> -->
	        
	        <input type="hidden"  id="starstaType" name="starstaType" value=""  form="busForm"  />
	        <input type="hidden"  id="endstaType" name="endstaType" value=""  form="busForm"  />
	        	        
	    
        	<span>
        	<%-- 	<img class="img" src="${ctx }/resource/image/main/swith.png" /> --%>
        	</span>
        </div>    
        	<form id="busForm" action="${ctx }/bus/getsite.do" method="post">
	    	 <a class="btn blue" onclick="selectLine()">查询线路</a>
    	</form>
      <div data-role="popup" class="ui-content" id="warnning">
    	<div style="color:red;"><i class="fa fa-warning"></i><span>您输入的地址未检索到站点，请重新输入！</span></div>
    	</div>
    	 <div data-role="popup" class="ui-content" id="pcwarnning">
    			<div style="color:red;"><i class="fa fa-warning"></i><span>在PC端上获取不到您的信息，请使用手机端登录！</span></div>
    	</div>
    	
    	
        <div class="aroundPoint">
        	<h4>附近站点</h4>
        	<div id="aroundPoint">
        	
        	</div>
        </div>

    </div>
    <!--主体结束-->
     <div class="mainBox hidden float  bottom0" id="mainBox" style="top:0;right:0;">
    	<div class="searchTop">
	     	<a class="left" onclick="closeP();"><i class="fa fa-angle-left"></i></a>
	      <!--   <input type="text" data-role="none" placeholder="请输入..." /> 
	        <a class="right">确定</a> -->
	      
    	</div>
    	<div class="pieceContainer"  id="pieceContainer">
	       <div class="piece">
						
    	</div>
    </div>
    <!--用户信息panel-->
    <!--页脚-->
 
    <div id="setmap"></div>
	<div id="searchResultPanel" style="border:1px solid #C0C0C0;width:0px;height:0px; display:none;"></div>
</body>

</html>
 <script type="text/javascript" src="${ctx }/resource/js/util.js"></script>
 <script type="text/javascript" src="${ctx}/resource/js/jquery.json.min.js"></script> 
  <script type="text/javascript" src="${ctx }/resource/js/jweixin-1.0.0.js"></script>
<script type="text/javascript">
var alernull;
var outSite;
var inSite;

var lnginit;
var latinit;

var nolines;

var range; 
	// 百度地图API功能
	function G(id) {
		 return document.getElementById(id); 
	}
	var star="start";
	var end="end";
	var starLng;
	var starLat;
		$("#mainBox").on('swiperight',function(){
		$("#mainBox").addClass('hidden').removeClass('shown');
	/*  if($("#mainBox").hasClass('hidden')){
			$("#mainBox").addClass('shown').rmoveClass('hidden');
		}else{
			$("#mainBox").addClass('hidden').rmoveClass('shown');
		}  */
	})
	$("#selectstar").bind('click',function(){
		var end=$("#endSite").val();
		if(end==""){
			qqall();
		}else{
			
			qq(end);
		}
		
		$("#upanddown").val("upsite");
		
		
		if($("#mainBox").hasClass('hidden')){
			$("#mainBox").addClass('shown').removeClass('hidden');
		}else{
			$("#mainBox").addClass('hidden').removeClass('shown');
		}
		
	});
	
	 	$("#selectend").bind('click',function(){
	 		var start=$("#startSite").val();
			if(start==""){
				qqall();
			}else{
				
				qq(start);
			}
			
	 		$("#upanddown").val("downsite");
	 		
			if($("#mainBox").hasClass('hidden')){
				$("#mainBox").addClass('shown').removeClass('hidden');
			}else{
				$("#mainBox").addClass('hidden').removeClass('shown');
			}
		});	 
	 	
	 	function closeP(){
	 		$("#mainBox").addClass('hidden').removeClass('shown');
	 	}
		
	 var map = new BMap.Map("setmap");
	map.centerAndZoom("沈阳",12);                    // 初始化地图,设置城市和地图级别。
	

	/* var ac1 = new BMap.Autocomplete(    //建立一个自动完成的对象
				{"input" : "startSite"
				,"location" : map
			});
	var ac2 = new BMap.Autocomplete(    //建立一个自动完成的对象
					{"input" : "endSite"
					,"location" : map
				});
 
 	addMap(ac1,star);
	addMap(ac2,end);   */
	
 	function selectLine(){	
 		var ecstar=$("#startSite").val();
 		var ecend=$("#endSite").val();
 		if(ecstar==""||ecstar==null){
 			SiteWarnning("#startSite");
 			return ;
 		}
 		if(ecend==""||ecend==null){
 			SiteWarnning("#endSite");
 			return ;
 		}
 	/* 	 var a1=$("#starLng").val();
        var a2=$("#endLng").val();
        if(a1==""||a1==null){
 			sitWarnning("#startSite");
 			return ;
 		}
        if(a2==""||a2==null){
 			sitWarnning("#endSite");
 			return ;
 		}   */
 		   
        document.getElementById('busForm').submit(); 
		}
 	
 		//查询所有线路
	 	function showAllLines(){
 			if(latinit==null||latinit==''){				
 				return;
 			}		
			window.location.href="${ctx }/bus/toshowalllines.do";
	
		} 
	 

	 
	 $(function(){
	/* 	 alernull='${tipinfo}';	 
		 if(alernull=='alernull'){
			 inputWarnning("#startSite");
		 } */
		 
		 
		 
		 	 	$("#imgContainer").scrollImage();
		 
		 
/*		 
		        var geolocation = new BMap.Geolocation();    
			   geolocation.getCurrentPosition(function(r){
					if(this.getStatus() == BMAP_STATUS_SUCCESS){
						  latinit=r.latitude;
						  lnginit=r.longitude;					  					  
					//根据浏览器定位获取经纬度，来展示最近公交站点
							 $.ajax({url:"${ctx}/bus/initloc.do?json",async: false,
									data:{lng:lnginit,lat:latinit},
									type: "POST",dataType:'json',
									error:function(){},
									success:function(result){
										var upload='';
										if (typeof (result) != 'undefined' && result != null){
											var resSite=result.resSite;
											var resLine=result.resLine;
											for(var i=0;i<resSite.length;i++){
												
												upload+='<span class="taged"  onclick="selectSiteLines(this,'+resSite[i].sta_id+','+resSite[i].b_lon+','+resSite[i].b_lat+')" >'+resSite[i].sta_name+'</span>';
											}
											$("#aroundPoint").html(upload); 
										}	
										
										nolines='${nolines}';	 
										 if(nolines=='nolines'){				
											 PCWarnning("#warnning");
										 } 	
										
									}			
							 });
						   
						   
					}
					else {
						alert('failed'+this.getStatus());
					}        
				},{enableHighAccuracy: true})
*/			
			//////////////////	
 		    	 var url = location.href.split('#')[0];
				$.ajax({
					url:"${ctx}/bwebCommon/getSign.do?json",
					dataType :"json",
					data:{url:url},
					success:function(data){
						wx.config({
						    debug: true, // 开启调试模式,调用的所有api的返回值会在客户端alert出来，若要查看传入的参数，可以在pc端打开，参数信息会通过log打出，仅在pc端时才会打印。
						    appId: data.appId, // 必填，公众号的唯一标识
						    timestamp: data.timestamp, // 必填，生成签名的时间戳
						    nonceStr: data.nonceStr, // 必填，生成签名的随机串
						    signature: data.signature,// 必填，签名，见附录1
						    jsApiList: ["getLocation","openLocation"] // 必填，需要使用的JS接口列表，所有JS接口列表见附录2
						});
						
						wx.ready(function(data2){
						    // config信息验证后会执行ready方法，所有接口调用都必须在config接口获得结果之后，config是一个客户端的异步操作，所以如果需要在页面加载时就调用相关接口，则须把相关接口放在ready函数中调用来确保正确执行。对于用户触发时才调用的接口，则可以直接调用，不需要放在ready函数中。
						    wx.getLocation({
							    type: 'wgs84', // 默认为wgs84的gps坐标，如果要返回直接给openLocation用的火星坐标，可传入'gcj02'
							    success: function (res) {
						
							        var latitude = res.latitude; // 纬度，浮点数，范围为90 ~ -90
							        var longitude = res.longitude; // 经度，浮点数，范围为180 ~ -180。
							        var speed = res.speed; // 速度，以米/每秒计
							        var accuracy = res.accuracy; // 位置精度
							        
							        latinit=res.latitude;
									lnginit=res.longitude;	
									//根据浏览器定位获取经纬度，来展示最近公交站点
									 $.ajax({url:"${ctx}/bus/initloc.do?json",async: false,
											data:{lng:lnginit,lat:latinit},
											type: "POST",dataType:'json',
											error:function(){},
											success:function(result){
												var upload='';
												if (typeof (result) != 'undefined' && result != null){
													var resSite=result.resSite;
													var resLine=result.resLine;
													for(var i=0;i<resSite.length;i++){
														
														upload+='<span class="taged"  onclick="selectSiteLines(this,'+resSite[i].sta_id+','+resSite[i].b_lon+','+resSite[i].b_lat+')" >'+resSite[i].sta_name+'</span>';
													}
													$("#aroundPoint").html(upload); 
												}	
												
											//	nolines='${nolines}';	 
											//	 if(nolines=='nolines'){				
											//		 PCWarnning("#warnning");
											//	 } 	
											}			
									 });
									
									
									
							    }
							});
						});
						
						wx.error(function(res){
					//		alert("验证错误");
							PCWarnning("#pcwarnning");
						});
						
					},error:function(e){
				//		alert(e);
						PCWarnning("#pcwarnning");
					}
				});              
		 
						
				

			
			///加载公交全部站点	
			 /* $.ajax({url:"${ctx}/bus/getposlist.do?json",async: false,
					type: "POST",dataType:'json',error:function(){},
					success:function(result){
						var upload="";
						for(var name in result){
							 upload+= '<div class="piece">';
				   	  		 upload+='<span>'+name+'</span><div class="">'; 	
				   	  		for(j=0;j<result[name].length;j++){			   	  			
				   	  			upload+='<span  onclick="selectSite(this)" >'+result[name][j].sta_name+'</span>&nbsp;&nbsp;'
				   //					upload+='<span  onclick="selectSite(this,'+result[name][j].sta_id+','+result[name][j].b_lat+','+result[name][j].b_lon+')" >'+result[name][j].sta_name+'</span>'
				   	  		}				   	  			
				   	  			upload+='</div></div>';				   	  		
						}
						 $('#pieceContainer').html(upload);	 
				}}); 	 */	 	 
	 })
	
	 //根据附近站点实现线路展示
	 function selectSiteLines(obj,staId,lon,lat){
		/* 	if(latinit==null||latinit==''){
 				return;			
 			} */	
			var  siteMy1= new BMap.Point(lnginit,latinit);
			var  siteMy2 = new BMap.Point(lon,lat);				
			var walking = new BMap.WalkingRoute(map, {renderOptions:{map: map, autoViewport: true}});			
			 walking.search(siteMy1, siteMy2);
			 
			  walking.setSearchCompleteCallback(function(result){
					var plan= result.getPlan(0);
					range=plan.getDistance(true);					
					window.location.href="${ctx}/bus/siteline.do?sitename="+$(obj).text()+"&range="+range; 
			
			});
			}
	 
	 
	/* //根据关键词搜索
	function addMap(obj,objMap){		
		obj.addEventListener("onhighlight", function(e) {  //鼠标放在下拉列表上的事件
			var str = "";
				var _value = e.fromitem.value;
				var value = "";
				if (e.fromitem.index > -1) {
					value = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;
				}    
				str = "FromItem<br />index = " + e.fromitem.index + "<br />value = " + value;
				
				value = "";
				if (e.toitem.index > -1) {
					_value = e.toitem.value;
					value = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;
				}    
			});

			var myValue;
			obj.addEventListener("onconfirm", function(e) {    //鼠标点击下拉列表后的事件
			var _value = e.item.value;
				myValue = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;			
				setPlace();
			});

			function setPlace(){
				function myFun(){
					var pp = local.getResults().getPoi(0).point;    //获取第一个智能搜索的结果
					
					
					if(objMap=="start"){
						G("starLng").value=pp.lng;
						G("starLat").value=pp.lat;
						G("starstaType").value=null;
					}else if(objMap=="end"){
						G("endLng").value=pp.lng;
						G("endLat").value=pp.lat;
						G("endstaType").value=null;
					}
				}
				var local = new BMap.LocalSearch(map, { //智能搜索
				  onSearchComplete: myFun
				});
				local.search(myValue);
			}
		
	}; */

	//
	 function selectSite(site){
			var sitename=site.innerText;		
		//	$("#mainBox").addClass('hidden').removeClass('shown');
			$("#mainBox").addClass('hidden').removeClass('shown');
			
			var updowntype=$("#upanddown").val();
			if(updowntype=="upsite"){
				$("#startSite").val(sitename);		
				$("#starstaType").val("startType");
				
				
			}
			if(updowntype=="downsite"){
				$("#endSite").val(sitename);			
				$("#endstaType").val("endType");
			}
		}

	 function SiteWarnning(id){
			$(id).val('');
			 var text = $(id).attr('placeholder');
			 $(id).addClass('warnning').attr('placeholder','请输入地点！');
			 setTimeout(function(){
				$(id).removeClass('warnning').attr('placeholder',text);
			},5000);  
		}

	 function sitWarnning(id){
			$(id).val('');
			 var text = $(id).attr('placeholder');
			 $(id).addClass('warnning').attr('placeholder','请输入正确地点！');
			 setTimeout(function(){
				$(id).removeClass('warnning').attr('placeholder',text);
			},5000);  
		}
	
	//弹框警告
	 function PCWarnning(id){
	 	 $(id).popup('open');
	 	 setTimeout(function(){
	 		$(id).popup('close');
	 	},4000);  
	 	 
	 }
	//选择一个站点后，去查与此站点相关的站点
	 function qq(sitename){
		 $.ajax({
			 	url:"${ctx}/bus/getposlist2.do?json",
				async: false,
				data:{sitename:sitename}, 
				type: "POST",
				dataType:'json',
				error:function(){},
				success:function(result){
					var upload="";
					for(var name in result){
						 upload+= '<div class="piece">';
			   	  		 upload+='<span>'+name+'</span><div class="">'; 	
			   	  		for(j=0;j<result[name].length;j++){			   	  			
			   	  			upload+='<span  onclick="selectSite(this)" >'+result[name][j].STA_NAME+'</span>&nbsp;&nbsp;'
			   //					upload+='<span  onclick="selectSite(this,'+result[name][j].sta_id+','+result[name][j].b_lat+','+result[name][j].b_lon+')" >'+result[name][j].sta_name+'</span>'
			   	  		}				   	  			
			   	  			upload+='</div></div>';				   	  		
					}
					 $('#pieceContainer').html(upload);	 
			}});
	 }
	//查询全部站点
	 function qqall(){
		 $.ajax({url:"${ctx}/bus/getposlist.do?json",async: false,
				type: "POST",dataType:'json',error:function(){},
				success:function(result){
					var upload="";
					for(var name in result){
						 upload+= '<div class="piece">';
			   	  		 upload+='<span>'+name+'</span><div class="">'; 	
			   	  		for(j=0;j<result[name].length;j++){			   	  			
			   	  			upload+='<span  onclick="selectSite(this)" >'+result[name][j].sta_name+'</span>&nbsp;&nbsp;'
			   //					upload+='<span  onclick="selectSite(this,'+result[name][j].sta_id+','+result[name][j].b_lat+','+result[name][j].b_lon+')" >'+result[name][j].sta_name+'</span>'
			   	  		}				   	  			
			   	  			upload+='</div></div>';				   	  		
					}
					 $('#pieceContainer').html(upload);	 
			}});  
	 }
	
	
</script>
