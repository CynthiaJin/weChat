<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>  
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
    <title>订单列表</title>
    <link rel="stylesheet" href="${ctx}/resource//css/style.css"/>
    <link rel="stylesheet" href="${ctx}/resource//css/main.css" />
    <link rel="stylesheet" href="${ctx}/resource//jquery-mobile/css/themes/default/jquery.mobile-1.4.5.min.css" />
    <link rel="stylesheet" href="${ctx}/resource//font-awesome-4.4.0/css/font-awesome.css" />
    <script type="text/javascript" src="${ctx}/resource//js/jquery-1.10.1.min.js" ></script>
    <script type="text/javascript" src="${ctx}/resource//jquery-mobile/js/jquery.mobile-1.4.5.min.js" ></script>
    <script type="text/javascript" src="${ctx }/resource/js/jweixin-1.0.0.js"></script>
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
    			<li <%-- onclick="detail('${l.TICKET_ID}')" --%>>
    			
    				<div onclick="detail('${l.TICKET_ID}')">
    					<div>类型：
		    				<b style="color:#000;font-size:16px;font-weight:normal;">${l.BUSINESS_TYPE_STRING }</b>
    				 	</div>   				 	
    					<span class="bl">路线：${l.ROU_NAME}</span>
    					<span>金额：￥${l.PRICE}</span>
    					<c:choose>
    						<c:when test="${l.BUSINESS_TYPE == '3' }">
    							出行时间：<fmt:formatDate value="${l.START_TIME }" type="both" pattern="yyyy-MM-dd HH:mm"/>
    						</c:when>
    						<c:otherwise>
    							出行时间：<fmt:formatDate value="${l.START_TIME }" type="both" pattern="yyyy-MM-dd"/>
    						</c:otherwise>
    					</c:choose>
