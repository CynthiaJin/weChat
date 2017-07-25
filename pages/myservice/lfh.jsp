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
    <title>辽宁城际客运-雷锋号</title>
     <link rel="stylesheet" href="${ctx }/resource/css/style.css"/>
    <link rel="stylesheet" href="${ctx }/resource/css/main.css" />
    <link rel="stylesheet" href="${ctx }/resource/jquery-mobile/css/themes/default/jquery.mobile-1.4.5.min.css" />
    <link rel="stylesheet" href="${ctx }/resource/font-awesome-4.4.0/css/font-awesome.css" />
    <script type="text/javascript" src="${ctx }/resource/js/jquery-1.10.1.min.js" ></script>
    <script type="text/javascript" src="${ctx }/resource/jquery-mobile/js/jquery.mobile-1.4.5.min.js" ></script>
     <script type="text/javascript" src="${ctx }/resource/js/flow.js"></script>
    <style>
    
   </style>
</head>
<body data-role="page">
<div class="box">
    <!--页头-->
  <%--   <div class="topColor">
        <a class="topIcon" onclick="window.history.back();" data-transition="slide" data-direction="reverse">
        <img class="img" src="${ctx }/resource/image/main/backup.png">
        </a>
        <div class="topTitle">雷锋号</div>
        <a class="topIcon2" href="#userDetail"><img class="img" src="${ctx }/resource/image/main/user.png"></a>
    </div>
    <div class="clear"></div> --%>
     <div style="background:#35A8D7;height:5px;"></div>
<!--     <a class="topIcon" href="#userDetail"><i class="fa fa-user"></i></a> -->
    <!--页头结束-->
    <!--主体-->
    <div class="mainBox bottom0 company">
    	<div class="brandBox">
       		<div class="scrollImg">
				<ul id="imgContainer">
					<li><img src="${ctx }/resource//image/main/lfh-1.png" /></li>
					<li><img src="${ctx }/resource//image/main/lfh-2.png" /></li>
					<li><img src="${ctx }/resource//image/main/lfh-3.png" /></li>
					<li><img src="${ctx }/resource//image/main/lfh-4.png" /></li>
				</ul>
			</div>
       </div>
    	<div class="companyList">
    		<ul>
    			<li>
    				<a href="${ctx }/lfh/company.do">
	    				<i class="fa fa-list"></i>
	    				<span>公司简介</span>
    				</a>
    			</li>
    			<li>
    				<a href="${ctx }/lfh/view.do">
    					<i class="fa fa-flag"></i>
    					<span>公司风采</span>
    				</a>
    			</li>
    			<li>
	    			<a href="${ctx }/lfh/news.do">
	    				<i class="fa fa-newspaper-o"></i>
	    				<span>企业新闻</span>
	    			</a>
    			</li>
    			<li>
	    			<a href="${ctx }/lfh/ser.do">
	    				<i class="fa fa-feed"></i>
	    				<span>招聘信息</span>
	    			</a>
    			</li>
    		</ul>
    	</div>
    	<div class="l">
	    	<span>城际客运-雷锋号</span>
    	</div>
    
        <%-- <div class="serviceList">
            <h1 class="sev-h1">公司简介</h1>
            <div class="sev-bg">&nbsp;</div>
            <a href="${ctx }/lfh/company.do"><img src="${ctx }/resource//image/main/lfh-1.png" /></a>
        </div>
        <div class="serviceList">
            <h1 class="sev-h1">公司风采</h1>
            <div class="sev-bg">&nbsp;</div>
            <a href="${ctx }/lfh/view.do"><img src="${ctx }/resource//image/main/lfh-2.png" /></a>
        </div>
        <div class="serviceList">
            <h1 class="sev-h1">便民服务</h1>
            <div class="sev-bg">&nbsp;</div>
            <a href="${ctx }/lfh/ser.do"><img src="${ctx }/resource//image/main/lfh-3.png" /></a>
        </div>
        <div class="serviceList">
            <h1 class="sev-h1">企业新闻</h1>
            <div class="sev-bg">&nbsp;</div>
            <a href="${ctx }/lfh/news.do"><img src="${ctx }/resource//image/main/lfh-4.png" /></a>
        </div> --%>

    </div>
    <!--主体结束-->
    <!--用户信息panel-->
<!-- 	<div data-role="panel" id="userDetail" class="userDetail" data-display="overlay" data-position="right"  data-position-fixed="true"  >
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
			$("#imgContainer").scrollImage();
    	})
    </script>
</div>
</body>
</html>