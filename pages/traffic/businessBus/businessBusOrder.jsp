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
    <title>商务车订单</title>
    <link rel="stylesheet" href="${ctx }/resource/css/style.css"/>
    <link rel="stylesheet" href="${ctx }/resource/css/main.css" />
    <link rel="stylesheet" href="${ctx }/resource/jquery-mobile/css/themes/default/jquery.mobile-1.4.5.min.css" />
    <link rel="stylesheet" href="${ctx }/resource/font-awesome-4.4.0/css/font-awesome.css" />
    <script type="text/javascript" src="${ctx }/resource/js/jquery-1.10.1.min.js" ></script>
    <script type="text/javascript" src="${ctx }/resource/js/angular.min.js" ></script>
    <script type="text/javascript" src="${ctx }/resource/jquery-mobile/js/jquery.mobile-1.4.5.min.js" ></script>
    <style>
	    .cxrq{
	    	position:relative;
	    }
    	.ui-select,ui-btn ui-icon-carat-d ui-btn-icon-right ui-corner-all ui-shadow{
			border:0 !important;
			background:#fff !important;
			text-shadow:none !important;
		}
		.ui-page-theme-a .ui-btn{
			/* width:60px !important; */
			position:absolute;
			top:-45px;
			right:0;
			margin-right:6px !important;
			font-size:1em !important;
			border:0 !important;
			border-radius:0;
			background:#fff !important;
			text-shadow:none !important;
			font-weight:normal !important;
			margin-top:-8px !important;
		}
		@media screen and (max-width: 320px) {
    	.ui-page-theme-a .ui-btn {
    			top:-40px;
    		}
		}
		.ui-shadow {
	    -webkit-box-shadow:none !important;
	    -moz-box-shadow: none !important;
	    box-shadow: none !important;
		}
		#startTimeTomoStr,#startTimeTodayStr{
			margin-top:10px !important;
			padding-right:-20px !important;
		}
		/* .orderMessage li.input{
			position:relative;
		}
		.orderMessage li.input>div{
			width:100% !important;
			background:rgba(0,0,0,0) !important;
			position:absolute;
			right:0;
			text-align:right;
		} */
		.orderMessage li.input>div{
					width:200px !important;
					text-align:right !important;
					}
		.ui-input-text{
			width:120px !important;
		} 
		@media only screen and (min-device-width: 414px) and (max-device-width: 736px) and (orientation : portrait) { 
				.orderMessage li.input>div{
					width:280px !important;
					text-align:right !important;
					}
			}
		
    </style>
