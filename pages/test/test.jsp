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
<!DOCTYPE >
<html>
	<head>
		<%@ include file="../../common/common.jsp" %>
		<script type="text/javascript" src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
		<script type="text/javascript">
			var url = location.href.split('#')[0];
			$.ajax({
				url:"${ctx}/bwebCommon/getSign.do?json",
				dataType :"json",
				data:{url:url},
				success:function(data){
					wx.config({
					    debug: true, // 开启调试模式,调用的所有api的返回值会在客户端alert出来，若要查看传入的参数，可以在pc端打开，参数信息会通过log打出，仅在pc端时才会打印。
					    appId: data.appId, // 必填，公众号的唯一标识
					    timestamp: data.timestamp, // 必填，生成签名的时间戳
					    nonceStr: data.nonceStr, // 必填，生成签名的随机串
					    signature: data.signature,// 必填，签名，见附录1
					    jsApiList: ["getLocation","openLocation"] // 必填，需要使用的JS接口列表，所有JS接口列表见附录2
					});
					
					wx.ready(function(data2){
					    // config信息验证后会执行ready方法，所有接口调用都必须在config接口获得结果之后，config是一个客户端的异步操作，所以如果需要在页面加载时就调用相关接口，则须把相关接口放在ready函数中调用来确保正确执行。对于用户触发时才调用的接口，则可以直接调用，不需要放在ready函数中。
					    wx.getLocation({
						    type: 'wgs84', // 默认为wgs84的gps坐标，如果要返回直接给openLocation用的火星坐标，可传入'gcj02'
						    success: function (res) {
						        var latitude = res.latitude; // 纬度，浮点数，范围为90 ~ -90
						        var longitude = res.longitude; // 经度，浮点数，范围为180 ~ -180。
						        var speed = res.speed; // 速度，以米/每秒计
						        var accuracy = res.accuracy; // 位置精度
						        
						        alert(latitude);
						        alert(longitude);
						        alert(speed);
						        alert(accuracy);
						    }
						});
					});
					
					wx.error(function(res){
						alert("验证错误");
					});
					
				},error:function(e){
					alert(e);
				}
			});
		</script>
	</head>
	<body>
	<div style="text-align: center;">
		微信测试页面
	</div>
	</body>
</html>