<!--     					<i class="fa fa-angle-double-right"></i>
 -->    				 	<%-- <input type="button" onclick="detail('${l.TICKET_ID}')" value="详细信息"/> --%>
    				</div>
    				<c:if test="${empty carNo }">
		    					 <a href="javascript:void(0)" onclick="modifyDate(' ${l.TICKET_ID}','${l.BUSINESS_TYPE }','${l.START_TIME }','${l.ROU_ID }','${l.MODIFY_TIME }')" style="width:50px;background:#329AFD;text-align:justify;text-align-last: justify;border-radius:5px;padding:5px;color:#fff;position:absolute;bottom:20px;right:15px;z-index:100;">
		    					 	<span style="width:100%;display:inline-block;-moz-text-align-last: justify;">改签</span>
		    					 </a>	  
		    					 <a href="javascript:void(0)" onclick="scanCode()" style="width:50px;background:#329AFD;text-align:justify;text-align-last: justify;border-radius:5px;padding:5px;color:#fff;position:absolute;top:17px;right:15px;z-index:100;">
		    					 	<span style="width:100%;display:inline-block;-moz-text-align-last: justify;">验票</span>
		    					 </a>		
		    			</c:if>
		    			<c:if test="${! empty carNo }">
					    		<a href="javascript:void(0)" onclick="todoCheck('${l.TICKET_ID}','${l.BUSINESS_TYPE }','${l.START_TIME }')" style="width:50px;background:#329AFD;text-align:justify;text-align-last: justify;border-radius:5px;padding:5px;color:#fff;position:absolute;bottom:20px;right:15px;z-index:100;">
					    			<span style="width:100%;display:inline-block;-moz-text-align-last: justify;">检票</span>
					    		</a>		 		
		    			</c:if>
    			</li>
    		</c:forEach>	
    		</c:otherwise>
    	</c:choose> 		
    	</ul>

    </div>
    <input type="hidden" id="timestamp" value="${weixinMap.timestamp}"/>
	<input type="hidden" id="nonceStr" value="${weixinMap.nonceStr}"/>
	<input type="hidden" id="signature" value="${weixinMap.signature}"/>
	<input type="hidden" id="appId" value="${weixinMap.appId}"/>
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
<script type="text/javascript" src="${ctx }/resource/js/jweixin-1.0.0.js"></script>
<script type="text/javascript">
		function detail(id){
			window.location.href="${ctx}/ticketBook/detail.do?ticketId="+id;
		}
		
    	function modifyDate(id,type,theTime,rouId,modifyTime){
    		//ajax提交,后台根据类型判断时间来确定是否可以改签, 能改签,就跳转到改签页面;
    		if(modifyTime != ""){
    			alert("已经改签过一次,无法再进行改签!");
    			return "";
    		}
    		var businessType = type;
    		var ticketId = id;
    		var startTime = theTime;
    		var rouId = rouId;
    		$.ajax({
    			url:"${ctx}/ticketBook/tojudgetime.do?",
    			data:{ticketId:ticketId,businessType : businessType,startTime : startTime},
    			type:"post",
    			dateType:"json",
    			success:function(e){
    				if(e == '0'){
    					window.location.href="${ctx}/ticketBook/tomodifydate.do?ticketId="+ticketId;
    				}else if(e == '2'){
    					alert("无法改签,请在发车前1小时改签!");
    				}else if(e == '1'){
    					alert("无法改签,请在发车前一天改签!");
    				}
    			},
    			error:function(e){
    				alert("改签失败,请稍后重试~")
    				
    			}
    			
    			
    		});
    		
    		
    	}
    	
    	function todoCheck(id,type,theTime){    		
    		var carNo='${carNo}';
    		 var setOffTime=new Date(theTime).getTime();
    		 var currentTime = new Date().getTime();
    		/* if(type == 3){    
	   	   	 if(currentTime > setOffTime ){
	   	   		 alert("票已过期,无法验票!")
	   	   		 return "";
	   	   	 }
	   	   	 if(currentTime+1800000 < setOffTime ){
	   	   		 alert("只能提前半小时验票!")
	   	   		 return "";
	   	   	 }
    		}else{
    			var setOffBigTime=setOffTime+86400000;
    			if(currentTime > setOffBigTime){
    				 alert("票已过期,无法验票!")
    	   	   		 return "";
    			}
    			if(currentTime < setOffTime){
    				alert("您预定的不是今天的票,无法验票!")
   	   	   		 return "";
    			}
    			
    		} */
    		window.location.href="${ctx}/ticketBook/updatedetail.do?ticketId="+id+"&carNo="+carNo;
    	}
    	
	
		
		function goComment(id){
			window.location.href="${ctx}/comment/gocomment.do?bookNo="+id;
		}

	
		//调用微信扫一扫
		
		var timestamp = $("#timestamp").val();//时间戳
		var nonceStr = $("#nonceStr").val();//随机串
		var signature = $("#signature").val();//签名
		var appId=$("#appId").val();
		wx.config({
		      debug: true, // 开启调试模式,调用的所有api的返回值会在客户端alert出来，若要查看传入的参数，可以在pc端打开，参数信息会通过log打出，仅在pc端时才会打印。
		      appId: appId, // 必填，公众号的唯一标识
		      timestamp: timestamp, // 必填，生成签名的时间戳
		      nonceStr: nonceStr, // 必填，生成签名的随机串
		      signature: signature,// 必填，签名，见附录1
		      jsApiList: ['scanQRCode'] // 必填，需要使用的JS接口列表，所有JS接口列表见附录2
		  });
		//点击扫描按钮，扫描二维码并返回结果
		  $(".scanQRCode1").on("click",function(){
			      wx.scanQRCode({
			        needResult: 0,
			        desc: 'scanQRCode desc',
			        success: function (res) {
			              //扫码后获取结果参数:htpp://xxx.com/c/?6123，截取到url中的防伪码后，赋值给Input
			              /*  var url = res.resultStr;
			             var tempArray = url.split('?');
			              var tempNum = tempArray[1];
			              $("#id_securityCode_input").val(tempNum); */
			               
			        }
			      });
		  })
		
</script>
</body>
</html>