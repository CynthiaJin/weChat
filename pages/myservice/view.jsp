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
    <title>公司风采</title>
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
<!--     <a class="topIcon" href="#userDetail"><i class="fa fa-user"></i></a> -->
    <!--页头结束-->
    <!--主体-->
    <div class="mainBox bottom0">
        <div class="lfhContent">
             <h1>公司风采</h1>
             <blockquote>2016年2月29日 雷锋号</blockquote>            
             <p>雷锋号企业形象现身中央电视台</p>
             <img src="${ctx }/resource/image/lfh/view01.jpg" height="100%" width="100%">
             <p>(一)</p>             	
        	 <img src="${ctx }/resource/image/lfh/view02.jpg" height="100%" width="100%">
        	 <p>(二)</p>
        	 <p>公司员工参加中央电视台“歌声与微笑”特别节目</p>
        	 <img src="${ctx }/resource/image/lfh/view03.jpg" height="100%" width="100%">
        	  <p>(三)</p>            	
        	 <img src="${ctx }/resource/image/lfh/view04.jpg" height="100%" width="100%">
        	 <p>(四)</p>
		</div>
        </div>

    </div>
    <!--主体结束-->

</body>
</html>