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
    <title>我的订单列表</title>
    <link rel="stylesheet" href="${ctx }/resource/css/style.css"/>
    <link rel="stylesheet" href="${ctx }/resource/css/main.css" />
    <link rel="stylesheet" href="${ctx }/resource/jquery-mobile/css/themes/default/jquery.mobile-1.4.5.min.css" />
    <link rel="stylesheet" href="${ctx }/resource/font-awesome-4.4.0/css/font-awesome.css" />
    <script type="text/javascript" src="${ctx }/resource/js/jquery-1.10.1.min.js" ></script>
    <script type="text/javascript" src="${ctx }/resource/jquery-mobile/js/jquery.mobile-1.4.5.min.js" ></script>
    <style>
    
    </style>
</head>
<body class="fade in myOrder" data-role="page">
<div class="box">
    <!--页头-->
   <%--  <div class="topColor">
        <a class="topIcon" onclick="javascript:window.history.back();" data-transition="slide" data-direction="reverse"><img class="img" src="${ctx }/resource/image/main/backup.png"></a>
        <div class="topTitle">我的预约</div>
        <a class="topIcon2" href="#userDetail"><img class="img" src="${ctx }/resource/image/main/user.png"></a>
    </div>
    <div class="clear"></div> --%>
     <div style="background:#35A8D7;height:5px;"></div>
    <span class="topIcon"><i class="fa fa-user"></i></span>
    <!--页头结束-->
    <!--主体-->
    <div class="mainBox bottom0">
		<div class="orderList">
			<div class="pieceBox">
				<a class="" data-transition="swipe" href="${ctx }/myinfo/myOrder.do">
					<ul>
						<li>
							<span class="payState noPay taged">未支付</span>
							<span class="colored">3号线（李石）</span>
						</li>
						<li>
							<span>票数：1张</span>
							<span>票价：25元</span>
						</li>
						<li>
							<small>2016-2-22 14:22:25</small>
							<span class="taged">商务车</span>
						</li>
					</ul>
					<span class="fa fa-angle-right"></span>
				</a>
			</div>
			<div class="pieceBox">
				<a class="" data-transition="swipe" href="${ctx }/myinfo/myOrder.do">
					<ul>
						<li>
							<span class="payState noPay taged">未支付</span>
							<span class="colored">3号线（李石）</span>
						</li>
						<li>
							<span>票数：1张</span>
							<span>票价：25元</span>
						</li>
						<li>
							<small>2016-2-22 14:22:25</small>
							<span class="taged">商务车</span>
						</li>
					</ul>
					<span class="fa fa-angle-right"></span>
				</a>
			</div>
			<div class="pieceBox">
				<a class="" data-transition="swipe" href="${ctx }/myinfo/myOrder.do">
					<ul>
						<li>
							<span class="payState noPay taged">未支付</span>
							<span class="colored">3号线（李石）</span>
						</li>
						<li>
							<span>票数：1张</span>
							<span>票价：25元</span>
						</li>
						<li>
							<small>2016-2-22 14:22:25</small>
							<span class="taged">商务车</span>
						</li>
					</ul>
					<span class="fa fa-angle-right"></span>
				</a>
			</div>
			<div class="pieceBox">
				<a class="" data-transition="swipe" href="${ctx }/myinfo/myOrder.do">
					<ul>
						<li>
							<span class="payState noPay taged">未支付</span>
							<span class="colored">3号线（李石）</span>
						</li>
						<li>
							<span>票数：1张</span>
							<span>票价：25元</span>
						</li>
						<li>
							<small>2016-2-22 14:22:25</small>
							<span class="taged">商务车</span>
						</li>
					</ul>
					<span class="fa fa-angle-right"></span>
				</a>
			</div>
			<div class="pieceBox">
				<a class="" data-transition="swipe" href="${ctx }/myinfo/myOrder.do">
					<ul>
						<li>
							<span class="payState noPay taged">未支付</span>
							<span class="colored">3号线（李石）</span>
						</li>
						<li>
							<span>票数：1张</span>
							<span>票价：25元</span>
						</li>
						<li>
							<small>2016-2-22 14:22:25</small>
							<span class="taged">商务车</span>
						</li>
					</ul>
					<span class="fa fa-angle-right"></span>
				</a>
			</div>
			<div class="pieceBox">
				<a class="" data-transition="swipe" href="${ctx }/myinfo/myOrder.do">
					<ul>
						<li>
							<span class="payState noPay taged">未支付</span>
							<span class="colored">3号线（李石）</span>
						</li>
						<li>
							<span>票数：1张</span>
							<span>票价：25元</span>
						</li>
						<li>
							<small>2016-2-22 14:22:25</small>
							<span class="taged">商务车</span>
						</li>
					</ul>
					<span class="fa fa-angle-right"></span>
				</a>
			</div>
		</div>    
    </div>
    <!--主体结束-->
     <!--用户信息panel-->
	<div data-role="panel" id="userDetail" class="userDetail" data-display="overlay" data-position="right"  data-position-fixed="true" >
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
	</div>
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
    <script type="text/javascript">
    	
    	
    </script>
</div>
</body>
</html>