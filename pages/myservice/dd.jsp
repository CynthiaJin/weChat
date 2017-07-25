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
    <title>国内旅游</title>
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
            <h3 style="text-align: center; line-height:50px; color: white; " >国内旅游</h3>
             </div>
              <div class="banner">
             	<img src="${ctx }/resource/image/citytour/travel_hainan.jpg">
             </div>
             <div class="tab-details">
             	<h2 class="tab-title">国内旅游及报价</h2>
             	<div class="one-day">
             		<p>
             			<span>湖南:</span>
             			长沙、韶山、张家界、凤凰双飞6日游2150元起
      					 超便宜张家界桂林连线长沙进出双飞8日游2780元起
             		</p>
             		<p>
             			北京畅游之旅 双卧6日游   980 起 
             		</p>
             		<p>
             			厦门+鼓浪屿+集美+曾厝垵双飞4+2日游2400元起 
             		</p>
             		<p>
             			西安：兵马俑、华清池、大明宫双卧5日游1950起
             		</p>
             		<p>
             			华东：华东五市+三水乡+双园林双飞6日游899起
             		</p>
             		<p>
             			河南：少林、云台山、开封双卧6日游1950元起 ；
             		</p>
             		<p>
             			海南：南湾猴岛、西岛、日月湾、三亚、亚龙湾双飞6日游2400起
             		</p>
             		<p>
             			桂林：漓江、阳朔西街、山水间、靖江王府双飞5日游2700起
             		</p>
             		<p>
             			成都：九寨沟、黄龙、峨眉山、乐山双飞8日游2600起
             		</p>
             		<p>
             			昆明：昆明、大理蝴蝶泉、丽江玉龙雪山、九乡、石林双飞7日游1980起
     					 昆明、大理蝴蝶泉、丽江玉龙雪山、九乡、石林、西双版纳四飞9日游3380起

             		</p>
             		<p>
             			西藏：拉萨、布达拉宫、大昭寺、灵芝、羊湖、日喀则、纳木错双卧双座13日2580元起
             		</p>
             		<p>
             			新疆：丝绸之路、乌鲁木齐、吐鲁番、火焰山4飞6日3680元
             		</p>
             		<p>
             			西北：梦系大西北醉美双卧7日游1780元起
             		</p>
             		<p>
             			山东：青岛、烟台、蓬莱、威海海陆空5日游980元起
             		</p>
             		<p>
             			贵阳：黄果树青岩古镇6日游5180元
             		</p>
             		<p>
             			江西：婺源双飞6日游2780元起
             		</p>
             		<p>
             			河南：少林寺双卧7日游2250元起
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