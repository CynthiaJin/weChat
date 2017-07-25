<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="format-detection" content="telephone=no" />
    <title>我的订单</title>
    <link rel="stylesheet" href="${ctx }/resource/css/style.css"/>
    <link rel="stylesheet" href="${ctx }/resource/css/main.css" />
    <link rel="stylesheet" href="${ctx }/resource/jquery-mobile/css/themes/default/jquery.mobile-1.4.5.min.css" />
    <link rel="stylesheet" href="${ctx }/resource/font-awesome-4.4.0/css/font-awesome.css" />
    <script type="text/javascript" src="${ctx }/resource/js/jquery-1.10.1.min.js" ></script>
    <script type="text/javascript" src="${ctx }/resource/jquery-mobile/js/jquery.mobile-1.4.5.min.js" ></script>
    <style>
    
    </style>
</head>
<body class="myOrder" data-role="page">
<div class="box">
    <!--页头-->
   <%--  <div class="topColor">
        <a class="topIcon" onclick="javascript:window.history.back();" data-transition="slide" data-direction="reverse"><img class="img" src="${ctx }/resource/image/main/backup.png"></a>
        <div class="topTitle">我的预约</div>
        <a class="topIcon2" href="#userDetail"><img class="img" src="${ctx }/resource/image/main/user.png"></a>
    </div>
    <div class="clear"></div> --%>
     <div style="background:#35A8D7;height:5px;"></div>
    <span class="topIcon"><i class="fa fa-user"></i></span>
    <!--页头结束-->
    <!--主体-->
    <div class="mainBox bottom0">
    	<div class="orderMessage">
    		<ul>
	    		<li>
	    			<img class="rname" src="${ctx }/resource/image/main/line.png" ></img>
	    			<span>线路名称</span>
	    			<span>沈阳桃仙机场-本溪</span>
	    		</li>
	    		<li>
	    			<img class="rnum" src="${ctx }/resource/image/main/full.png"></img>
	    			<span>票数</span>
	    			<span>1</span>
	    		</li>
	    		<li>
	    			<img class="rposition" src="${ctx }/resource/image/main/half.png"></img>
	    			<span>座位</span>
	    			<span>A-22</span>
	    		</li>
	    		<li>
	    			<img class="rtime" src="${ctx }/resource/image/main/time.png"></img>
	    			<span>出行时间</span>
	    			<span>2016/2/26 14:22:25</span>
	    		</li>
	    		<li class="busType">
	    			<img class="busType" src="${ctx }/resource/image/main/cartype.png"></img>
	    			<span>车型</span>
	    			<img class="busTypeImg img" src="${ctx }/resource/image/main/airbus.png"></img>
	    		</li>
	    		<li>
	    			<img class="totalM" src="${ctx }/resource/image/main/cash.png"></img>
	    			<span>票价合计</span>
	    			<span>79.00元</span>
	    		</li>
	    	</ul>
    	</div>
    	
    	<div class="ticktState out">
    		<span>车票已过期</span>
    		<a>再次购买</a>
    	</div>
    	<div class="ticktState in">
    		<a class="qrcode btn ui-btn" href="#myPopup" data-rel="popup" data-transition="pop"  data-position-to="window">出示二维码
    		<i class="fa fa-qrcode"></i>
    		</a>
    	</div>
    	<a class="btn judge">行 程 评 价</a>
    
    </div>
     <div data-role="popup" id="myPopup" class="ui-content qrcodePop " data-overlay-theme="b">
     	 <a href="#pageone" data-rel="back" class="ui-btn ui-corner-all ui-shadow ui-btn-a ui-icon-delete ui-btn-icon-notext ui-btn-right">Close</a>
      <img src="${ctx }/resource/image/main/qrcord-big.png"  />
      	<span>请将二维码对准终端扫码乘车</span>
    </div>
    <!--主体结束-->
     <!--用户信息panel-->
	<div data-role="panel" id="userDetail" class="userDetail" data-display="overlay" data-position="right"  data-position-fixed="true" >
		<ul>
			<li>
				<span class="logo"><img class="img" src="../../resource/image/main/icon7.png" /></span>
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
	</div>
    <!--页脚-->
    <%-- <div class="footer">
    <div class="iconBox">
        <div class="icon"><img src="${ctx }/resource/image/main/icon8.png"></div>
        <p>我的积分</p>
    </div>
    <div class="iconBox">
        <div class="icon"><img src="${ctx }/resource/image/main/icon9.png"></div>
        <p>我的预定</p>
    </div>
    <div class="iconBox">
        <div class="icon"><img src="${ctx }/resource/image/main/icon10.png"></div>
        <p>我的建议</p>
    </div>
    </div> --%>
    <!--页脚结束-->
    <script type="text/javascript">
    	
    	
    </script>
</div>
</body>
</html>