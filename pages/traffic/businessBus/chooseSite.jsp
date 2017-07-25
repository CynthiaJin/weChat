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
    <title>选择出发站点</title>
   <link rel="stylesheet" href="${ctx }/resource/font-awesome-4.4.0/css/font-awesome.css" />
    <link rel="stylesheet" href="${ctx }/resource/css/style.css"/>
    <link rel="stylesheet" type="text/css" href="${ctx }/resource/css/main.css"/>
    <link rel="stylesheet" href="${ctx }/resource/jquery-mobile/css/themes/default/jquery.mobile-1.4.5.min.css" />
    <script src="${ctx }/resource/js/jquery-1.10.1.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="${ctx }/resource/js/main.js" ></script>
    <script type="text/javascript" src="${ctx }/resource/jquery-mobile/js/jquery.mobile-1.4.5.min.js" ></script>
    <style>
    	
    </style>
</head>
<body data-role="page">
<div class="box" class="">
    <!--页头-->
    <%-- <div class="topColor">
        <a class="topIcon"><img class="img" src="${ctx }/resource/image/main/backup.png"></a>
        <div class="topTitle">商务车</div>
        <a class="topIcon2" href="#userDetail"><img class="img" src="${ctx }/resource/image/main/user.png"></a>
    </div>
    <div class="clear"></div> --%>
    <!-- <div style="background:#35A8D7;height:5px;"></div>
    <a class="topIcon" href="#userDetail"><i class="fa fa-user"></i></a> -->
    <!--页头结束-->
    <!--主体-->
    <div class="mainBox bottom0">
     	<a class="putBox">
    		<span class="left"><img class="img" src="${ctx }/resource/image/main/line.png"></span>
    		<span class="center">选择商务车出发地点</span>
    	</a>
       <%--  <div class="putBox">
            <div class="putIcon-left"><img class="img" src="${ctx }/resource/image/main/line.png"></div>
            <p>选择商务车出发城市</p>
            <div class="putIcon-right"><img class="img" src="${ctx }/resource/image/main/more.png"></div>
            <div class="clear"></div>
        </div> --%>
       	<h4>城际专线:请选择出发地点</h4>
       	<div class="tagedBox">
  
       		<c:forEach items="${stationList }" var="station">
       			<span class="taged" onclick="getSite(this)">${station.staName }
       				<input type="hidden" name="startCity" value="${station.city }"/>
       				<input type="hidden" name="startSite" value="${station.staName }"/>
       				<input type="hidden" name="lat" value="${station.bLat }"/>
       				<input type="hidden" name="lon" value="${station.bLon }"/>
       			</span>       			
       		</c:forEach>
       		<!-- <span class="taged" onclick="getCityCode('3')">本溪</span>
       		<span class="taged" onclick="getCityCode('4')">铁岭</span> -->
       	</div>
       	<form id="businessForm" action="${ctx }/busniessbus/submitorder.do" method="post">
	    	<a class="btn blue"  onclick="orderBus();">预约线路</a>
    	</form>
     <!-- <h4>机场快线:</h4>
       	<div class="tagedBox">
       		<span class="taged" onclick="chooseAirPort()">机场商务</span>       	       
       	</div> -->
    </div>
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
    <script type="text/javascript">
    function getSite(id){
    	var $this=$(id);  
    	var startCity=$this.children().eq(0).val();
    	var startSite=$this.children().eq(1).val();
    	var lat=$this.children("input:eq(2)").val();  
    	var lon=$this.children().eq(3).val();    	
    	var url="${ctx}/busniessbus/in/toChooseStart.do?startCity="+startCity+"&startSite="+startSite+"&lat="+lat+"&lon="+lon;
    	window.location.href=url;
    }
  
    </script>
</div>
</body>
</html>