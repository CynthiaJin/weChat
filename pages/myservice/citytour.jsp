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
    <title>城际旅游</title>
    <link rel="stylesheet" href="${ctx }/resource/css/style.css"/>
    <link rel="stylesheet" href="${ctx }/resource/css/main.css" />
    <link rel="stylesheet" href="${ctx }/resource/jquery-mobile/css/themes/default/jquery.mobile-1.4.5.min.css" />
    <link rel="stylesheet" href="${ctx }/resource/font-awesome-4.4.0/css/font-awesome.css" />
    <script type="text/javascript" src="${ctx }/resource/js/jquery-1.10.1.min.js" ></script>
    <script type="text/javascript" src="${ctx }/resource/js/flow.js"></script>
    <script type="text/javascript" src="${ctx }/resource/jquery-mobile/js/jquery.mobile-1.4.5.min.js" ></script>
    <style type="text/css">
    	/* .brandBox{
    		width:100% !important;
    	}
    	.scrollImg{
    		width:100% !important;
    	}
    	.scrollImg ul{
    		width:100% !important;
    	}
   		
   		.scrollImg ul li img{
   			width:100% !important;
   		} */
   		.mainBox{
   			padding:5px;
   		}
   		.bottomBar{
   			width:100% !important;
   			margin:-15px 0 0 0 !important;
   		}
   		.bottomBar a{
   			width:25% !important;
   			height:100px;
   			border-radius:0 !important;
   			float:left;
   			color:#fff !important;
   			background:#fbc404;
   			vertical-align:middle;
   			margin-right:0 !important;
   			margin-left:0 !important;
   		}
   		.bottomBar a img{
   			width:50px;
   			height:50px;
   			margin:15px 18px !important;
   			color:#fff !important;
   			display:block;
   			margin:0 auto;
   		}
   		a.tel{
   			/* background:#fff !important; 
   			color:#000 !important;*/
   			background:#fff !important; 
   			color:blue !important;
   			width:100% !important;
   			margin-top:50px !important;
   			text-align: center !important;
   		}
   		.gold-tj{
   			margin-top:70px !important;
   			height:150px !important;
   		}
   		.gold-tj .h2{
   			display:inline-block;
   			width:100%;
   			background:#0099FF !important;
   			color:#fff !important;
   			font-size:1.4em;
   			font-weight:900;
   			padding:5px;
   		}
   		.gold-tj img{
   			margin-top:-50px;
   		}
    </style>
</head>
<body data-role="page">
<div class="box citytour">
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
    <div class="mainBox bottom0 full">
          <div class="topBar" >
           	<!--  <div style="background: #0099FF; height: 50px;" >
            	<h3 style="text-align: center; line-height:50px; color: white; " ></h3>
             </div> -->
             <div class="brandBox" style="height:200px !important;">
	       		<div class="scrollImg">
					<ul id="imgContainer">
						
						<li><img class="img" src="${ctx }/resource/image/citytour/travel_province.jpg" alt=""/></li>
						<li><img class="img" src="${ctx }/resource/image/citytour/travel_hainan.jpg" alt=""/></li>
						<li><img class="img" src="${ctx }/resource/image/citytour/travel_world.jpg" alt=""/></li>
						<li><img class="img" src="${ctx }/resource/image/citytour/travel_fangte.jpg" alt=""/></li>
						<li><img class="img" src="${ctx }/resource/image/citytour/travel_american.jpg" alt=""/></li>
					</ul>
				</div>
       		</div>
         </div>  
          <div class="bottomBar">
          		 <a id="pic1" class="picPiece" onclick="enter1();" >
          		 <img class="img" src="${ctx }/resource/image/citytour/zijia.svg"/>
	             <p id="title">自由行</p>
	             </a>
	             <a id="pic2" class="picPiece" onclick="enter2();">
	             <img class="img" src="${ctx }/resource/image/citytour/shengnei.svg" />
	             <p>短途游</p>
	             </a>
	             
	             <a id="pic3" class="picPiece" onclick="enter3();">
	             <img class="img" src="${ctx }/resource/image/citytour/guonei.svg" />
	             <p>国内游</p>
	             </a>
	             
	             <a id="pic4" class="picPiece" onclick="enter4();">
	             <img class="img" src="${ctx }/resource/image/citytour/guoji.svg" />
	             <p>国际游</p>
	             </a>
	             <p></p> 
	             <br />
	             
	           <strong>
	             	<a href="tel:024-58217677" class="tel">
	             		  <i class="fa fa-phone"></i>点击拨打
	             		   <br/>
	             		   城际旅游电话:024-58217677/58217688
             		</a>
             	</strong>
             	
	             <br /><br />
	             
          </div>
          		<div class="gold-tj">
	             	<!-- <p><span  class="h2">城际推荐</span></p> -->
	             	<img class="img" src="${ctx }/resource/image/citytour/go_travel.jpg">
	             </div>		 
        </div>
        </div>
    <!--主体结束-->
    <script type="text/javascript">
    $(function(){
    	$("#imgContainer").scrollImage();
    })
    //指向方特
    function enter1(){
    	window.location.href="${ctx}/pages/myservice/ft.jsp";
    } 
  //指向自由行
    function enter1(){
    	window.location.href="${ctx}/pages/myservice/freetravel.jsp";
    }
    //指向省内
    function enter2(){
    	window.location.href="${ctx}/pages/myservice/dl.jsp";
    }
    //指向国内
    function enter3(){
    	window.location.href="${ctx}/pages/myservice/dd.jsp";
    }
    //指向国际
    function enter4(){
    	window.location.href="${ctx}/pages/myservice/bx.jsp";
    }
   
    
    </script>

</body>
</html>