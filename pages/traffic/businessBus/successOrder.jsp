<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="format-detection" content="telephone=no" />
    <title>订单详情</title>
    <link rel="stylesheet" href="${ctx }/resource/font-awesome-4.4.0/css/font-awesome.css" />
    <link rel="stylesheet" href="${ctx }/resource/css/style.css"/>
    <link rel="stylesheet" type="text/css" href="${ctx }/resource/css/main.css"/>
    <link rel="stylesheet" href="${ctx }/resource/jquery-mobile/css/themes/default/jquery.mobile-1.4.5.min.css" />
    <script src="${ctx }/resource/js/jquery-1.10.1.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="${ctx }/resource/js/main.js" ></script>
    <script type="text/javascript" src="${ctx }/resource/jquery-mobile/js/jquery.mobile-1.4.5.min.js" ></script>
    <style>
   			.saoma span{
   				width:100% !important;
   				text-align:center !important;
   			}
   			.mainBox .orderMessage>ul>li:last-child {
    			display:none !important;
			}
    </style>
</head>
<body data-role="page">
<div class="box myOrder">
    <!--页头-->
   <%--  <div class="topColor">
        <a class="topIcon" onclick="javascript:window.history.back();"><img class="img" src="${ctx }/resource/image/main/backup.png"></a>
        <div class="topTitle">商务车</div>
        <a class="topIcon2" href="#userDetail"><img class="img" src="${ctx }/resource/image/main/user.png"></a>
    </div>
    <div class="clear"></div> --%>
    <!-- <div style="background:#35A8D7;height:5px;"></div>
    <a class="topIcon" href="#userDetail"><i class="fa fa-user"></i></a> -->
    <!--页头结束-->
    <!--主体-->
    <div class="mainBox bottom0">
    	<div class="orderMessage">
    		<ul>
	    		 
	    		<li>
	    			<img class="rname" src="${ctx }/resource/image/main/6bnZ6jCy-0.png" ></img>
	    			<span>订单编号</span>
	    			<span style="font-size:12px;    white-space: nowrap;text-overflow: ellipsis; -o-text-overflow: ellipsis; overflow: hidden;">${ticketBook.bookNo }</span>
	    		</li>
	    		<li>
	    			<img class="rname" src="${ctx }/resource/image/main/co-green.png" ></img>
	    			<span>始发地</span>
	    			<span>${ticketBook.startSite }</span>
	    		</li>
	    		<li>
	    			<img class="rname" src="${ctx }/resource/image/main/co-red.png" ></img>
	    			<span>目的地</span>
	    			<span>${ticketBook.endSite }</span>
	    		</li>
	    		<li>
	    			<img class="rnum" src="${ctx }/resource/image/main/full.png"></img>
	    			<span>票数</span>
	    			<span>${ticketBook.bookSeat }张</span>
	    		</li>
	    		<li>
	    			<img class="rposition" src="${ctx }/resource/image/main/phone.png"></img>
	    			<span>手机号</span>
	    			<span>${ticketBook.mobile }</span>
	    		</li> 
	    		<li>
	    			<img class="rtime" src="${ctx }/resource/image/main/time.png"></img>
	    			<span>乘车时间</span>
	    			<span>${ticketBook.startTimeString2 }</span>
	    		</li>
	    		<li class="busType">
	    			<img class="busType" src="${ctx }/resource/image/main/cartype.png"></img>
	    			<span>车型</span>
	    			<c:if test="${ticketBook.carType=='2' }">
		    			<img class="busTypeImg" src="${ctx }/resource/image/main/hhrt.png"></img>
	    			</c:if>
	    			<c:if test="${ticketBook.carType=='3' }">
	    				<img class="busTypeImg" src="${ctx }/resource/image/main/gl8.png"></img>
	    			</c:if>
	    			
	    		</li>
	    		<li>
	    			<img class="totalM" src="${ctx }/resource/image/main/cash.png"></img>
	    			<span>票价合计</span>
	    			<span style="color: red">${ticketBook.price }元</span>
	    		</li>
	    		<!-- <li class="saoma">
	    			<span>请上车后扫描二维码支付</span>
	    		<li> -->
	    		    	
	    	</ul>
	    	<a class="btn judge" href="${ctx}/ticketBook/in/paydetail.do?ticketId=${ticketBook.ticketId }">订单支付</a>
    	</div>
    	
       <%-- <input type="hidden" id="cityCode" value="${cityCode }">
       <input type="hidden" id="uuId" value="${uuId }"> --%>
       <%-- <div class="ticktState in">
    		<a class="qrcode btn ui-btn" href="#myPopup" data-rel="popup" data-transition="pop"  data-position-to="window">出示二维码
    		<i class="fa fa-qrcode"></i>
    		</a>
    	</div>
    	<a class="btn judge">行 程 评 价</a> 
    	<div data-role="popup" id="myPopup" class="ui-content qrcodePop " style="width:90%;height:100%;" data-overlay-theme="b">
     	 <a href="#pageone" data-rel="back" class="ui-btn ui-corner-all ui-shadow ui-btn-a ui-icon-delete ui-btn-icon-notext ui-btn-right">Close</a>
      <img id="image" src="${ctx }/resource/image/main/qrcord-big.png"  />
      	<span>请将二维码对准终端扫码乘车</span>
    </div> --%>
    <!--主体结束-->
    <!--用户信息panel-->
	<div data-role="panel" id="userDetail" class="userDetail" data-display="overlay" data-position="right"  data-position-fixed="true"  >
		<ul>
			<li>
				<span class="logo"><img class="img" src="../../../resource/image/main/icon7.png" /></span>
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
  <%--   <div class="footer">
    <div class="iconBox">
        <div class="icon"><img src="${ctx }/resource/image/main/icon1.png"></div>
        <p>城际巴士</p>
    </div>
    <div class="iconBox">
        <div class="icon"><img src="${ctx }/resource/image/main/icon2.png"></div>
        <p role="mid">商务车</p>
    </div>
    <div class="iconBox">
        <div class="icon"><img src="${ctx }/resource/image/main/icon3.png"></div>
        <p>机场快线</p>
    </div>
    </div> --%>
    <!--页脚结束-->
</div>
<script type="text/javascript">
//setTimeout("goBack()",5000);
 function goBack(){
	 url="${ctx}/busniessbus/in/chooseCity.do";
	 window.location.href=url;
 }
 function toView(){
	 /*  private Double startLat;
	  private Double startLon;
	  private Double endLat;
	  private Double endLon;*/
	 var startLat='${ticketBook.startBLat}';
	 var startLon='${ticketBook.startBLon}';
	 var endLat='${ticketBook.endBLat}';
	 var endLon='${ticketBook.endBLon}';
	 var endSite='${ticketBook.endSite}';
	 url="${ctx}/busniessbus/viewSite.do?startLat="+startLat+"&startLon="+startLon+"&endLat="+endLat+"&endLon="+endLon+"&endSite="+endSite;
	 window.location.href=url;
 }
 
 function createDim(){
	/* var uuId=$("#uuId").val();
	   $.ajax(
				{url:"${ctx}/bwebCommon/createDim.do?json",
				async: false,
				data:{'param':uuId},
				type: "POST",dataType:'json',
				error:function(){},
				success:function(result){
					alert("result:"+result);
				$("#image").src=result;
				}
			});  */
 }
 
</script>
</div>
</body>
</html>