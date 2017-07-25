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
    <title>方特开园倒计时</title>
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
            <h3 style="text-align: center; line-height:50px; color: white; " >方特开园倒计时</h3>
             </div>
             
             <div>
             <img class="img1 img" src="${ctx }/resource/image/citytour/ct01.jpg" style="height: 200px;">
             <img class="img" src="${ctx }/resource/image/citytour/02.jpg" style="height: 200px;">
             
             </div>
             
             <div>
             <img class="img" src="${ctx }/resource/image/citytour/ct02.jpg" style="height: 200px;">
             <img class="img" src="${ctx }/resource/image/citytour/ct04.jpg" style="height: 200px;">
             </div>
              <p>沈阳方特欢乐世界位于沈阳市沈北新区盛京大街，
              由深圳华强集团精心打造，是东北地区规模最大的第四代主题公园之一。
              方特欢乐世界以科幻和互动体验为最大特色，采用国际一流的理念和技术精心打造，
              可与西方最先进的主题公园相媲美，被誉为“东方梦幻乐园”、“亚洲科幻神奇”。</p>  
             </div>
         </div>   
		</div>
        </div>
        </div>
    <!--主体结束-->

</body>
</html>