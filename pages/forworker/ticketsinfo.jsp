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
    <title>我的信息</title>
    <link rel="stylesheet" href="${ctx }/resource/css/style.css"/>
    <link rel="stylesheet" href="${ctx }/resource/css/main.css" />
    <link rel="stylesheet" href="${ctx }/resource/jquery-mobile/css/themes/default/jquery.mobile-1.4.5.min.css" />
    <link rel="stylesheet" href="${ctx }/resource/font-awesome-4.4.0/css/font-awesome.css" />
    <script type="text/javascript" src="${ctx }/resource/js/jquery-1.10.1.min.js" ></script>
    <script type="text/javascript" src="${ctx }/resource/jquery-mobile/js/jquery.mobile-1.4.5.min.js" ></script>
 <style>
 	.infoList>li{
 		    width: 25% !important;
 	}
 </style>
</head>
<body data-role="page">
<div class="box">
    <!--页头-->
     <div style="background:#35A8D7;height:5px;"></div>
<!--     <span class="topIcon"><i class="fa fa-user"></i></span> -->
    <!--页头结束-->
    <!--主体-->
    <div class="mainBox bottom0 full">
    	<div style="background:#35A8D7;height:5px;"></div>
		<div class="topBar">
			<%-- <div class="myinfo">
				<div class="left">
				<img src="${headimgurl }" style="width: 50px; height: 50px;" />
				</div>
				<div class="right">
					<strong>${name }</strong>
					<span>${country }&nbsp;${province }&nbsp;${city }&nbsp;</span>
				</div>
			</div> --%>
			<ul class="infoList">
				<li>
					<a>
						<span>已验票总数</span>
						<span>${result.one.total }张</span>						
					</a>
				</li>
				<li>
					<a>
						<span>车票总数</span>
						<span>
						<c:choose>
							<c:when test="${empty result.one.seats }">
							0
							</c:when>
							<c:otherwise>
							${result.one.seats }张
							</c:otherwise>
						</c:choose>
						</span>
						
					</a>
				</li>
				<li>
					<a>
						<span>金额总数</span>
						<span>
							<c:choose>
							<c:when test="${empty result.one.money }">
							0
							</c:when>
							<c:otherwise>
							${result.one.money }元
							</c:otherwise>
						</c:choose>
						</span>
										
					</a>
				</li>
				<li style="line-height:50px;">
					<a href="javascript:refresh()" style="padding:5px;background:#35A8D7;;color:#fff;border-radius:5px;">
						刷新			
					</a>
				</li>
				
			</ul>
		</div>
    	<div class="messageBar">
    		<ul>
    			<c:forEach items="${result.many }" var="ticketBook">
    				<li>
	    				<a href=" ${ctx }/forworker/detail.do?ticketId=${ticketBook.ticketId }">
	    					<span>联系方式:${ticketBook.mobile }</span></br>
	    					<span>票价:${ticketBook.price }</span>
	    					<span style="float:right;margin-right:50px;">票数:${ticketBook.bookSeat }</span>
	    				</a>
	    			</li>
    			</c:forEach>
    		
    			
    			 
    			
    		</ul>
    	</div>
    </div>
    <!--主体结束-->
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
<!-- <script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js" type="text/javascript"></script> -->
<script type="text/javascript">
	function refresh(){
		window.location.reload();
	}
</script>
</body>
</html>