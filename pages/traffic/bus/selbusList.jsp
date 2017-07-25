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
    <title>城际巴士线路列表</title>
    <link rel="stylesheet" href="${ctx }/resource/css/style.css"/>
    <link rel="stylesheet" type="text/css" href="${ctx }/resource/css/main.css"/>
    <link rel="stylesheet" href="${ctx }/resource/font-awesome-4.4.0/css/font-awesome.css" />
    <link rel="stylesheet" href="${ctx }/resource/jquery-mobile/css/themes/default/jquery.mobile-1.4.5.min.css" />
    <script src="${ctx }/resource/js/jquery-1.10.1.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="${ctx }/resource/js/main.js" ></script>
     <script type="text/javascript" src="${ctx }/resource/js/angular.min.js" ></script>
    <script type="text/javascript" src="${ctx }/resource/jquery-mobile/js/jquery.mobile-1.4.5.min.js" ></script>
     <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=ezofnKG8X1gQ29UuOUjQlo1Q"></script>
     <script type="text/javascript" src="${ctx }/resource/js/flow.js"></script>
     <style>
     		#mapwork{width:0px;height:0px;}
     		.position{
     			margin-top:10px;
     		}
     </style>
     <script>
     	function test(){
     		
     		alert("无查询结果");
     		window.location.href="${ctx }/bus/loc.do";
     	}
     </script>
</head>
<body data-role="page">
<div class="box searchBus">
    <!--页头-->
  <%--   <div class="topColor">
        <a class="topIcon" onclick="javascript:window.history.back()" data-transition="slide" data-direction="reverse"><img class="img" src="${ctx }/resource/image/main/backup.png"></a>
        <div class="topTitle">城际巴士</div>
        <a class="topIcon2" href="#userDetail"><img class="img" src="${ctx }/resource/image/main/user.png"></a>
    </div>
    <div class="clear"></div> --%>
     <div style="background:#35A8D7;height:5px;"></div>
  <!--   <a class="topIcon" href="#userDetail"><i class="fa fa-user"></i></a> -->
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
        <div  id="mapwork"></div>
		<div class="listBox" id="listBox">	
		<!--		<div class="walkPanel"  id="walkPanel">
				  <div><i class="fa fa-street-view"></i> <span>我的地点</span></div>
						<div><i class="fa fa-ellipsis-v"></i> <span><i class=""></i>距离 0.5公里</span></div>
						<div><i class="start">起</i> <span>惠工广场</span></div>
						<div class="line"><i class="line"></i> <span><i class="fa fa-clock-o"></i>24站</span></div>
						<div><i class="end">终</i> <span>抚顺南站</span></div>
						<div><i class="fa fa-ellipsis-v"></i> <span><i class="fa fa-"></i>距离4.3公里</span></div>
						<div><i class="fa fa-map-pin"></i> <span>到达地点</span></div> 
				</div>	
				 -->	
			 <ul>
			 <c:if test="${!empty  nolines}">			 	
