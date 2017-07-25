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
    <script type="text/javascript">
    	function phone(){
    		alert("敬请期待！");
    	}
    </script>
</head>
<body data-role="page">
<div class="box">
    <!--页头-->
     <div style="background:#35A8D7;height:5px;"></div>
<!--     <span class="topIcon"><i class="fa fa-user"></i></span> -->
    <!--页头结束-->
    <!--主体-->
    <div class="mainBox bottom0 full">
		<div class="topBar">
			<div class="myinfo">
				<div class="left">
				<img src="${headimgurl }" style="width: 50px; height: 50px;" />
				</div>
				<div class="right">
					<strong>${name }</strong>
					<span>${country }&nbsp;${province }&nbsp;${city }&nbsp;</span>
				</div>
			</div>
			<ul class="infoList">
				<li>
					<a>
						<span>${sum }</span>
						<span>订单</span>
					</a>
				</li>
				<li>
					<a>
						<span>${nopay }</span>
						<span>待支付</span>
					</a>
				</li>
				<!-- <li>
					<a href="tel:024-52799299">
						<i class="fa fa-phone"></i>
						<span>客服</span>
					</a>
				</li> -->
			</ul>
		</div>
    	<div class="messageBar">
    		<ul>
    			<li>
    				<a href="${ctx }/ticketBook/booktopay.do">
    					<i class="fa fa-exclamation iconRed"></i>
    					<span>待支付</span>
    					<i class="fa fa-angle-right"></i>
    				</a>
    			</li>
    			 <li>
    				<a href="${ctx }/ticketBook/bookchecktosee.do">
    					<i class="fa fa-bus iconOrange"></i>
    					<span>待检票</span>
    					<i class="fa fa-angle-right"></i>
    				</a>
    			</li> 
    			<li>
    				<a href="${ctx }/ticketBook/finishinfo.do">
    					<i class="fa fa-check iconGreen"></i>
    					<span>已完成</span>
    					<i class="fa fa-angle-right"></i>
    				</a>
    			</li>
    			<li class="seperate">
    				<a href="${ctx }/ticketBook/all.do">
    					<i class="fa fa-reorder iconBlue"></i>
    					<span>所有订单</span>
    					<i class="fa fa-angle-right"></i>
    				</a>
    			
    			</li>
    			<li>
    				<a href="${ctx }/ticketBook/wastetickets.do">
    					<i class="fa fa-exclamation iconRed"></i>
    					<span>已作废</span>
    					<i class="fa fa-angle-right"></i>
    				</a>
    			</li>
    			<li>
					<a href="tel:024-52799299">
						<i class="fa fa-phone"></i>
						<span>客服:024-52799299</span>
					</a>
				</li>
    			<!-- <li>
					<a href="tel:024-52799299">
						<i class="fa fa-phone"></i>
						<span>客服:024-52799299</span>
					</a>
				</li>
    			<li>
					<a href="tel:024-52799299">
						<i class="fa fa-phone"></i>
						<span>客服:024-52799299</span>
					</a>
				</li>
    			<li>
					<a href="tel:024-52799299">
						<i class="fa fa-phone"></i>
						<span>客服:024-52799299</span>
					</a>
				</li> -->
    			<!-- 测试用方式1 -->
<!--    			<li class="seperate">
    				<a href="#" id="pay">
    					<i class="fa fa-reorder iconBlue"></i>
    					<span>微信支付（测试用方式1）</span>
    					<i class="fa fa-angle-right"></i>
    				</a>
    			</li> -->
    			
    			<!-- 测试用方式2 -->
<!--     			<li class="seperate"> -->
<%--     				<a href="${ctx }/weChatPay/wePay.do"> --%>
<!--     					<i class="fa fa-reorder iconBlue"></i> -->
<!--     					<span>微信支付（测试用方式2）</span> -->
<!--     					<i class="fa fa-angle-right"></i> -->
<!--     				</a> -->
<!--     			</li> -->
    			
<!--     			<li> -->
<!--     				<a> -->
<!--     					<i class="fa fa-check iconGreen"></i> -->
<!--     					<span>2</span> -->
<!--     					<i class="fa fa-angle-right"></i> -->
<!--     				</a> -->
<!--     			</li> -->
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
// 	$(function(){
// 		 $.ajax({  
// 	            url:"${ctx }/weixinTest/payment.do",
// 	            type: "post",
// 				data:{},
// 				dataType: "json",
// 				success: function(data){
// 					alert("统一下单接口调用成功");
// 				}
// 	        });
// 	});
// 	var x_json = '${json}';
// 	var signature = '${signature}';
// 	wx.config({
//     	debug: true,
//     	appId: 'wx9a0555a55d031409',// 必填，公众号的唯一标识
//     	timestamp: x_json.timeStamp, // 必填，生成签名的时间戳
//     	nonceStr: x_json.nonceStr,// 必填，生成签名的随机串
//     	signature: signature,// 必填，签名，见附录1
//     	jsApiList: ['chooseWXPay']
// 	});
	
//     wx.ready(function () {
// 	   	wx.checkJsApi({
// 		      jsApiList: ['chooseWXPay'],
// 		      success: function (res) {
// 		        //alert(JSON.stringify(res));
// 		      }
// 		});	
	 	$("#pay").click(function(){
	 		
	 		$.ajax({  
	            url:"${ctx }/weChatPay/payment.do",
	            type: "post",
				data:{},
				dataType: "json",
				success: function(data){
					alert("统一下单接口调用成功,再调微信支付接口");
					WeixinJSBridge.invoke(
			 			       'getBrandWCPayRequest',data,
			 			       function(res){     
			 			   		 	//window.location.href="http://wx.cheguoguo.com/wechat/order.html";
			 			   		 	  if(res.err_msg == "get_brand_wcpay_request:ok" ) {
			 			   		 		alert("微信支付接口成功");
			 			   		 	  }else{
			 			   		 		//window.open("order.html?select_status=0","_blank");
			 			   		 		alert(res.err_msg);
			 			   		 	  }
			 			       }
			 			   ); 
				}
	        });
	 		
	 	});	 		
	 		
	 		 //alert('测试');

//           	 wx.chooseWXPay({
//             	    timestamp: x_json.timeStamp, // 支付签名时间戳，注意微信jssdk中的所有使用timestamp字段均为小写。但最新版的支付后台生成签名使用的timeStamp字段名需大写其中的S字符
//             	    nonceStr: x_json.nonceStr, // 支付签名随机串，不长于 32 位
//             	    package: x_json.package, // 统一支付接口返回的prepay_id参数值，提交格式如：prepay_id=***）
//             	    signType: 'MD5', // 签名方式，默认为'SHA1'，使用新版支付需传入'MD5'
//             	    paySign: x_json.paySign, // 支付签名
//             	    success: function (res) {
//             	        // 支付成功后的回调函数
//             	        alert("成功");
//             	    	//window.location.href='${sendUrl}';
//             	    }
//             });
		        
	
// 	    wx.error(function (res) {
// 	 		  alert(res.errMsg);
// 	 	});
//    });
</script>
</body>
</html>