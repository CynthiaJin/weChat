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
    <title>招聘信息</title>
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
   <%--  <div class="topColor">
        <a class="topIcon" onclick="javascript:window.history.back()" data-transition="slide" data-direction="reverse"><img class="img" src="${ctx }/resource/image/main/backup.png"></a>
        <div class="topTitle">雷锋号</div>
        <a class="topIcon2" href="#userDetail"><img class="img" src="${ctx }/resource/image/main/user.png"></a>
    </div>
    <div class="clear"></div> --%>
     <div style="background:#35A8D7;height:5px;"></div>
<!--     <a class="topIcon" href="#userDetail"><i class="fa fa-user"></i></a> -->
    <!--页头结束-->
    <!--主体-->
   <div class="mainBox bottom0">
        <div class="content">
              <blockquote>2016年2月29日 雷锋号</blockquote>            
             <%-- <img src="${ctx }/resource/image/lfh/news01.jpg" height="100%" width="100%">        --%>      	
<%--              <img src="${ctx }/resource/image/lfh/news02.jpg" height="100%" width="100%">             	 --%>
			<h4>招聘信息</h4>
			
			<p> 辽宁城际客运有限公司雷锋号因业务发展需要，现诚聘驾驶员若干名： </p>
			<p>1、大客驾驶员：男，年龄45岁以下，A1、A2驾照。</p>
			<p>2、商务车驾驶员：男，35岁以下，A2、B1、B2驾照。</p>
			<p> 以上人员要求有客运准驾证，身体健康，无事故，三年以上客运经验。</p>
			<p>有意者请携带驾驶证、准驾证、身份证、户口簿原件及复印件，一张一寸免冠彩色照片，到公司人力资源部报名。 </p>
        	 <h3 style="text-align:center;padding:10px auto">联系电话：024-58217153</h3>
		</div>
        </div>
    <!--主体结束-->

</div>
</body>
</html>