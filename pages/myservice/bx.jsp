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
    <title>国际旅游</title>
    <link rel="stylesheet" href="${ctx }/resource/css/style.css"/>
    <link rel="stylesheet" href="${ctx }/resource/css/main.css" />
    <link rel="stylesheet" href="${ctx }/resource/jquery-mobile/css/themes/default/jquery.mobile-1.4.5.min.css" />
    <link rel="stylesheet" href="${ctx }/resource/font-awesome-4.4.0/css/font-awesome.css" />
    <script type="text/javascript" src="${ctx }/resource/js/jquery-1.10.1.min.js" ></script>
    <script type="text/javascript" src="${ctx }/resource/jquery-mobile/js/jquery.mobile-1.4.5.min.js" ></script>
    <style type="text/css">
    #pic1,#pic2,#pic3,#pic4,#pic5{
   border: solid 3px #FFFFFF;
    }
    .banner img{
	    	width:100%;
	    	height:250px;
	    	display:block;
	    }
	    .content p{
	    	text-indent:0px;
	    	line-height:20px !important;
	    	background:yellow;
	    	padding:0 5px;
	    }
	     .tab-title{
	    	background:#35A8D7;
	    	color:#fff;
	    	padding:5px;
	    	text-align:center;
	    }
	    .one-day p{
	    	border:1px solid #000;
	    }
	    .tel{
	    	display:inline-block;
	    	width:100%;
	    	height:50px;
	    	line-height:50px;
	    	color:#000 !important;
	    	background:#fff;
	    	text-align:center;
	    }
    </style>
</head>
<body data-role="page">
<div class="box">
    <!--页头-->
    <%-- <div class="topColor">
        <a class="topIcon" onclick="javascript:window.history.back();" data-transition="slide" data-direction="reverse"><img class="img" src="${ctx }/resource/image/main/backup.png"></a>
        <div class="topTitle">雷锋号</div>
        <a class="topIcon2" href="#userDetail"><img class="img" src="${ctx }/resource//image/main/user.png"></a>
    </div>
    <div class="clear"></div> --%>
     <div style="background:#35A8D7;height:5px;"></div>
<!--     <a class="topIcon" href="#userDetail"><i class="fa fa-user"></i></a> -->
    <!--页头结束-->
    <!--主体-->
    <div class="mainBox bottom0">
        <div class="content">
          
            <div style="background: #0099FF; height: 50px;" >
           		<h3 style="text-align: center; line-height:50px; color: white; " >国际旅游</h3>
            </div>
             <div class="banner">
             	<img src="${ctx }/resource/image/citytour/travel_american.jpg">
             	<img src="${ctx }/resource/image/citytour/travle_thailand.jpg">
             </div>
             <div class="tab-details">
             	<h2 class="tab-title">5月份国际线路</h2>
             	<div class="one-day">
             		<p>
             			港澳纯玩2600
             		</p>
             		<p>
             			台湾环岛豪华游  3580 
             		</p>
             		<p>
             			泰一地7日 2880
             		</p>
             		<p>
             			普吉岛6日 3680 
             		</p>
             		<p>
             			曼巴普全景10日  4680
             		</p>
             		<p>
             			泰新马11日  3980
             		</p>
             		<p>
             			迪拜6800起
             		</p>
             		<p>
             			首尔一地3+1日  2780
             		</p>
             		<p>
             			首尔济州岛6日【5+1】釜山进出  2580
             		</p>
             		<p>
             			首尔江原道双船7日【营口港】680

             		</p>
             		<p>
             			日本本州三飞阪东6日游  5480
             		</p>
             		<p>
             			日本本州阪东双飞6日豪华游   4980
             		</p>
             		<p>
             			埃及10日游 9900
             		</p>
             		<p>
             			南非10日游12000
             		</p>
             		<p>
             			美国东西海岸全景游12800
             		</p>
             		<p>
             			澳新全景游11800
             		</p>
             		<p>
             			德法意瑞12日    11600
             		</p>
             		<p>
             			爱恋爱巴厘岛4晚6天   5080
             		</p>
             		<p>
             			长滩岛 5199起
             		</p>
             		<p>
             			沙巴  5880起
             		</p>
             		<p>
             			帕劳  7480 起
             		</p>
             		<p>
             			马尔代夫  8800起
             		</p>
             		<p>
             			关岛  6080起
             		</p>
             	</div>
             </div>
             </div>
             <p><strong><a href="tel:024-58217677" class="tel">城际旅游电话:024-58217677   58217688</a></strong></p>
         </div>   
		</div>
        </div>
        </div>
    <!--主体结束-->

</body>
</html>