</head>
<body class=" " data-role="page">
<div class="box businessBusOrder">
    <!--页头-->
    <%-- <div class="topColor">
        <a class="topIcon" onclick="javascript:window.history.back();" data-transition="slide" data-direction="reverse"><img class="img" src="${ctx }/resource/image/main/backup.png"></a>
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
   
      <%-- <input type="hidden" id="startSite" name="startSite" value="${ticketBook.startSite }" form="businessForm"> --%>
       <input type="hidden" id="sRouId" name="sRouId" value="${ticketBook.sRouId }" form="businessForm" />
	    <input type="hidden" id="rouId" name="rouId" value="${ticketBook.rouId }" form="businessForm" />	 
       <input type="hidden" id="startLat" name="startLat" value="${startLat }" form="businessForm">
       <input type="hidden" id="startLon" name="startLon" value="${startLon }" form="businessForm">
       <input type="hidden" id="endLat" name="endLat" value="${endLat }" form="businessForm">
       <input type="hidden" id="endLon" name="endLon" value="${endLon }" form="businessForm">
       <input type="hidden" name="price" id="price" value="${ticketBook.price }" form="businessForm" />
    		<ul>
	    	 <li class="input">
	    			<img class="seperate img" src="${ctx }/resource/image/main/co-green.png"></img>
	    			<span>始发地</span>
	    			<input type="text" id="startSite" name="startSite" value="${ticketBook.startSite }" onchange="validateNumber()" readonly="readonly"  form="businessForm" />
	    			  <%-- <select name="startPlace" id="startPlace" data-role="none" form="businessForm">
							<option id ="startCity" selected="selected" value="${startCity }" >
						<c:if test="${startCity=='1' }">沈阳</c:if>
						<c:if test="${startCity=='2' }">抚顺</c:if>
						<c:if test="${startCity=='3' }">本溪</c:if>
						<c:if test="${startCity=='4' }">铁岭</c:if>
							</option>
					</select> --%>
	    		</li> 
	    	 <li class="input">
	    			<img class="seperate img" src="${ctx }/resource/image/main/co-red.png"></img>
	    			<span>目的地</span>
	    			<input type="text" id="endSite" name="endSite" maxlength="10" value="${ticketBook.endSite  }" onchange="validateNumber()" readonly="readonly"  form="businessForm" />
	    			
	    			<%--   <select name="endPlace" id="endPlace" data-role="none" form="businessForm">
							<option id ="endCity" selected="selected" value="${endCity }" >
						<c:if test="${endCity=='1' }">沈阳</c:if>
						<c:if test="${endCity=='2' }">抚顺</c:if>
						<c:if test="${endCity=='3' }">本溪</c:if>
						<c:if test="${endCity=='4' }">铁岭</c:if>
							</option>
					</select> --%>
	    		</li> 
	    		<li class="input">
	    			<img class="seperate img"  src="${ctx }/resource/image/main/phone.png"></img>
	    			<span>手机号</span>
	    			<input type="text" id="mobile" name="mobile" value="${mobile }" onchange="validateNumber()" form="businessForm" />
	    		</li>
	    		<!-- <li class="seperate"> -->
	    		 <li class="cxrq">
	    			<img class="rposition img" src="${ctx }/resource/image/main/time.png"></img>
	    			<span>出行日期</span>
	    			<select id="startDateStr"  name="startDateStr" form="businessForm">
		    			<c:forEach items="${dayList }" var="day">
	    					<option value="${day }">${day }</option>
	    				</c:forEach>		 
	    			</select>
	    		</li>
	    			
	    	<%-- 	<li id="today" class="input">
	    			<img class="rposition img" src="${ctx }/resource/image/main/time.png"></img>
	    			<span>出行时间</span>
	    			 <input type="time" id="startTimeTodayStr"  name="startTimeTodayStr" value="${theTime }" form="businessForm"/>
	    			
	    		</li>
	    			
	    			<li class="input" style="display:none"  id="tomorrow">
	    			<img class="rposition img" src="${ctx }/resource/image/main/time.png"></img>
	    			<span>出行时间</span>
	    			<input type="time" id="startTimeTomoStr"  name="startTimeTomoStr" value="12:00" form="businessForm"/>
	    			</li> --%>
	    			
	    		<li class="input" >
	    			<img class="seperate img"  src="${ctx }/resource/image/main/order.png"></img>
	    			<span>购票总数</span>
	    			<!-- <input type="text" value="" id="sitNum" name="sitNum" form="businessForm" data-role="none"> -->
	    			<!-- <a id="seat"  href="#seatPop" data-rel="popup" data-position-to="window">请选择</a> -->
	    			<span class="orderNum" id="orderNum"><i class="fa fa-minus"></i><input type="text" id="bookSeat" name="bookSeat" form="businessForm" style="" data-role="none" readonly value="1" ><small>张</small><i class="fa fa-plus"></i></span>
	    		</li>
	    		<li class="carType">
	    			<img class="busType img" src="${ctx }/resource/image/main/cartype.png"></img>
	    			<span>车型</span>
	    			<div class="chosen" id="chosen">
					<ul>
						<li class="active">
							<span>黄海商务</span>
							<span class="imgBox"><img class="img" style="height:60px !important;" src="${ctx }/resource/image/main/hhrt.png" /></span>
							<span class="chosenBtn">
								<i class="fa fa-check"></i>
								<input type="radio" name="carType"  value="2" form="businessForm" />
							</span>
						</li>
						<li>
							<span>GL8</span>
							<span class="imgBox"><img class="img" style="height:50px !important;margin-top:10px;" src="${ctx }/resource/image/main/gl8.png" alt=""/></span>
							<span class="chosenBtn">
								<i class="fa fa-check"></i>
								<input type="radio" name="carType" value="3" checked="checked"  form="businessForm" />
							</span>
							
						</li>
						
					</ul>
				</div>
	    		</li>
	    		<li class="textBox">
	    			<div class="">
	    				<span>全程票价约</span>
	    				<strong class="red" id="cityprice">${ticketBook.priceString }</strong>
	    				<small>元</small>
	    			</div>
	    			
	    		</li>
	    	</ul>
    	</div>
    	<form id="businessForm" action="${ctx }/busniessbus/submitorder.do" method="post">
	    	<a class="btn blue"  onclick="orderBus();">预约线路</a>
    	</form>
    
    </div>
    <!--主体结束-->
    <!--用户信息panel-->
	<!-- <div data-role="panel" id="userDetail" class="userDetail" data-display="overlay" data-position="right"  data-position-fixed="true"  >
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
	</div> -->
	<div data-role="popup" class="ui-content" id="PhoneWarnning">
    	<div style="color:red;"><i class="fa fa-warning"></i><span>请输入手机号码！</span></div>
    </div>
    <div data-role="popup" class="ui-content" id="TimeWarnning">
    	<div style="color:red;"><i class="fa fa-warning"></i><span>请选择出行时间！</span></div>
    </div> 
   <!-- <div data-role="popup" class="ui-content" id="TimeWarnning2">
    	<div style="color:red;"><i class="fa fa-warning"></i><span>以前以及0.5小时以内不可订票！</span></div>
    </div> -->
    <div data-role="popup" class="ui-content" id="SitWarnning">
    	<div style="color:red;"><i class="fa fa-warning"></i><span>请选择乘车人数！</span></div>
    </div>
    <div data-role="popup" class="ui-content" id="timeOutWarnning">
    	<div style="color:red;"><i class="fa fa-warning"></i><span>所选时间不在订单服务时间内(08:00-18:00)！</span></div>
    </div>
	<!-- <div data-role="popup" id="seatPop" class="ui-content seatPop" data-overlay-theme="b">
     	 <div id="seatScroll">
     	 	<span> </span>
     	 	<ul>
     	 		<li> </li>
     	 		<li class="active">1 位</li>
     	 		<li>2 位</li>
     	 		<li>3 位</li>
     	 		<li>4 位</li>
     	 		<li>5 位</li>
     	 		<li>6 位</li>
     	 		<li>7 位</li>
     	 		<li> </li>
     	 	</ul>
     	 </div>
    </div> -->
    <!--页脚-->
    <%-- <div class="footer">
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
    <script type="text/javascript">
	 var start;
	 var num;
	 //var time;
	 var type;
	 var today='${dayList[0]}';
	 var singlePrice='${ticketBook.price }';
	/*  function whichDay(){
			var $startDateStr=$("#startDateStr");
			var $today=$("#today");
			var $tomorrow=$("#tomorrow");
			var startDateStr=$startDateStr.val();
			if(startDateStr == "today"){
				$tomorrow.hide();
				$today.show();
			}else{
				$today.hide();
				$tomorrow.show();
			}
		} */
	 /* var o = document.getElementById("startTimeStr");
 	o.onfocus = function(){
 	    this.removeAttribute('placeholder');
 	};
 	o.onblur = function(){
 	    if(this.value == '') this.setAttribute('placeholder','请选择日期');
 	};  */
		$("#orderNum>i").bind('click',function(){
			var val = parseInt($(this).parent().children('input').val());
			if($(this).hasClass('fa-minus')){
				if(val>1){
					$(this).parent().children('input').val(--val);
				}
			}else{
				$(this).parent().children('input').val(++val);
				/* if(val<7){
					
				} */
			}
			//var singlePrice=$("#price").val();
			var temp=parseFloat(singlePrice)*val;
			var cost=onePoint(temp);
			$("#cityprice").text(cost);
			$("#price").val(cost);
			
		//	$("#bookSeat").val(val);
			
		})
    	$(".chosen>ul>li").bind('click',function(){
    		$(".chosen>ul>li").removeClass('active');
    		$(".chosen>ul>li>span.chosenBtn>input").removeAttr('checked');
    		$(this).children('span').children('div').children('input').attr('checked','checked');
    		$(this).addClass('active');
 		
    	})
    	
    	 //取一位小数点:
 		function onePoint(num){
 		 var temp=num.toString();
 		 if(temp.indexOf(".")<0){
 			 temp+=".0";    			 
 		 }
 		 return temp;
 	 }
    	
    	function orderBus(){
	   		/* if(time_range_now("08:00","18:00") == false){
	   			$("#timeOutWarnning").popup('open');
	   			setTimeout(function(){
	   				$("#timeOutWarnning").popup('close');	
	   			},3000);
	   			 return null;
	   	 	}; */
   			var $startDateStr=$("#startDateStr");
   			var day=$startDateStr.val();
   		
   		  /* var startTimeTodayStr = $("#startTimeTodayStr").val();
   		 // alert(startTimeTodayStr);
   		  var temp=new Date();
   		  var timeTemp=temp.toLocaleDateString().replace(/[年月]/g,'/').replace(/[日上下午]/g,'')+" "+startTimeTodayStr;
   		  var newTime=new Date(timeTemp).getTime();
   		  var currentTime = new Date().getTime();   		  
   		  var startTimeTomoStr= $("#startTimeTomoStr").val(); */
   		  
   		/*  if(startTimeTodayStr=="" && day=="today"){	    		
 			alert("请选择今天出行时间!");		    		
 			 return null;
 	 }
 	 
 	 if(startTimeTomoStr=="" && day=="tomorrow"){
 		 alert("请选择明天出行时间!");		    		
			 return null;
 	 } */
 	 
 	 //半个小时之内不可订票
 	 /* if((newTime<=currentTime||(currentTime+1800000)>=newTime) && day=="today"){
 		 	alert("以前以及0.5小时以内不可订票！如有需要请拨打:024-58633333");
 		$("#TimeWarnning2").popup('open');
    		setTimeout(function(){
    		$("#TimeWarnning2").popup('close');	
    		},3000); 
    		return null;
 		}  */
 	 
    	
   		 var phoneNumber = $("#mobile").val();
   		 var sitnum = $("#seat").text();
    	
   		 if(phoneNumber==""){
   			$("#PhoneWarnning").popup('open');
   			setTimeout(function(){
   				$("#PhoneWarnning").popup('close');	
   			},3000);
   			 return null;
   		 }
   		 
		
   		 if(sitnum=='请选择'){
   			$("#SitWarnning").popup('open');
   			setTimeout(function(){
   				$("#SitWarnning").popup('close');	
   			},3000);
   			 return null;
   		 }
   		 
   		var r=confirm("是否确认订单?");
	   	  if (r==false){
	   		  return ;
	   	  }
   		 
    		 document.getElementById('businessForm').submit();   		 
    	 }
    	
    	 function validateNumber(){
    			var reg=/^(1\d{10})$/;
    			var phoneNumber=$("#mobile").val();
    			if(!(reg.test(phoneNumber))){      
    			alert("不是正确的11位手机号");      
    			$("#mobile").val("");  
    			}else{
    				}
    	} 
    	 //验证订单时间
    	/*  var time_range_now = function (beginTime, endTime) {
    		    var strb = beginTime.split (":");
    		    if (strb.length != 2) {
    		        return false;
    		    }

    		    var stre = endTime.split (":");
    		    if (stre.length != 2) {
    		        return false;
    		    }

    		    var b = new Date ();
    		    var e = new Date ();
    		    var n = new Date ();

    		    b.setHours (strb[0]);
    		    b.setMinutes (strb[1]);
    		    e.setHours (stre[0]);
    		    e.setMinutes (stre[1]);

    		    if (n.getTime () - b.getTime () > 0 && n.getTime () - e.getTime () < 0) {
    		        return true;
    		    } else {
    		        //alert ("当前时间是：" + n.getHours () + ":" + n.getMinutes () + "，不在该时间范围内！");
    		        return false;
    		    }
    		} */
    	 
    </script>
</div>
</body>
</html>