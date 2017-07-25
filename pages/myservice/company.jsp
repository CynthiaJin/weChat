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
    <title>公司简介</title>
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
    <%-- <div class="topColor">
        <a class="topIcon" onclick="javascript:window.history.back();" data-transition="slide" data-direction="reverse"><img class="img" src="${ctx }/resource/image/main/backup.png"></a>
        <div class="topTitle">雷锋号</div>
        <a class="topIcon2" href="#userDetail"><img class="img" src="${ctx }/resource/image/main/user.png"></a>
    </div>
    <div class="clear"></div> --%>
     <div style="background:#35A8D7;height:5px;"></div>
 <!--    <a class="topIcon" href="#userDetail"><i class="fa fa-user"></i></a> -->
    <!--页头结束-->
    <!--主体-->
    <div class="mainBox bottom0">
        <div class="content">
             <h1>公司简介</h1>
             <blockquote>2016年2月29日 雷锋号</blockquote>
             <img src="${ctx }/resource/image/main/about.jpg" height="100%" width="100%">
             <p>辽宁城际客运有限公司是跨市组建的股份制客运企业，承担着沈阳经济区中最繁忙的城际线路沈阳－抚顺的旅客运输任务。</p>
<%--              <img src="${ctx }/resource/image/lfh/lfh01.jpg" height="100%" width="100%"> --%>
             <p>现有五条沈阳—抚顺城际客运线路、九条城际公交线路、三条沈阳桃仙国际机场—本溪、盘锦、阜新空港城际线路。公司现有员工500人，运营车辆205台，日均运送乘客20000人次左右。</p>        	
        	 <img src="${ctx }/resource/image/lfh/lfh02.jpg" height="100%" width="100%">
        	 <p>秉承“弘扬雷锋精神，创建品牌线路、发展城际客运、服务辽沈人民”的企业宗旨，公司把雷锋精神融入到企业文化建设之中，全体员工立足岗位学雷锋，走出了一条具有浓郁的雷锋文化特色的企业发展之路，被沈抚两地乘客亲切地称为“雷锋号”。</p>
        	 <img src="${ctx }/resource/image/lfh/lfh03.jpg" height="100%" width="100%">
        	 <img src="${ctx }/resource/image/lfh/lfh04.jpg" height="100%" width="100%">
        	 <img src="${ctx }/resource/image/lfh/lfh05.jpg" height="100%" width="100%">
		</div>
        </div>

    </div>
    <!--主体结束-->

</body>
</html>