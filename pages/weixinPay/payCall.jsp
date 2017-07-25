<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
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
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="format-detection" content="telephone=no" />
<title>微信安全支付</title>
<!-- <script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js" type="text/javascript"></script> -->

<%-- <script type="text/javascript" src="${ctx }/resource/jquery-mobile/js/jquery.mobile-1.4.5.min.js" ></script> --%>

</head>
<body>
<!-- 支付按钮 -->
<form action="" method="post" >  
   <center>
        <input type="button" value="确认支付" name="ajaxLoadId" id="pay"/>
    </center>  
  </form>  

<script type="text/javascript" src="${ctx }/resource/js/jquery-1.10.1.min.js" ></script>
<script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js" type="text/javascript"></script>
<script type="text/javascript">
//json 数据
// var x_json = ${json};
// function onBridgeReady(){
// 	   WeixinJSBridge.invoke(
// 	       'getBrandWCPayRequest',x_json,
// 	       function(res){     
// 	   		 	//window.location.href="http://wx.cheguoguo.com/wechat/order.html";
// 	   		 	  if(res.err_msg == "get_brand_wcpay_request:ok" ) {
// 	   		 		alert("支付成功！");
// 	   		 	  }else{
// 	   		 		//window.open("order.html?select_status=0","_blank");
// 	   		 		alert(res.err_msg);
// 	   		 	  }
// 	       }
// 	   ); 
// 	}
//     //if (typeof('WeixinJSBridge') == "undefined"){
// 	if (typeof WeixinJSBridge == "undefined"){
// 	   if( document.addEventListener ){
// 	       document.addEventListener('WeixinJSBridgeReady', onBridgeReady, false);
// 	   }else if (document.attachEvent){
// 	       document.attachEvent('WeixinJSBridgeReady', onBridgeReady); 
// 	       document.attachEvent('onWeixinJSBridgeReady', onBridgeReady);
// 	   }
// 	}else{
// 	   onBridgeReady();
// 	} 


     wx.config({
	    debug: true,
	    appId: 'wx9a0555a55d031409',// 必填，公众号的唯一标识
	    timestamp: '${timestamp}', // 必填，生成签名的时间戳
	    nonceStr: '${nonce}',// 必填，生成签名的随机串
	    signature: '${signature}',// 必填，签名，见附录1
	    jsApiList: ['chooseWXPay']
	});
     
     wx.ready(function () {
    	 wx.checkJsApi({
    	      jsApiList: ['chooseWXPay'],
    	      success: function (res) {
    	        //alert(JSON.stringify(res));
    	      }
    	    });
    	 
    	 $("#pay").click(function(){
    		 $.ajax({  
    	            url:"${ctx }/weChatPay/payment.do",
    	            type: "post",
    				data:{},
    				dataType: "json",
    				success: function(data){
    					alert("统一下单接口调用成功,再调微信支付接口"); 
    					wx.chooseWXPay({
    	    	        	    timestamp: data.timeStamp, // 支付签名时间戳，注意微信jssdk中的所有使用timestamp字段均为小写。但最新版的支付后台生成签名使用的timeStamp字段名需大写其中的S字符
    	    	        	    nonceStr: data.nonceStr, // 支付签名随机串，不长于 32 位
    	    	        	    package: data.package, // 统一支付接口返回的prepay_id参数值，提交格式如：prepay_id=***）
    	    	        	    signType: data.signType, // 签名方式，默认为'SHA1'，使用新版支付需传入'MD5'
    	    	        	    paySign: data.paySign, // 支付签名
    	    	        	    success: function (res) {
    	     	        	        //支付成功后的回调函数(客户端回调，不是服务器回调)
    	    	        	        alert(res);
    	    	        	    }
    	    	        	});
    				}
    	        });
    	     });
    	});
    	
    wx.error(function (res) {
		  alert(res.errMsg);
		});
    
</script>

</body>
</html>