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
    <title>辽宁城际客运-雷锋号</title>
     <%@ include file="../../../common/common.jsp" %>
    <link rel="stylesheet" href="${ctx }/resource/css/style.css"/>
    <link rel="stylesheet" type="text/css" href="${ctx }/resource/css/main.css"/>
    <link rel="stylesheet" href="${ctx }/resource/font-awesome-4.4.0/css/font-awesome.css" />
    <link rel="stylesheet" href="${ctx }/resource/jquery-mobile/css/themes/default/jquery.mobile-1.4.5.min.css" />
    <script type="text/javascript" src="${ctx }/resource/js/main.js" ></script>
     <script type="text/javascript" src="${ctx }/resource/js/angular.min.js" ></script>
    <script type="text/javascript" src="${ctx }/resource/jquery-mobile/js/jquery.mobile-1.4.5.min.js" ></script>
     <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=ezofnKG8X1gQ29UuOUjQlo1Q"></script>
     <script type="text/javascript" src="${ctx }/resource/js/flow.js"></script>
     <style>
     		/* #mapwork{display:none} */
     		.start-address{
     			color:red !important;
     		}
     		.gre{
     			color:#1efb23 !important;
     			background:#e5ede5;
     			padding-left:10px;
     		}
     		.gre i{
     		 	color:#1efb23 !important;
     		 	font-size:14px !important;
     		}
     		.gongjiao{
     			color:#57a8fa !important;
     			background:#ddd;
     			padding-left:10px;
     		}
     		.gongjiao i{
     		 	color:#57a8fa !important;
     		 	font-size:14px !important;
     		}
     		.arrpla{
     			padding-left:10px;
     		}
     		.arrpla i{
     			color:#1efb23 !important;
     			font-size:14px !important;
     		}
     		.box-side{
     			width:70%;
     			height:40%;
     			display:none;
     			position:relative;
     			margin:50px auto;
     		}
     		#mapwork1{
     			width:100%;
     			height:100%;
     			border: 2px solid #fff;
     			border-radius:8px;
     		}
     		#close{
     			width:30px;
     			height:30px;
     			background:#1efb23;
     			color:#fff;
     			font-size:28px;
     			font-weight:900;
     			border-radius:50%;
     			text-align:center;
     			line-height:30px;
     			position:absolute;
     			top:-15px;
     			right:-15px;
     			z-index:9999;
     		}
     </style>
</head>
<body data-role="page">
<div class="box searchBus">
     <div style="background:#35A8D7;height:5px;"></div>
    <!--页头结束-->
    <!--主体-->
    <div class="mainBox bottom0">
       <div class="brandBox">
       		<div class="scrollImg">
				<ul id="imgContainer">
					<li><img class="img" src="${ctx }/resource/image/main/ad1.jpg" alt=""/></li>
					<li><img class="img" src="${ctx }/resource/image/main/ad3.jpg" alt=""/></li>
					<li><img class="img" src="${ctx }/resource/image/main/citybus1.jpg" alt=""/></li>
					<li><img class="img" src="${ctx }/resource/image/main/citybus2.jpg" alt=""/></li>
				</ul>
			</div>
       </div>
        
		<div class="listBox" id="listBox">	
				<div class="walkPanel"  id="walkPanel">
						<!--  <div><i class="fa fa-street-view"></i> <span>我的地点</span></div>
						<div><i class="fa fa-ellipsis-v"></i> <span><i class=""></i>距离 0.5公里</span></div>
						<div><i class="start">起</i> <span>惠工广场</span></div>
						<div class="line"><i class="line"></i> <span><i class="fa fa-clock-o"></i>24站</span></div>
						<div><i class="end">终</i> <span>抚顺南站</span></div>
						<div><i class="fa fa-ellipsis-v"></i> <span><i class="fa fa-"></i>距离4.3公里</span></div>
						<div><i class="fa fa-map-pin"></i> <span>到达地点</span></div>  -->
				</div>	
	 	
	</div>
	
	<div  id="mapwork">	</div>
	
	<div class="box-side">
		<div id="close">×</div>
		<div  id="mapwork1">	
		
		</div>
	</div>
	
    </div>
    <!--页脚结束-->
    
