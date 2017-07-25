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
    <title>城际广告</title>
    <link rel="stylesheet" href="${ctx }/resource/css/style.css"/>
    <link rel="stylesheet" href="${ctx }/resource/css/main.css" />
    <link rel="stylesheet" href="${ctx }/resource/jquery-mobile/css/themes/default/jquery.mobile-1.4.5.min.css" />
    <link rel="stylesheet" href="${ctx }/resource/font-awesome-4.4.0/css/font-awesome.css" />
    <script type="text/javascript" src="${ctx }/resource/js/jquery-1.10.1.min.js" ></script>
    <script type="text/javascript" src="${ctx }/resource/jquery-mobile/js/jquery.mobile-1.4.5.min.js" ></script>
</head>
<body data-role="page">
<div class="box">
  <!--页头-->
  
<!--     <div class="topColor"> 
        <a class="topIcon" onclick="javascript:window.history.back();" data-transition="slide" data-direction="reverse"><img class="img" src="${ctx }/resource/image/main/backup.png"></a>
       <div class="topTitle">雷锋号</div> 
         <a class="topIcon2" href="${ctx }/pages/myservice/userDetail.jsp" data-transition="slide"><img class="img" src="${ctx }/resource/image/main/user.png"></a> 
    </div> -->
<!--     <div class="clear"></div>  -->
     <div style="background:#35A8D7;height:5px;"></div>
<!--     <a class="topIcon" href="#userDetail"><i class="fa fa-user"></i></a> -->
    <!--页头结束-->
    <!--主体-->
    <div class="mainBox bottom0">
		<div class="content">
				<h1>【我的地盘你做主】</h1>
				<blockquote>2016年2月29日 雷锋号</blockquote>
				<img class="img" src="${ctx }/resource/image/ad/ad.jpg"  width="100%">
				<p>公司拥有沈阳—抚顺城际客运线路、沈阳桃仙国际机场—本溪、盘锦、阜新空港城际线路、抚顺沈抚城际客运站LED广告显示屏等独家的媒体资源。诚邀合作。</p>				
             	<h3>业务范围</h3>
             	<p class="title">客运站LED广告</p>
             	<img class="img" src="${ctx }/resource/image/ad/keyunzhan.jpg" width="100%">
             	<p class="title">站内LED广告</p>
             	<img src="${ctx }/resource/image/ad/lfhdating.jpg"  width="100%">
             	<p class="title">套帽广告</p>
				<img class="img" src="${ctx }/resource/image/ad/taomao.jpg" width="100%">
				<p class="title">车载电视广告</p>
             	<img class="img" src="${ctx }/resource/image/ad/bustv.jpg" width="100%">
             	<p class="title">车座广告</p>
             	<img class='img' src="${ctx }/resource/image/ad/chezuo.jpg"   width="100%">
             	<p><strong>垂询电话：024—58217156、58217097</strong></p>
             	
		</div>
		<a class="btn blue" href="${ctx }/surround/goNewAd.do">我要打广告</a>
	</div>

</div>
</body>
</html>