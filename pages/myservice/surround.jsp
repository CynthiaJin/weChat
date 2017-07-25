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
    <title>周边服务</title>
     <link rel="stylesheet" href="${ctx }/resource/css/style.css"/>
    <link rel="stylesheet" href="${ctx }/resource/css/main.css" />
    <link rel="stylesheet" href="${ctx }/resource/jquery-mobile/css/themes/default/jquery.mobile-1.4.5.min.css" />
    <link rel="stylesheet" href="${ctx }/resource/font-awesome-4.4.0/css/font-awesome.css" />
    <script type="text/javascript" src="${ctx }/resource/js/jquery-1.10.1.min.js" ></script>
    <script type="text/javascript" src="${ctx }/resource/jquery-mobile/js/jquery.mobile-1.4.5.min.js" ></script>
    <script type="text/javascript" src="${ctx }/resource/js/flow.js"></script>
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=ezofnKG8X1gQ29UuOUjQlo1Q"></script>
    <script type="text/javascript" src="${ctx }/resource/lbs/js/jquery.bmap.core.js"></script>
    <script type="text/javascript" src="${ctx }/resource/lbs/js/jquery.bmap.overlay.js"></script>
    <style>
    
    </style>
</head>
<body >
<div class="box surround"  data-role="page">
    <!--页头-->
   <!--  <div class="topColor">
        <a class="topIcon" onclick="javascript:window.history.back()" data-transition="slide" data-direction="reverse"><img class="img" src="${ctx }/resource/image/main/backup.png"></a>
        <div class="topTitle">周边服务</div>
        <a class="topIcon2" href="#userDetail"><img class="img" src="${ctx }/resource/image/main/user.png"></a>
    </div>
    <div class="clear"></div> -->
     <div style="background:#35A8D7;height:5px;"></div>
<!--     <a class="topIcon" href="#userDetail"><i class="fa fa-user"></i></a> -->
    <!--页头结束-->
    <!--主体-->
    <div class="mainBox bottom0">
    	<div class="brandBox">
       		<div class="scrollImg">
				<ul id="imgContainer1">
					<li><img class="img" src="${ctx }/resource/image/main/service-1.png"><span>加油加气</span></li>
					<li><img class="img" src="${ctx }/resource/image/main/service-2.png"><span>小件快递</span></li>
					<li><img class="img" src="${ctx }/resource/image/main/service-3.png"><span>城际广告</span></li>
					<li><img class="img" src="${ctx }/resource/image/main/service-5.jpg"><span>优惠活动</span></li>
				</ul>
			</div>
       </div>
       <div class="surroundList">
       		<ul>
       			<li>
       				<a href="${ctx }/surround/gas.do" data-transition="slide">
       					<i class="fa fa-building"></i>
       					<span>加油加气</span>
       				</a>
       			</li>
       			<li>
       				<a href="${ctx }/surround/ems.do" data-transition="slide">
       					<i class="fa fa-send-o"></i>
       					<span>小件快递</span>
       				</a>
       			</li>
       			<li>
       				<a href="${ctx }/surround/ad.do" data-transition="slide">
       					<i class="fa fa-newspaper-o"></i>
       					<span>城际广告</span>
       				</a>
       			</li>
       		</ul>
       		<div class="youhui">
       			<h4>优惠活动</h4>
       			<div>
       				<div>
       					<i class="fa fa"></i>
       					<li><a href="${ctx }/surround/discount.do" data-transition="slide"><img class="img" src="${ctx }/resource/image/main/service-5.jpg"></a></li>
       				</div>
       			</div>
       		</div>
       </div>
        <%-- <div class="serviceList">
            <h1 class="sev-h1">加油加气</h1>
            <div class="sev-bg">&nbsp;</div>
            <a href="${ctx }/surround/gas.do"><img class="img" src="${ctx }/resource/image/main/service-1.png"></a>
        </div>
        <div class="serviceList">
            <h1 class="sev-h1">小件快递</h1>
            <div class="sev-bg">&nbsp;</div>
           <a href="${ctx }/surround/ems.do"> <img class="img" src="${ctx }/resource/image/main/service-2.png"></a>
        </div>
        <div class="serviceList">
            <h1 class="sev-h1">城际广告</h1>
            <div class="sev-bg">&nbsp;</div>
            <a href="${ctx }/surround/ad.do"><img class="img" src="${ctx }/resource/image/main/service-3.png"></a>
        </div> --%>

    </div>
    <!--主体结束-->
     <!--用户信息panel-->
	<!-- <div data-role="panel" id="userDetail" class="userDetail" data-display="overlay" data-position="right"   data-position-fixed="true" >
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
	</div> -->
    <!--页脚-->
<!--     <div class="footer"> -->
<!--     <div class="iconBox1"> -->
<%--         <div class="icon"><img src="${ctx }/resource//image/main/icon4.png"></div> --%>
<%--         <a href="${ctx }/MySer/lfh.do"><p role="mid">雷锋号</p></a> --%>
<!--     </div> -->
<!--     <div class="iconBox1"> -->
<%--         <div class="icon"><img src="${ctx }/resource//image/main/icon5.png"></div> --%>
<%--         <a href="${ctx }/MySer/citytour.do"><p>城际旅游</p></a> --%>
<!--     </div> -->
<!--     <div class="iconBox1"> -->
<%--         <div class="icon"><img src="${ctx }/resource//image/main/icon6.png"></div> --%>
<%--         <a href="${ctx }/MySer/surround.do"><p>周边服务</p></a> --%>
<!--     </div> -->
<!--     <div class="iconBox1"> -->
<%--         <div class="icon"><img src="${ctx }/resource//image/main/icon7.png"></div> --%>
<!--         <p>失物招领</p> -->
<!--     </div> -->
<!--     </div> -->

    <!--页脚结束-->
    <script type="text/javascript">
    	$(function(){
    		//调用 图片滚动插件
			$("#imgContainer1").scrollImage();
    	})
    </script>
</div>
</body>
</html>