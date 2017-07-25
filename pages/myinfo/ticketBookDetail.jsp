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
    <title>订单详情</title>
    <link rel="stylesheet" href="${ctx }/resource/css/style.css"/>
    <link rel="stylesheet" href="${ctx }/resource/css/main.css" />
    <link rel="stylesheet" href="${ctx }/resource/jquery-mobile/css/themes/default/jquery.mobile-1.4.5.min.css" />
    <link rel="stylesheet" href="${ctx }/resource/font-awesome-4.4.0/css/font-awesome.css" />
    <script type="text/javascript" src="${ctx }/resource/js/jquery-1.10.1.min.js" ></script>
    <script type="text/javascript" src="${ctx }/resource/jquery-mobile/js/jquery.mobile-1.4.5.min.js" ></script>
    <style>
    	.myOrder .mainBox .orderMessage>ul>li>span:last-child{
   			width:60.5% !important;
   		}
   		.saoma{
   			text-align:center !important;
   			clear:both;
   		}
   			
    </style>
    <script type="text/javascript">
    	function myfunction(){
    		$("#cs2wm").hide();
    		var a=${tk.mobileState };
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
<!--     		<div class="titleBox"> -->
<%-- 	    		<h2>${loseThings.loseName }</h2> --%>
<!-- 	    		<span> -->
<%-- 	    			<small><fmt:formatDate value="${loseThings.thing.issTime}" type="date"/></small> --%>
<%-- 	    			<small>${loseThings.thing.loseName}</small> --%>
<!-- 	    			<small>浏览1600次</small> -->
<!-- 	    		</span> -->
<!-- 	    	</div> -->
	    	<ul>
	    		<li>
	    			<img class="phone" src="${ctx }/resource/image/main/6bnZ6jCy-0.png"></img>
	    			<span class="left">订单编号：</span>
	    			<span class="right" style="overflow-x:scroll;">${tk.bookNo}</span>
	    		</li>
	    		<li>
	    			<img class="phone" src="${ctx }/resource/image/main/phone.png"></img>
	    			<span class="left">联系电话：</span>
	    			<span class="right">${tk.mobile}</span>
	    		</li>
	    		<li>
	    		<img class="rnum" src="${ctx }/resource/image/main/full.png"></img>
	    			<span class="left">预定票数：</span>
	    			<span class="right">${tk.bookSeat}</span>
	    		</li>
	    		<li>
	    			<img class="rtime" src="${ctx }/resource/image/main/time.png"></img>
	    			<span class="left">订单时间：</span>
	    			<span class="right">${tk.bookTimeString}</span>
	    		</li>
	    		<li>
	    			<img class="rtime" src="${ctx }/resource/image/main/time.png"></img>
	    			<span class="left">出行时间：</span>
	    			<c:choose>
    					<c:when test="${tk.businessType=='2' || tk.businessType=='4' }">
		    					<span class="right">${tk.startTimeString2}</span>
		    			</c:when>
    					<c:otherwise>
    							<span class="right">${tk.startTimeString}</span>
    					</c:otherwise>
    				
                </c:choose>           
	    		</li>
	    		<li>
	    			<img class="rname" src="${ctx }/resource/image/main/line.png" ></img>
	    			<span class="left">路线名称：</span>
	    			<span class="right"  style="overflow-x:scroll;height:50px !important;white-space:nowrap;">${tk.rouName}</span>
	    		</li>
	    		<li>
	    			<img class="rname" src="${ctx }/resource/image/main/co-green.png" ></img>
	    			<span class="left">发车地点：</span>
	    			<span class="right"  style="overflow-x:scroll;height:50px !important;white-space:nowrap;">${tk.startSite}</span>
	    		</li>
	    		<li>
	    			<img class="rname" src="${ctx }/resource/image/main/co-red.png" ></img>
	    			<span class="left">到达地点：</span>
	    			<span class="right"  style="overflow-x:scroll;height:50px !important;white-space:nowrap;">${tk.endSite}</span>
	    		</li>
	    		<li>
	    			<img class="busType" src="${ctx }/resource/image/main/cartype.png"></img>
	    			<span class="left">订单类型：</span>
	    			<span class="right">${tk.businessTypeString}</span>
	    	          
	    		</li>
	    		<li>
	    			<img class="totalM" src="${ctx }/resource/image/main/cash.png"></img>
	    			<span class="left">金额：</span>
	    			<span class="right">￥${tk.price}</span>
	    		</li>
	    		<c:if test="${tk.carNo != null }">
	    			<li>
		    			<img class="rbus" src="${ctx }/resource/image/main/bus.png"></img>
		    			<span class="left">车辆牌号：</span>
		    			<span class="right">${tk.carNo}</span>
	    			</li>
	    		</c:if>
	    		<c:if test="${tk.finishTime != null }">
	    			<li>
		    			<img class="rbus" src="${ctx }/resource/image/main/time-green2.png"></img>
		    			<span class="left">上车时间：</span>
		    			<span class="right">${tk.finishTimeString}</span>
	    			</li>
	    		</c:if>
	    		
	    		<li>
	    			<img class="status" src="${ctx }/resource/image/main/more.png"></img>
	    			<span class="left">订单状态：</span>
	    			 <c:choose>
    					<c:when test="${tk.mobileState=='1' }">
    						<span class="right">已预订</span>
    					</c:when>
    					<c:when test="${tk.mobileState=='2' }">
    						<span class="right">已支付</span>
    					</c:when>    					
    					<c:when test="${tk.mobileState=='3' }">
    						<span class="right">已完成</span>
    					</c:when>
    					<c:when test="${tk.mobileState=='4' }">
    						<span class="right">已过期</span>
    					</c:when>    				
    				</c:choose> 
	    		</li>	
	    		
	    		<c:if test="${! empty tk.ifComment && (tk.mobileState == '3')}">
	    			<li>
	    			<img class="status" src="${ctx }/resource/image/main/more.png"></img>
	    			<span class="left">评价状态：</span>
	    			 <c:choose>    					
    					<c:when test="${tk.ifComment=='1' }">
    						<span class="right">未评价</span>
    					</c:when>
    					<c:when test="${tk.ifComment=='2' }">
    						<span class="right">已评价</span>
    					</c:when>
    				</c:choose> 
	    		</li>	
	    	</c:if>
	    		
	    		
	    		<c:if test="${tk.payTime == null }">
	    			<li class="saoma">
	    			 <span style="width:100% !important;text-align:center !important;">请上车后扫描二维码验票</span>
	    			 </li>	
	    		</c:if>
	    		
	    		</ul>
	    		
	    		<%-- <span class="left" >*付款后会生成电子票</span>
	    		<input type="button" onclick="weChatPay('${tk.bookNo}')" value="微信支付(测试)"/>
                <input type="button" id = "pay" onclick="weChatPaySbm()" value="微信支付"/>
	    		<input type="button" onclick="del(${tk.ticketId})" value="取消订单"/>
	    		<div class="ticktState in" id="cs2wm">
	    			<a class="qrcode btn ui-btn" href="#myPopup" data-rel="popup" data-transition="pop"  data-position-to="window">我的电子票
	    			<i class="fa fa-qrcode"></i>
	    			</a>
    			</div>
    			<div data-role="popup" id="myPopup" class="ui-content qrcodePop " data-overlay-theme="b">
     				<a href="#pageone" data-rel="back" class="ui-btn ui-corner-all ui-shadow ui-btn-a ui-icon-delete ui-btn-icon-notext ui-btn-right">Close</a>
      				<img src="${ctx }/resource/image/main/qrcord-big.png" />
    			</div> --%>
	    	
	    	
	    	
<!-- 	    	<div class="discussBox" id="discussBox"> -->
<%-- 	    		<c:forEach items="${loseThings.replys }" var="reply"> --%>
<!-- 	    			<div class="dPiece"> -->
<!-- 		    		<h5> -->
<%-- 		    			<span>${reply.mobile }</span> --%>
<%-- 		    			<span class="praise"><i class="fa fa-heart gray" >${reply.praise }</i><input type="hidden" value="${reply.replyId }"/> </span> --%>
<!-- 		    		</h5> -->
<%-- 		    		<p>${reply.content }</p> --%>
<%-- 		    		<span>发表时间：<fmt:formatDate value="${reply.addTime}" type="both"/></span> --%>
<!-- 	    		</div> -->
<%-- 	    		</c:forEach>   	    	 --%>
<!--     	<div class="inputAbtn"> -->
<!--     		<input type="text" id="talk" placeholder="我想说" /> -->
<%--     		<input type="hidden" id="upNo" name="upNo" value="${loseThings.thing.serialNo }" /> --%>
<!--     		<span class="orange" id="comment">评论</span> -->
<!--     	</div>    	 -->
<!--     </div> -->
  </div>
  </div>


</div>

</body>
</html>