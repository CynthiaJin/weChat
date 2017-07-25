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
   		.saoma span{
   				width:100% !important;
   				text-align:center !important;
   			}
   			.mainBox .orderMessage>ul>li:last-child {
    			display:none !important;
			}
		.myOrder .mainBox .orderMessage>ul>li>span:last-child{
   			width:61% !important;
   		}
			
    </style>
  
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
	    			<span class="right" style="overflow-x:scroll;white-space:nowrap;height:50px !important;">${tk.rouName}</span>
	    		</li>
	    		<li>
	    			<img class="rname" src="${ctx }/resource/image/main/co-green.png" ></img>
	    			<span class="left">发车地点：</span>
	    			<span class="right" style="overflow-x:scroll;white-space:nowrap;height:50px !important;">${tk.startSite}</span>
	    		</li>
	    		<li>
	    			<img class="rname" src="${ctx }/resource/image/main/co-red.png" ></img>
	    			<span class="left">到达地点：</span>
	    			<span class="right" style="overflow-x:scroll;white-space:nowrap;height:50px !important;">${tk.endSite}</span>
	    		</li>
	    		<li>
	    			<img class="busType" src="${ctx }/resource/image/main/cartype.png"></img>
	    			<span class="left">订单类型：</span>
	    			<span class="right">${tk.businessTypeString}</span>
	    		</li>
	    		<li>
	    			<img class="totalM" src="${ctx }/resource/image/main/cash.png"></img>
	    			<span class="left">金额：</span>
	    			<span class="right">￥${tk.priceString}</span>
	    		</li>
	    		<c:if test="${tk.carNo  }">
	    			<li>
		    			<img class="rbus" src="${ctx }/resource/image/main/bus.png"></img>
		    			<span class="left">车辆牌号：</span>
		    			<span class="right">${tk.carNo}</span>
	    			</li>
	    		</c:if>
	    		
	    		<li>
	    			<img class="status" src="${ctx }/resource/image/main/more.png"></img>
	    			<span class="left">订单状态：</span>
	    			 <c:choose>
    					<c:when test="${tk.mobileState=='1' }">
    						<span class="right">已预订</span>
    					</c:when>
    					
    					<c:when test="${tk.mobileState=='3' }">
    						<span class="right">已完成</span>
    					</c:when>
    					<c:when test="${tk.mobileState=='4' }">
    						<span class="right">已过期</span>
    					</c:when>
    				</c:choose> 
	    		</li>		
	    		</ul>
	    		<%-- <input type="hidden" id="ticketId" name="ticketId" value="${tk.ticketId }"/> --%>
	    		<!-- <span class="left" >*付款后会生成电子票</span> -->
<%-- 	    		<input type="button" onclick="weChatPay('${tk.bookNo}')" value="微信支付(测试)"/> --%>
                <input type="button" id = "pay" onclick="weChatPaySbm()" value="微信支付"/>
	    	<%-- 	<input type="button" onclick="del(${tk.ticketId})" value="取消订单"/>
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
  <script type="text/javascript">
    	function myfunction(){
    		$("#cs2wm").hide();
    		var a=${tk.mobileState };
    		if(a=="2"){
    			$("#cs2wm").show();
    		}	
    	}
    	
    	function del(id){
        	var a=confirm("确认取消订单?");
    			if(a){
    				$.ajax({		
    					url:"${ctx }/ticketBook/del.do",
    					data:"id="+id,
    			   		success:function(data){
    			   			alert("操作成功！");		   		
    			   			window.location.href="${ctx}/ticketBook/in/list.do";
    			    	}   			    	
    			    }); 			
    			}
        	
        }
    	
    	//微信支付
    	var weChatPayClicked = false;//防止重复点击flag
    	function weChatPaySbm(){
    		var   str    =   window.prompt("请输入测试密码","");
    		if(str != "2016"){
    			return "";
    		}
    		if(weChatPayClicked){
    			
    			//alert("不要重复点击微信支付按钮");
    			return;
    		}
    		weChatPayClicked = true;
    		setTimeout(function (){weChatPay();}, 200);
    	}
    	
	 	function weChatPay(){
	 		weChatPayClicked = false;
	 		var bookNo = '${tk.bookNo }';
	 		//var price = '${tk.price }';
	 		var price = "1";
	 		
	 		var ticketId='${tk.ticketId}';
	 		//alert(ticketId);
	 		//var price = "1";
    		alert("您好,微信支付功能还未正式开放,仅为测试用,点击支付会收取相应费用");
	 		//alert("订单号"+bookNo);
	 		$.ajax({  
	            url:"${ctx }/weChatPay/payment.do",
	            type: "post",
				data:{"bookNo":bookNo,
					  "price":price},
				dataType: "json",
				success: function(data){
					alert("统一下单接口调用成功,再调微信支付接口");
					WeixinJSBridge.invoke(
			 			       'getBrandWCPayRequest',data,
			 			       function(res){     
			 			   		 	  if(res.err_msg == "get_brand_wcpay_request:ok" ) {
// 			 			   		 		setTimeout("successCall()",3000); 
			 			   		 		window.location.href="${ctx}/ticketBook/detail.do?ticketId="+ticketId;
			 			   		 	  }else{
			 			   		 		alert(res.err_msg);
			 			   		 	  }
			 			       }
			 			   ); 
				}
	        });
	 		
	 	}
	 	
// 	 	function successCall(){
// 	 		
// 	 	}
    	
</script>
</body>
</html>