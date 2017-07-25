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
				<h1>【优惠活动】</h1>
				<blockquote>2016年2月29日 </blockquote>
				<img class="img" src="${ctx }/resource/image/main/service-5.jpg"  width="100%">
				<p>公司拥有沈阳—抚顺城际客运线路、沈阳桃仙国际机场—本溪、盘锦、阜新空港城际线路、抚顺沈抚城际客运站LED广告显示屏等独家的媒体资源。诚邀合作。</p>				
             	<h3>一、CNG优惠政策</h3>
             	<p>1、为贯彻国家低碳、节能减排的能源环保战略，满足抚顺市车用天然气汽车供气以及车辆安装（汽、柴油车改装为天然气汽车）、维修、维护的需求，促进抚顺市燃气汽车的发展，我公司免费为车辆安装现在市场价格为陆仟贰佰元（6200元）的天然气设备一套，安装后不收取任何保证金和手续费。</p>
             	<p>2、公司办理会员卡可享受预存500元赠送25元优惠。</p>
             	<h3>二、LNG优惠政策：</h3>
             	<p>我公司零售价格6元/公斤，预存1万元以上可享受大客户价格，4.75元/公斤（价格随行情改变，此价格为2.26日预付款客户单价）。</p>
             	<br/>
             	<p><strong>以上优惠政策内容最终解释权归抚顺中联清洁能源有限公司所有。</strong></p>
             	
		</div>
		
	</div>

</div>
</body>
</html>