<!-- 			 	<div style="color:red;"><i class="fa fa-warning"></i><span>无查询结果</span></div> -->
			 	<script>test();</script>
			 </c:if>
			 <c:forEach items="${busList }" var="buslist">
				<li>
					<a  onclick="toshowMap(${buslist.rou_id})">
						<div>
							<%-- <span class="time">
							<c:if test="${buslist.start_time==''}">
								--
							</c:if>
							<c:if test="${buslist.start_time !=''}">
								${buslist.start_time}
							</c:if>
							</span> --%>
							<span class="position">${buslist.beginstationname}</span>
						</div>
						<div>
							<span class="name">${buslist.rou_name}<br /> 
								<c:if test="${buslist.updown_type=='0' }">（上行）</c:if>
								<c:if test="${buslist.updown_type=='1' }">（下行）</c:if>
							 </span>
							<i><img class="img" src="${ctx }/resource/image/main/zzarr.png" /></i>
						</div>
						<div>
							<%-- <span class="time">
							<c:if test="${buslist.end_time==''}">
								--
							</c:if>
							<c:if test="${buslist.end_time !=''}">
								${buslist.end_time}
							</c:if>
							</span> --%>
							<span class="position">${buslist.endstationname}</span>
						</div>
						<div>
							<span class="price">￥${buslist.price}</span>
						</div>
					</a>
				</li>
				
				
				</c:forEach>  
			
				<!-- <li>
					<a>
					<span>3号线高（下行）</span>
					<span>抚顺南站-沈阳北站  05:05:00--20:30:00</span>
					</a>
					
				</li>
				<li>
					<a>
					<span>3号线高（下行）</span>
					<span>抚顺南站-沈阳北站  05:05:00--20:30:00</span>
					</a>
					
				</li>
				<li>
					<a>
					<span>3号线高（下行）</span>
					<span>抚顺南站-沈阳北站  05:05:00--20:30:00</span>
					</a>
					
				</li>-->
			 </ul> 
	<!-- 
		</div>
		 <div class="putBox">
            <div class="putIcon-left"><img class="img" src="${ctx }/resource/image/main/line.png"></div>
            <p>查看城际巴士全部线路</p>
            <div class="putIcon-right"><img class="img" src="${ctx }/resource/image/main/more.png"></div>
            <div class="clear"></div>
        </div>
    </div>
    <!--主体结束-->
    <!--用户信息panel-->
<!-- 	<div data-role="panel" id="userDetail" class="userDetail" data-display="overlay" data-position="right"  data-position-fixed="true"  >
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
   <%--  <div class="footer">
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
<script type="text/javascript" src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
    <script type="text/javascript">
     var sitename;
     sitename='${sitename}';
     
     
     var busList;
  
     busList='${busList}';	
     console.log(busList);
     var walking;
     walking='${walking}';
     console.info(walking);
     var starlat;
     var starlng;
      var staSitelat;
     var staSitelng;
     var ressta;
     

		 	 var map = new BMap.Map("mapwork");            // 创建Map实例
			map.centerAndZoom('沈阳', 10);
		    map.enableScrollWheelZoom(true);
		    map.enableDragging(true);
		
		    
    	$(function(){
        		//调用 图片滚动插件
    			$("#imgContainer").scrollImage();
    		 if(walking!='' && walking!=null){
   			   starlat='${walking.starlat}';
   			   starlng='${walking.starlng}';
   			   staSitelat='${walking.starSitelat}';
   			   staSitelng='${walking.starSitelng}';
   		 	var  star= new BMap.Point(starlng,starlat);
  			var end = new BMap.Point(staSitelng,staSitelat);
  			var walkrange = new BMap.WalkingRoute(map, {renderOptions:{map: map, autoViewport: true}});
  			walkrange.search(star, end);
  			walkrange.setSearchCompleteCallback(function(result){
    			   var plan= result.getPlan(0);	
    			  ressta=plan.getDistance(true);  
    			var tipsite='';
    			tipsite+='<div><i class="fa fa-street-view"></i> <span>我的地点</span></div>';
    			tipsite+='<div><i class="fa fa-ellipsis-v"></i> <span><i class=""></i>距离 '+ressta+'</span></div>';
    			tipsite+='<div><i class="start">起</i> <span>'+sitename+'</span></div>';		
        		$("#walkPanel").html(tipsite);
    			  
    			 })
  		
   		 }
    		
					
    	})
    	
    
    
    
    
    	function toshowMap(rouId){
    		
    		/* if((singloc==""||singloc==null)&&(locInfo==""||locInfo==null)){
				window.location.href="${ctx}/bus/loc.do";
			} */	
			 var siteType='siteType';
			
			
			 	window.location.href="${ctx}/bus/todetail.do?rouId="+rouId+"&siteType="+siteType; 
			}
              
			</script>
</div>
</body>
</html>