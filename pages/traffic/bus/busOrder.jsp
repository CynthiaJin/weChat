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
    <title>城际巴士订单</title>
    <link rel="stylesheet" href="${ctx }/resource/css/style.css"/>
    <link rel="stylesheet" href="${ctx }/resource/css/main.css" />
    <link rel="stylesheet" href="${ctx }/resource/font-awesome-4.4.0/css/font-awesome.css" />
    <link rel="stylesheet" href="${ctx }/resource/jquery-mobile/css/themes/default/jquery.mobile-1.4.5.min.css" />
    <link rel="stylesheet" href="${ctx }/resource/font-awesome-4.4.0/css/font-awesome.css" />
    <script type="text/javascript" src="${ctx }/resource/js/jquery-1.10.1.min.js" ></script>
        <script type="text/javascript" src="${ctx }/resource/js/main.js" ></script>
    <script type="text/javascript" src="${ctx }/resource/jquery-mobile/js/jquery.mobile-1.4.5.min.js" ></script>
    <style>
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
    <div style="background:#35A8D7;height:5px;"></div>
   <!--  <a class="topIcon" href="#userDetail"><i class="fa fa-user"></i></a> -->
    <!--页头结束-->
    <!--主体-->
    <div class="mainBox bottom0">
    	<div class="orderMessage">
    		<ul>
	    	<%-- 	<li>
	    			<img class="rname" src="${ctx }/resource/image/main/co-green.png" ></img>
	    			<span>出发地</span>
	    			<span id="startsite">本溪-东芬客运站</span>
	    		</li> --%>
	    	<%-- 	<li>
	    			<img class="rnum" src="${ctx }/resource/image/main/co-red.png"></img>
	    			<span>目的地</span>
	    			<span>沈阳桃仙机场</span>
	    		</li> --%>
	    <%-- 		<li class="input">
	    			<img class="seperate img" src="${ctx }/resource/image/main/co-green.png" ></img>
	    			<span>出发地</span>
	    			<input type="text" name="startSite" id="startSite" value=""  form="businessForm"/>
	    		</li>
	    		<li class="input">
	    			<img class="seperate img" src="${ctx }/resource/image/main/co-red.png"></img>
	    			<span>目的地</span>
	    			<input type="text" name="endSite" id="endSite" value="" form="businessForm"/>
	    		</li> --%>
	    		
	    	 <li class="input">
	    	 <input  type="hidden" name="rouId" id="rouId" value="${rouId}" form="businessForm"/>
	    			<img class="seperate img" src="${ctx }/resource/image/main/order.png"></img>
	    			<span>巴士线路</span>
	    			<input type="text" name="rouname" id="rouname"  form="businessForm"  readonly="true" />			
	    		</li> 
	    		<%-- <li class="input">
	    			<img class="seperate img" src="${ctx }/resource/image/main/co-green.png" ></img>
	    			<span>出发地</span>
	    			<input type="text" name="startSite" id="startSite" value=""  form="businessForm"/>
	    		</li>
	    		<li class="input">
	    			<img class="seperate img" src="${ctx }/resource/image/main/co-red.png"></img>
	    			<span>目的地</span>
	    			<input type="text" name="endSite" id="endSite" value="" form="businessForm"/>
	    		</li> --%>
	    		<li class="input">
	    			<img class="seperate img" src="${ctx }/resource/image/main/co-green.png" ></img>
	    			<span>出发地</span>
	    	<!-- 		<input type="text" name="startSite" id="startSite" value=""  form="businessForm"/> -->
	    			 <select name="startSiteOrd" id="startSiteOrd"  data-role="none"  form="businessForm">
										
							<c:forEach items="${linesite }" var="lineinfo">
									<option value="${lineinfo.site_ord }">${lineinfo.sta_name }</option>
							</c:forEach>
							<!-- <option value="">全部</option> -->
					</select>
	    			
	    			
	    			
	    		</li>
	    		<li class="input">
	    			<img class="seperate img" src="${ctx }/resource/image/main/co-red.png"></img>
	    			<span>目的地</span>
	    			<!-- <input type="text" name="endSite" id="endSite" value="" form="businessForm"/> -->
	    			 <select name="endSiteOrd" id="endSiteOrd" data-role="none"   form="businessForm">
										
							<c:forEach items="${linesite }" var="lineinfo">
									<option value="${lineinfo.site_ord }">${lineinfo.sta_name }</option>
							</c:forEach>
							<!-- <option value="">全部</option> -->
					</select>
	    		</li>
	    		<li class="input">
	    			<img class="seperate" src="${ctx }/resource/image/main/full.png"></img>
	    			<span>联系人</span>
	    			<input type="text" name="contact" id="contact" value="" form="businessForm" placeholder="请输入" />
	    		</li>
	    		<li class="input">
	    			<img class="rposition img" src="${ctx }/resource/image/main/time.png"></img>
	    			<span>出行时间</span>
	    			<!--  <span  id="sittime" >2016/2/22/14:22:23</span>  -->
	    			<input placeholder="请选择出行时间" type="datetime-local" id="startTimeStr"  name="startTimeStr" form="businessForm"/>
	    		</li>
	    		<li class="textBox">
	    			<div class="">
	    				<span>全程票价约</span>
	    				<input type="hidden" name="price" id="price"  form="businessForm" />
	    				<input type="hidden" name="rouId" id="rouId"  value='${rouId}'  />
	    				<strong class="red" id="showprice"  >25元</strong>
	    			</div>
	    			
	    		</li>
	    	</ul>
    	</div>
    	
    	<form id="businessForm" action="${ctx }/bus/busorder.do" method="post">
	    	<a class="btn blue"  onclick="orderBus();">预约线路</a>
    	</form>
    </div>
    <!--主体结束-->
    <!--用户信息panel-->
	<!--  <div data-role="panel" id="userDetail" class="userDetail" data-display="overlay" data-position="right"  data-position-fixed="true"  >
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
	</div>  -->
    <!--页脚-->
       <div data-role="popup" class="ui-content" id="warnning">
    	<div style="color:red;"><i class="fa fa-warning"></i><span>请输入完整的出行时间！</span></div>
    </div>
     <div data-role="popup" class="ui-content" id="TimeWarnning2">
    	<div style="color:red;"><i class="fa fa-warning"></i><span>0.5小时之内不可订票！</span></div>
    </div>
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
	 var price;
	 var rouname;
	var showprice;
	var rouId;
	 price='${price}';
	 rouname='${rouname}';
	 var linesite;
	 linesite='${linesite}';
	 console.info(linesite);
	 
	 
	
     	$(function(){
     		/*input date placeholder兼容*/
     		var o = document.getElementById("startTimeStr");
        	o.onfocus = function(){
        	    this.removeAttribute('placeholder');
        	};
        	o.onblur = function(){
        	    if(this.value == '') this.setAttribute('placeholder','请选择日期');
        	};
     		$("#rouname").val(rouname);
     		$("#price").val(price);
     		showprice=price+'元';
     		$("#showprice").html(showprice);
     		
     	})
    	
    	function orderBus(){
     		 var startTime = $("#startTimeStr").val();
     		 if(startTime==""||startTime==null){
     			popWarnning("#warnning");
    			 return null;
    		 }
     		var timeStr = startTime.substring(0,10)+" "+startTime.substring(11,16);
    		var startTimeN = new Date(timeStr).getTime();
    		var currentTime = new Date().getTime();
    		if(startTimeN<=currentTime||(currentTime+1800000)>=startTimeN){
    			$("#TimeWarnning2").popup('open');
       			setTimeout(function(){
       				$("#TimeWarnning2").popup('close');	
       			},3000);
       			return null;
    		}
     		 	 
    		 document.getElementById('businessForm').submit();
 
    	}	

    </script>
</div>
</body>
</html>