<script type="text/javascript" src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
    <script type="text/javascript">
   $(function(){
	   $("#imgContainer").scrollImage();
	   $('#close').click(function(){
		   $('.box-side').css('display','none');
	   })
   })
     var sitename;
     sitename='${sitename}';
     var walking;
     walking='${walking}';
     console.info(walking);
     var starlat;
     var starlng;
      var staSitelat;
     var staSitelng;
     var ressta;
    
     var walkLine=[];
  //   starSitelat=41.798101, starSitelng=123.402952, starlng=117.21081309, starlat=39.1439299
		 	var map = new BMap.Map("mapwork");            // 创建Map实例
			map.centerAndZoom('沈阳', 10);
		    map.enableScrollWheelZoom(true);
		    map.enableDragging(true);
		    
		 	var map1 = new BMap.Map("mapwork1");            // 创建Map实例
			map1.centerAndZoom('沈阳', 10);		 	
		    map1.enableScrollWheelZoom(true);
		    map1.enableDragging(true);
		
		    
    	$(function(){
    
     		 if(walking!='' && walking!=null){
     			   starlat='${walking.starlat}';
     			   starlng='${walking.starlng}';
     			   staSitelat='${walking.starSitelat}';
     			   staSitelng='${walking.starSitelng}';
     		 	var  star= new BMap.Point(starlng,starlat);
    			var end = new BMap.Point(staSitelng,staSitelat);
    			var walkrange = new BMap.TransitRoute(map, {renderOptions:{map: map, autoViewport: true}});
    			
    			walkrange.search(star, end);
    			walkrange.setSearchCompleteCallback(function(result){
      			   var plan= result.getPlan(0);	
      			   ressta=plan.getDistance(true);  
      			   
	      		   var str="";
	   			   var partRoad=[];
	   			   var desc=plan.getDescription(false);
	   			   var regS1 = new RegExp("乘坐","g");	   		
	   			   desc=desc.replace(regS1,"，乘坐");
	   			   var regS2 = new RegExp("步行","g");	   		
	   			   desc=desc.replace(regS2,"，步行");
	   			   partRoad=desc.split("，");
	   				var index=0;
	   			   for(var i=0;i<partRoad.length;i++){
	   				   if(partRoad[i].indexOf("步行") != -1){
	   				
	   					  // str+=' <div class="gre" onclick="showMap('+index+')"><i class="fa fa-sort-amount-asc"></i> <span>'+partRoad[i]+'【查看详情】</span></div>';
	   					  str+=' <div class="gre"><i class="fa fa-sort-amount-asc"></i> <span>'+partRoad[i]+'</span></div>';
	   					   var tempLine=plan.getRoute(index);
	   					   walkLine.push(tempLine);
	   					   index++;
	   					   continue;
	   				   }else if(partRoad[i].indexOf("到达") != -1){
	   					 str+=' <div class="arrpla"><i class="fa fa-anchor"></i> <span>'+partRoad[i]+'</span></div>';
	   					   continue;
	   				   }else if(partRoad[i].indexOf("乘坐") != -1){
	   						str+=' <div class="gongjiao"><i class="fa fa-bus"></i> <span>'+partRoad[i]+partRoad[i+1]+'</span></div>';
	   					   //str+=partRoad[i]+partRoad[i+1];
	   					   i++;
	   					   continue;
	   				   }
	   			   }    	
      			  
      			  
      			var tipsite='';
      			tipsite+='<div><i class="fa fa-street-view start-address"></i> <span>我的地点</span></div>';
      			tipsite+=str;
      			//tipsite+='<div><i class="fa fa-ellipsis-v"></i> <span><i class=""></i>距离 '+ressta+'</span></div>';
      			//tipsite+='<div><i class="fa fa-anchor"></i> <span>'+sitename+'</span></div>';		
          		$("#walkPanel").html(tipsite);
      			  
      			 })
    		
     		 }
     		 
  
    		 
    		 $.ajax({url:"${ctx}/bus/getsitelinelist.do?json",async: false,
    				data:{sitename:sitename},
					type: "POST",dataType:'json',error:function(){},
					success:function(result){
						var upload='<ul>';
						for(var i=0;i<result.length;i++){
							var updotype;
							if(result[i].updown_type==1){
								updotype='下行';
							}else{
								updotype='上行';
							}
							upload+='<li><a onclick="toshowMap('+result[i].rou_id+')"><div><span class="time">';
							if(result[i].start_time!=null){
								upload+=result[i].start_time;
							}else{
								upload+='--';
							}		
							upload+='</span><span class="position">'+result[i].beginstationname+'</span></div><div><span class="name">'+result[i].rou_name+'<br />'+'('+updotype+')</span><i><img class="img" src="${ctx}/resource/image/main/zzarr.png" /></i></div><div><span class="time">';
							if(result[i].end_time!=null){
								upload+=result[i].end_time;
							}else{
								upload+='--';
							}	
							upload+='</span><span class="position">'+result[i].endstationname+'</span></div><div><span class="price">￥';
							if(result[i].price==null ||result[i].price=='undefined' ){
								upload+='--</span></div>';
							}else{
								upload+=result[i].price+'</span></div>';
							}
							upload+='</a></li>';
												
						}
						
						upload+='</ul>';
						$('#listBox').append(upload); 
						
						
						
					}
			 
				}); 	
    		 
    	})
    	
    	function showMap(param){
    		var walk=walkLine[param];
    		if (walk.getDistance(false) > 0){
				// 步行线路有可能为0
				$(".box-side").show();						
				map1.clearOverlays();  	
				var viewPoint=walk.getPath();		
			//	map1.setViewport(viewPoint);
				map1.addOverlay(new BMap.Polyline(viewPoint, {lineColor: "green"}));	
			}
    	}
    
    	
    
    	function toshowMap(rouId,updownType){
    		
    	/* 	if((singloc==""||singloc==null)&&(locInfo==""||locInfo==null)){
				window.location.href="${ctx}/bus/loc.do";
			}	 
			 	window.location.href="${ctx}/bus/todetail.do?rouId="+rouId+"&updownType="+updownType+"&locInfo="+locInfo; */
			 var siteType='siteType';
			 	
			 	
    		window.location.href="${ctx}/bus/todetail.do?rouId="+rouId+"&siteType="+siteType; 
			 	
			}
              
			</script>

</body>
</html>