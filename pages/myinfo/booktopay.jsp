<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
    <title>订单列表-待支付</title>
    <link rel="stylesheet" href="${ctx}/resource//css/style.css"/>
    <link rel="stylesheet" href="${ctx}/resource//css/main.css" />
    <link rel="stylesheet" href="${ctx}/resource//jquery-mobile/css/themes/default/jquery.mobile-1.4.5.min.css" />
    <link rel="stylesheet" href="${ctx}/resource//font-awesome-4.4.0/css/font-awesome.css" />
    <script type="text/javascript" src="${ctx}/resource//js/jquery-1.10.1.min.js" ></script>
    <script type="text/javascript" src="${ctx}/resource//jquery-mobile/js/jquery.mobile-1.4.5.min.js" ></script>
<style>
		.mainBox .lostList{
			bottom:10px !important;
		}
		@media (max-width: 320px){
			b{
		    font-size: 13px !important;
		}
		}
		.bl{
			color:#000 !important;
		}
	</style>
</head>
<body data-role="page">

<div data-role="popup" id="seatPop" class="ui-content seatPop" data-overlay-theme="b">
     	 <div id="seatScroll">
     	 	<span> </span>
     	 	<ul>
     	 		<li> </li>
     	 		<li><a href="${ctx }/bus/loc.do">城际巴士</a></li>
     	 		<li><a href="${ctx }/busniessbus/in/chooseCity.do">商务车</a></li>
     	 		<li><a href="${ctx }/airportbus/airlist.do">机场快线</a></li>
     	 		
     	 	</ul>
     	 </div>
    </div>

<div class="box">
    <!--页头-->
    <!-- <div class="topColor">
        <a class="topIcon"><img class="img" src="${ctx}/resource//image/main/backup.png"></a>
        <div class="topTitle">失物招领</div>
        <a class="topIcon2"><img class="img" src="${ctx}/resource//image/main/user.png"></a>
    </div>
    <div class="clear"></div> -->
     <div style="background:#35A8D7;height:5px;"></div>

    <!--页头结束-->
    <!--主体-->
    <div class="mainBox bottom0">
    	<div class="number">
    		<i class="fa fa-reorder"></i>
    		<span> 订单列表 </span>
    	</div>
    	<ul class="lostList">  
    	<c:choose>
    		<c:when test="${empty list }">
    			<h2>您还没有订单！</h2>
    				<%-- <a href="${ctx }/bus/loc.do">城际巴士</a>
     	 			<a href="${ctx }/busniessbus/in/chooseCity.do">商务车</a>
     	 			<a href="${ctx }/airportbus/airlist.do">机场快线</a> --%>
    		</c:when>
    		<c:otherwise>
    			<c:forEach items="${list }" var="l">
    			<li<%--  onclick="detail('${l.TICKET_ID}')" --%>>
    			
    				<div onclick="detail('${l.TICKET_ID}')">
    					<div>类型：
		    				<b style="color:#000;font-size:16px;font-weight:normal;">${l.BUSINESS_TYPE_STRING }</b>
    				 	</div>   				 	
    					<span class="bl">路线：${l.ROU_NAME}</span>
    					<span>金额：￥${l.PRICE}</span>
    					<span class="bl">出行时间：  
    						<c:choose>
    							<c:when test="${l.BUSINESS_TYPE=='3' }">
    								<fmt:formatDate value="${l.START_TIME}" pattern="yyyy-MM-dd HH:mm"/>
    							</c:when>
    							<c:otherwise>
    								<fmt:formatDate value="${l.START_TIME}" pattern="yyyy-MM-dd"/>
    							</c:otherwise>
    						</c:choose>
    					
    					</span>
<!--     					<i class="fa fa-angle-double-right"></i>
 -->    				</div>
    				<a onclick="payDetail('${l.TICKET_ID}')" style="width:50px;display:block;text-align:justify;text-align-last: justify;background:#329AFD;border-radius:5px;padding:5px;color:#fff;position:absolute;bottom:12px;right:15px;z-index:100;">
    					<span style="width:100%;display:inline-block;-moz-text-align-last: justify;">付款</span>
    				</a>
    			</li>
    		</c:forEach>	
    		</c:otherwise>
    	</c:choose>
 		
 		
    	</ul>
    </div>
    <!--主体结束-->
    <!--用户信息panel-->
	<!-- <div data-role="panel" id="userDetail" class="userDetail" data-display="overlay" data-position="right"  data-position-fixed="true"  >
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
    <div class="iconBox1">
        <div class="icon"><img src="${ctx}/resource//image/main/icon4.png"></div>
        <p role="mid">雷锋号</p>
    </div>
    <div class="iconBox1">
        <div class="icon"><img src="${ctx}/resource//image/main/icon5.png"></div>
        <p>城际旅游</p>
    </div>
    <div class="iconBox1">
        <div class="icon"><img src="${ctx}/resource//image/main/icon6.png"></div>
        <p>周边服务</p>
    </div>
    <div class="iconBox1">
        <div class="icon"><img src="${ctx}/resource//image/main/icon7.png"></div>
        <p>失物招领</p>
    </div>
    </div> --%>
    <!--页脚结束-->
</div>

<script type="text/javascript">

		function detail(id){
			window.location.href="${ctx}/ticketBook/detail.do?ticketId="+id;
		}
    	function payDetail(id){
    		//var carNo=$("#carNo").val();
    		//alert(carNo);
    		window.location.href="${ctx}/ticketBook/in/paydetail.do?ticketId="+id;
    	}
	
</script>
</body>
</html>