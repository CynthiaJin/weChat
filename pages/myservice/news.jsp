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
    <title>企业新闻</title>
     <link rel="stylesheet" href="${ctx }/resource/css/style.css"/>
    <link rel="stylesheet" href="${ctx }/resource/css/main.css" />
    <link rel="stylesheet" href="${ctx }/resource/jquery-mobile/css/themes/default/jquery.mobile-1.4.5.min.css" />
    <link rel="stylesheet" href="${ctx }/resource/font-awesome-4.4.0/css/font-awesome.css" />
    <script type="text/javascript" src="${ctx }/resource/js/jquery-1.10.1.min.js" ></script>
    <script type="text/javascript" src="${ctx }/resource/jquery-mobile/js/jquery.mobile-1.4.5.min.js" ></script>

</head>
<body>
<div class="box">
    <!--页头-->
   <%--  <div class="topColor">
        <a class="topIcon" onclick="javscript:window.history.back()" data-transition="slide" data-direction="reverse"><img class="img" src="${ctx }/resource/image/main/backup.png"></a>
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
             <h1>企业新闻</h1>
             <blockquote>2016年2月29日 雷锋号</blockquote>            
             <img src="${ctx }/resource/image/lfh/ser01.jpg" height="100%" width="100%">             	
        	 <p>1.老人不知道钱包咋丢的 怕家人埋怨谎称被抢了 其实是被雷锋号司机拣到了。</p>
        	 <a href="http://www.0245.net.cn/article/article_146340.html">http://www.0245.net.cn/article/article_146340.html</a>
        	 <p>2.抚顺“雷锋号”驾驶员班后留心，凌晨救助单衣八旬老人。</p>
        	 <a href="http://www.0245.net.cn/article/article_143577.html">http://www.0245.net.cn/article/article_143577.html</a>
        	 <p>3.雷锋号司机勇救“燃火”。</p>
        	 <a href="http://www.fs024.com/video/video-18412.html">http://www.fs024.com/video/video-18412.html</a>
        	 <p>4.外地乘客乘坐雷锋号遗落手包，内有8000元，抚顺驾驶员拾金不昧及时归还。</p>
        	 <a href="http://www.0245.net.cn/article/article_131024.html">http://www.0245.net.cn/article/article_131024.html</a>
        	 <p>5.挎包落在雷锋号，内有一年工资3万余元，司机王刚捡到归还。</p>
        	 <a href="http://www.0245.net.cn/article/article_120075.html">http://www.0245.net.cn/article/article_120075.html</a>
		</div>
        </div>
    <!--主体结束-->

</div>
</body>
</html>