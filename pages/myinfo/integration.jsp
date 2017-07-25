<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
    <title>我的积分</title>
    <link rel="stylesheet" href="${ctx }/resource/css/style.css"/>
    <link rel="stylesheet" href="${ctx }/resource/css/main.css" />
    <link rel="stylesheet" href="${ctx }/resource/jquery-mobile/css/themes/default/jquery.mobile-1.4.5.min.css" />
    <link rel="stylesheet" href="${ctx }/resource/font-awesome-4.4.0/css/font-awesome.css" />
    <script type="text/javascript" src="${ctx }/resource/js/jquery-1.10.1.min.js" ></script>
    <script type="text/javascript" src="${ctx }/resource/jquery-mobile/js/jquery.mobile-1.4.5.min.js" ></script>
    <style>
    </style>
    <script type="text/javascript">
      
    </script>
</head>
<body class="fade in" data-role="page">
<div class="box">
    <!--页头-->
<!--     <div class="topColor"> 
        <a class="topIcon" onclick="javascript:window.history.back();" data-transition="slide"><img class="img" src="${ctx }/resource/image/main/backup.png"></a> 
       <div class="topTitle">我的积分</div> 
        <a class="topIcon2" href="#userDetail"><img class="img" src="${ctx }/resource/image/main/user.png"></a> 
     </div> -->
    
    </div>
    <div class="clear"></div> 
     <div style="background:#35A8D7;height:5px;"></div>
<!--     <span class="topIcon"><i class="fa fa-user"></i></span> -->
    <!--页头结束-->
    <!--主体-->
    <div class="mainBox bottom0">
		<div class="intHeader">
			<div class="circle">
				<span>积分</span>
				<strong>${result.integral.integNum }</strong>
			</div>
			<a class="taged" href="#rule" style="background:rgba(0,0,0,0.7);">积分规则</a>
		</div>    	
		<div class="getDetail">		
			<span class="detail">积分明细</span>
			<ul>
				<c:forEach items="${result.scoreList }" var="scoreDetail">
					<li>					
					<span>${scoreDetail.typeName }</span>
					 <span><fmt:formatDate value="${scoreDetail.integralList.integTime}" type='both'/></span>
					<span>+${scoreDetail.integralList.integNum }</span>					
				</li>
				</c:forEach> 				
			</ul>
		</div>    
    </div>
    
    <div data-role="panel" id="rule" class="rule" data-display="overlay" data-position="left"   data-position-fixed="true">
    <h4>积分规则：</h4>
    <ul>
        <li>1、成功注册为会员可获得100分；</li>
        <li>2、留有真诚“建议”可获得5分/次；</li>
        <li>3、支付完成获得积分(消费1元=1积分)；</li>
        <li>4、留下评价可获得10分/次；</li>
        <li>积分兑换奖品请关注雷锋号推送信息。</li>
    </ul>
    
    </div>
    <!--主体结束-->
    <!--用户信息panel-->
	<!-- <div data-role="panel" id="userDetail" class="userDetail" data-display="overlay" data-position="right"   data-position-fixed="true">
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
    <%-- <div class="footer">
    <div class="iconBox">
        <div class="icon"><img src="${ctx }/resource/image/main/icon8.png"></div>
        <p>我的积分</p>
    </div>
    <div class="iconBox">
        <div class="icon"><img src="${ctx }/resource/image/main/icon9.png"></div>
        <p>我的预定</p>
    </div>
    <div class="iconBox">
        <div class="icon"><img src="${ctx }/resource/image/main/icon10.png"></div>
        <p>我的建议</p>
    </div>
    </div> --%>
    <!--页脚结束-->
</div>
</body>
</html>