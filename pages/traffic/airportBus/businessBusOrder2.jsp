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
    <title>机场商务车订单</title>
    <link rel="stylesheet" href="${ctx }/resource/css/style.css"/>
    <link rel="stylesheet" href="${ctx }/resource/css/main.css" />
    <link rel="stylesheet" href="${ctx }/resource/jquery-mobile/css/themes/default/jquery.mobile-1.4.5.min.css" />
    <link rel="stylesheet" href="${ctx }/resource/font-awesome-4.4.0/css/font-awesome.css" />
    <script type="text/javascript" src="${ctx }/resource/js/jquery-1.10.1.min.js" ></script>
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
			/* width:80px !important; */
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
		.ui-input-text{
			width:100px !important;
			padding-right:10px !important;
		}
		#startTimeTomoStr,#startTimeTodayStr{
			margin-top:10px !important;
			padding-right:-20px !important;
		}
		.orderMessage li.input>div{
					width:190px !important;
					text-align:right !important;
					}
		.ui-input-text{
			width:120px !important;
		} 
		@media only screen and (min-device-width: 414px) and (max-device-width: 736px) and (orientation : portrait) { 
				.orderMessage li.input>div{
					width:270px !important;
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
    	<input type="hidden" id="sRouId" name="sRouId" value="${sRouId }" form="businessForm" />
	    <input type="hidden" id="rouId" name="rouId" value="${rouId }" form="businessForm" />	 
    	<div class="orderMessage">    
    		<ul>
	    	 <li class="input">	    			
	    			<img class="seperate img" src="${ctx }/resource/image/main/co-green.png"></img>
	    			<span>出发地</span>
	    			<input type="text" id="startSite" name="startSite" value="${startSite }" form="businessForm" />
	    			 <%--  <select name="startSite" id="startSite" data-role="none" form="businessForm">
							<option id ="startCity" selected="selected" value="${cityCode }" >
						<c:if test="${cityCode=='1' }">沈阳</c:if>
						<c:if test="${cityCode=='2' }">抚顺</c:if>
						<c:if test="${cityCode=='3' }">本溪</c:if>
						<c:if test="${cityCode=='4' }">铁岭</c:if>
							</option>
					</select> --%>
					<!-- <a id="start"  href="#startPop" data-rel="popup" data-position-to="window">请选择</a> -->
					
	    		</li> 	    		
	    		<li class="input">
	    			<img class="seperate img"  src="${ctx }/resource/image/main/co-red.png"></img>
	    			<span>目的地</span>
	    			<input type="text" id="endSite" name="endSite" maxlength="10" value="${endSite }" form="businessForm" />
	    			<!-- <a id="end"  href="#endPop" data-rel="popup" data-position-to="window">请选择</a> -->
	    		</li>
	    		<li class="input">
	    			<img class="seperate img"  src="${ctx }/resource/image/main/phone.png"></img>
	    			<span>手机号</span>
	    			<input type="text" id="mobile" name="mobile" value="${mobile }" onchange="validateNumber()" form="businessForm" />
	    		</li>
	    		
	    		
	    		<li>
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
	    		
	    		<!-- <li class="seperate"> -->
	    		<%-- <li class="input">
	    			<img class="rposition img" src="${ctx }/resource/image/main/time.png"></img>
	    			<span>出行时间</span>
    				<input placeholder="请选择出行时间" type="datetime-local" id="startTimeStr"  name="startTimeStr" form="businessForm"/>
	    		</li> --%>
	    		<li class="input">
	    			<img class="seperate img"  src="${ctx }/resource/image/main/order.png"></img>
	    			<span>购票总数</span>
	    			<span class="orderNum" id="orderNum"><i class="fa fa-minus"></i><input type="text" id="bookSeat" name="bookSeat" form="businessForm" style="" data-role="none" readonly value="1" ><small>张</small><i class="fa fa-plus"></i></span>
	    			<!-- <input type="text" value="" id="sitNum" name="sitNum" form="businessForm" data-role="none">
	    			<a id="seat"  href="#seatPop" data-rel="popup" data-position-to="window">请选择</a> -->
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
								<input type="radio" name="carType"  value="5" form="businessForm" />
							</span>
						</li>
						<li>
							<span>GL8</span>
							<span class="imgBox"><img class="img" style="height:50px !important;margin-top:10px;" src="${ctx }/resource/image/main/gl8.png" alt=""/></span>
							<span class="chosenBtn">
								<i class="fa fa-check"></i>
								<input type="radio" name="carType" value="6" checked="checked"  form="businessForm" />
							</span>
							
						</li>
					</ul>
				</div>
	    		</li>
	    		<li class="textBox">
	    			<div class="">
	    				<span>全程票价约</span>	    				
	    				<strong class="red" id="cityprice">${price }</strong><small>元</small>
	    				<input type="hidden" value="${price }">
	    				<input type="hidden" name="price" id="price" value="${price }" form="businessForm" />
	    			</div>
	    			
	    		</li>
	    	</ul>
    	</div>
    	<form id="businessForm" action="${ctx }/airportbus/submitBusinessCarOrder.do" method="post"> 
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
	<div data-role="popup" class="ui-content" id="siteStartWarnning">
    	<div style="color:red;"><i class="fa fa-warning"></i><span>请输入出发地！</span></div>
    </div>
	<div data-role="popup" class="ui-content" id="siteEndWarnning">
    	<div style="color:red;"><i class="fa fa-warning"></i><span>请输入目的地！</span></div>
    </div>
	<div data-role="popup" class="ui-content" id="PhoneWarnning">
    	<div style="color:red;"><i class="fa fa-warning"></i><span>请输入手机号码！</span></div>
    </div>
    <div data-role="popup" class="ui-content" id="TimeWarnning">
    	<div style="color:red;"><i class="fa fa-warning"></i><span>请选择出行时间！</span></div>
    </div>
  <!--   <div data-role="popup" class="ui-content" id="TimeWarnning2">
    	<div style="color:red;"><i class="fa fa-warning"></i><span>以前以及0.5小时以内不可订票！</span></div>
    </div> -->
    <div data-role="popup" class="ui-content" id="SitWarnning">
    	<div style="color:red;"><i class="fa fa-warning"></i><span>请选择乘车人数！</span></div>
    </div>
    <div data-role="popup" class="ui-content" id="timeOutWarnning">
    	<div style="color:red;"><i class="fa fa-warning"></i><span>所选时间不在订单服务时间内(08:00-18:00)！</span></div>
    </div>
	
    <!-- 选择到达地点 -->
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
		// console.log('${dayList}')
		/* 	function whichDay(){
				var $startDateStr=$("#startDateStr");
				var $today=$("#today");
				var $tomorrow=$("#tomorrow");
				var startDateStr=$startDateStr.val();
				if(startDateStr == today){
					$tomorrow.hide();
					$today.show();
				}else{
					$today.hide();
					$tomorrow.show();
				}
			} */
		 
		 /*解决 时间placeholder 不显示的问题*/
 		/* var o = document.getElementById("startTimeStr");
     	o.onfocus = function(){
     	    this.removeAttribute('placeholder');
     	};
     	o.onblur = function(){
     	    if(this.value == '') this.setAttribute('placeholder','请选择出行时间');
     	}; */
		 /*选择乘车人数*/
		 $("#orderNum>i").bind('click',function(){
				var val = parseInt($(this).parent().children('input').val());
				if($(this).hasClass('fa-minus')){
					if(val>1){
						$(this).parent().children('input').val(--val);
					}
				}else{
				/* 	if(val<7){
						$(this).parent().children('input').val(++val);
					} */
					$(this).parent().children('input').val(++val);
				}
				var singlePrice=$("#price").prev().val();
				var temp=parseFloat(singlePrice)*val;
				var cost=onePoint(temp);
				$("#cityprice").text(cost);
				$("#price").val(cost);
			})
			/*弹框选择*/
    	$(".chosen>ul>li").bind('click',function(){
    		$(".chosen>ul>li").removeClass('active');
    		$(".chosen>ul>li>span.chosenBtn>input").removeAttr('checked');
    		$(this).children('span').children('div').children('input').attr('checked','checked');
    		$(this).addClass('active');
 		
    	})
    	
    		
    		/*绑定 click 选择事件*/
    		$("#seatScroll>ul>li.active").bind('click',function(){
	    		var value = $(this).text();
	    		$("#seat").text(value);
	    		$("#sitNum").attr("value",value);
	    		$("#seatPop").popup('close');
	    	})
    		/*计算active*/
    	 $("#seatScroll").on('scrollstop',function(){
    	 	var b =-$(this).children('ul').position().top;
    	 	var i = Math.ceil(b/50)+1;
    	 	$(this).children('ul').children('li').removeClass('active');
    	 	$(this).children('ul').children('li').eq(i).addClass('active');
    	 	$("#seatScroll>ul>li.active").bind('click',function(){
	    		var value = $(this).text();
	    		$("#seat").text(value);
	    		$("#sitNum").attr("value",value);
	    		$("#seatPop").popup('close');
	    	})	    	
    	}); 
    	
    	
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
    	 	
    	 	
        	//alert(today);
    		var siteStart=$("#startSite").val().trim();
    		var siteEnd=$("#endSite").val().trim();
    		var $startDateStr=$("#startDateStr");
    		var day=$startDateStr.val();
    		
	   		 // var startTimeTodayStr = $("#startTimeTodayStr").val();
	   		 // alert(startTimeTodayStr);
	   		//  var temp=new Date();
	   		//  var timeTemp=temp.toLocaleDateString().replace(/[年月]/g,'/').replace(/[日上下午]/g,'')+" "+startTimeTodayStr;
	   		 
	   		  
	   		 // var newTime=new Date(timeTemp).getTime();
	   		 // alert("newTime"+newTime);
	   		 
	   		  //var currentTime = new Date().getTime();
	   		//  var futherTime=currentTime+1800000;
	   		// alert("currentTime"+currentTime);
	   		// alert("futherTime"+futherTime);
	   		//return null;
	   		//  var startTimeTomoStr= $("#startTimeTomoStr").val();
	   		//  alert(startTimeTomoStr);

	   		 var phoneNumber = $("#mobile").val();
	   		 var sitnum = $("#seat").text();
	  
	    	 
	    	 
	    	 //出发地验证
	    	 if(siteStart=="请选择出发地"){
	    			$("#siteStartWarnning").popup('open');
	    			setTimeout(function(){
	    				$("#siteStartWarnning").popup('close');	
	    			},3000);
	    			 return null;
	    		 }
	    	 
	    	 //目的地验证 	 
	    	 if(siteEnd=="请选择目的地"){
	    			$("#siteEndWarnning").popup('open');
	    			setTimeout(function(){
	    				$("#siteEndWarnning").popup('close');	
	    			},3000);
	    			 return null;
	    		 }
	    	 
	    	/*  if(startTimeTodayStr=="" && day==today){	    		
	    			alert("请选择今天出行时间!");		    		
	    			 return null;
	    	 }
	    	 
	    	 if(startTimeTomoStr=="" && day !=today){
	    		 alert("请选择今天以后的出行时间!");		    		
    			 return null;
	    	 } */
	    	 
	    	 //半个小时之内不可订票
	    	//alert("day"+day);
	    	// alert("today"+today);
	    	 /* if((newTime<=currentTime||futherTime>=newTime) && day==today){
	    		 alert("以前以及0.5小时以内不可订票！如有需要请拨打:024-23890555");
	    		 $("#TimeWarnning2").popup('open');
	       		setTimeout(function(){
	       		$("#TimeWarnning2").popup('close');	
	       		},3000); 
	       		return null;
	    		} 
	   		 if(phoneNumber==""){
	   			$("#PhoneWarnning").popup('open');
	   			setTimeout(function(){
	   				$("#PhoneWarnning").popup('close');	
	   			},3000);
	   			 return null;
	   		 } */
	   		 
			
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
    	 /* var time_range_now = function (beginTime, endTime) {
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
    		}
    		 */
    	 
    	 
    </script>
</div>
</body>
</html>