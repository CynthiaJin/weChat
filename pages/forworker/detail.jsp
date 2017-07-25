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
    <title>车票详情</title>
    <link rel="stylesheet" href="${ctx }/resource/css/style.css"/>
    <link rel="stylesheet" href="${ctx }/resource/css/main.css" />
    <link rel="stylesheet" href="${ctx }/resource/jquery-mobile/css/themes/default/jquery.mobile-1.4.5.min.css" />
    <link rel="stylesheet" href="${ctx }/resource/font-awesome-4.4.0/css/font-awesome.css" />
    <script type="text/javascript" src="${ctx }/resource/js/jquery-1.10.1.min.js" ></script>
    <script type="text/javascript" src="${ctx }/resource/jquery-mobile/js/jquery.mobile-1.4.5.min.js" ></script>
    <style>
   		.saoma span{
   				width:100% !important;
   				text-align:center !important;
   			}
   			.orderMessage ul li span{
   				font-size:14px !important;
   			}
   			.myOrder .mainBox .orderMessage>ul>li>span:last-child {
    			width: 60%;
    			overflow:hidden;
			}
    </style>
    <script type="text/javascript">
    	function myfunction(){
    		$("#cs2wm").hide();
    		var a=${ticketBook.mobileState };
    		if(a=="2"){
    			$("#cs2wm").show();
    		}	
    	}
    	
    	
</script>
</head>
<body class="myOrder"  data-role="page" onload="myfunction()">
<div class="box">
    <!--页头-->
   <%--  <div class="topColor">
        <a class="topIcon" ><img class="img" src="${ctx }/resource//image/main/backup.png"></a>
        <div class="topTitle">雷锋号</div>
        <a class="topIcon2" href="#userDetail"><img class="img" src="${ctx }/resource//image/main/user.png"></a>
    </div>
    <div class="clear"></div> --%>
     <div style="background:#35A8D7;height:5px;"></div>
<!--     <a class="topIcon" href="#userDetail"><i class="fa fa-user"></i></a> -->
   
    <div class="mainBox bottom0">
    	<div class="orderMessage">

	    	<ul>
	    		<li>
	    			<img class="phone" src="${ctx }/resource/image/main/6bnZ6jCy-0.png"></img>
	    			<span class="left">订单编号：</span>
	    			<span class="right">${ticketBook.bookNo}</span>
	    		</li>
	    		
	    		<li>
	    			<img class="busType" src="${ctx }/resource/image/main/cartype.png"></img>
	    			<span class="left">订单类型：</span>
	    			<c:choose>
	    			
	    			<c:when test="${ticketBook.businessType=='1' }">
    						<span class="right">城际巴士</span>
    					</c:when>
    					<c:when test="${ticketBook.businessType=='2' }">
		    						<span class="right">城际商务</span>
		    			</c:when>
    					<c:when test="${ticketBook.businessType=='3' }">
    								<span class="right">机场巴士</span>
    					</c:when>
    					<c:when test="${ticketBook.businessType=='4' }">
    						<span class="right">机场商务</span>
    					</c:when>    					
                </c:choose>           
	    		</li>
	    		
	    		<c:if test="${ticketBook.carNo != null }">
	    			<li>
		    			<img class="rbus" src="${ctx }/resource/image/main/bus.png"></img>
		    			<span class="left">车辆牌号：</span>
		    			<span class="right">${ticketBook.carNo}</span>
	    			</li>
	    		</c:if>
	    		
	    		<li>
	    			<img class="phone" src="${ctx }/resource/image/main/phone.png"></img>
	    			<span class="left">联系电话：</span>
	    			<span class="right">${ticketBook.mobile}</span>
	    		</li>
	    		<li>
	    		<img class="rnum" src="${ctx }/resource/image/main/full.png"></img>
	    			<span class="left">购买票数：</span>
	    			<span class="right">${ticketBook.bookSeat}</span>
	    		</li>	    	
	    		<li>
	    			<img class="rtime" src="${ctx }/resource/image/main/time.png"></img>
	    			<span class="left">验票时间：</span>
	    			<c:choose>
    					<c:when test="${ticketBook.businessType=='2' || ticketBook.businessType=='4' }">
		    					<span class="right">${ticketBook.finishTimeString2}</span>
		    			</c:when>
    					<c:otherwise>
    							<span class="right">${ticketBook.finishTimeString}</span>
    					</c:otherwise>    				
                </c:choose>           
	    		</li>	    
	    		
	    		<li>
	    			<img class="totalM" src="${ctx }/resource/image/main/cash.png"></img>
	    			<span class="left">金额：</span>
	    			<span class="right">￥${ticketBook.price}</span>
	    		</li>
	    		
		</ul>
	
  </div>
  </div>


</div>

</body>
</html>