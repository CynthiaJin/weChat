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
    <title>选择出发城市</title>
   <link rel="stylesheet" href="${ctx }/resource/font-awesome-4.4.0/css/font-awesome.css" />
    <link rel="stylesheet" href="${ctx }/resource/css/style.css"/>
    <link rel="stylesheet" type="text/css" href="${ctx }/resource/css/main.css"/>
    <link rel="stylesheet" href="${ctx }/resource/jquery-mobile/css/themes/default/jquery.mobile-1.4.5.min.css" />
    <script src="${ctx }/resource/js/jquery-1.10.1.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="${ctx }/resource/js/main.js" ></script>
    <script type="text/javascript" src="${ctx }/resource/js/flow.js" ></script>
    <script type="text/javascript" src="${ctx }/resource/jquery-mobile/js/jquery.mobile-1.4.5.min.js" ></script>
    <style>
    html,body{
    	overflow-x:hidden;
    }
    .exchangeInput>div.inputContainer>div>div 
    	{
    		width:56px;
    	}
    	.ui-select{
    		width:50px;
    		height:48px;
    		border:0;
    		border-radius:none;
    		box-shadow:none;
    		background:#fff;
    		position:absolute;
    		right:20px;
    		z-index:100;
    		font-size:14px;
    	}
    	.ui-btn{
    		height:39px;
    		background: none;
    		border:0;
    		color: #999;
    		font-size:16px;
    		box-shadow:none;
    	}
    	.ui-btn:visited{
    		background: none;
    		border:0;
    		color: #999;
    		box-shadow:none;
    	}
    	.ui-page-theme-a .ui-btn{
    		background: none;
    	}
    	.ui-page-theme-a .ui-btn:hover{
    		background: none;
    		border:0;
    		color: #999;
    		box-shadow:none;
    	}
    </style>
</head>
<body data-role="page">
<div class="box" class="">
    <!--页头-->
    <%-- <div class="topColor">
        <a class="topIcon"><img class="img" src="${ctx }/resource/image/main/backup.png"></a>
        <div class="topTitle">商务车</div>
        <a class="topIcon2" href="#userDetail"><img class="img" src="${ctx }/resource/image/main/user.png"></a>
    </div>
    <div class="clear"></div> --%>
    <!-- <div style="background:#35A8D7;height:5px;"></div>
    <a class="topIcon" href="#userDetail"><i class="fa fa-user"></i></a> -->
    <!--页头结束-->
    <!--主体-->
    <div class="mainBox bottom0">
    	<div class="brandBox">
	       		<div class="scrollImg">
					<ul id="imgContainer">
						<li><img class="img" src="${ctx }/resource/image/main/u97.jpg" alt=""/></li>
						<li><img class="img" src="${ctx }/resource/image/main/banner1.png" alt=""/></li>
						<li><img class="img" src="${ctx }/resource/image/main/banner01.png" alt=""/></li>
						<li><img class="img" src="${ctx }/resource/image/main/banner02.png" alt=""/></li>
					</ul>
				</div>
	     </div>
     	<%-- <a class="putBox">
    		<span class="left"><img class="img" src="${ctx }/resource/image/main/line.png"></span>
    		<span class="center">选择商务车出发方式</span>
    	</a> --%>
       <%--  <div class="putBox">
            <div class="putIcon-left"><img class="img" src="${ctx }/resource/image/main/line.png"></div>
            <p>选择商务车出发城市</p>
            <div class="putIcon-right"><img class="img" src="${ctx }/resource/image/main/more.png"></div>
            <div class="clear"></div>
        </div> --%>
       	<div class="exchangeInput">
       		
        	<div style="float:right;width:60px;height:100%;line-height:100px;margin-right:5px;position:relative;" onclick="chooseAirPort();">
        		<img src="${ctx }/resource/image/main/uair4.png" style="width:60px;position:absolute;top:20px;z-index:100;" >
        	</div>
        	<div class="inputContainer">
	        	<div>
	        		<img class="img" src="${ctx }/resource/image/main/co-green1.png" />
	        		<!-- <span>出发地</span> -->
	        		<select id="startPlace" name="startPlace" style="height:50px;float:right;background:#fff;border:none;box-shadow: none;!important;" onchange="getCityCode();">
	        			<option style='display:none'></option>
	        			<c:forEach items="${result }" var="station">
	        				<option value="${station.rouId }">${station.cityName }</option>
	        			</c:forEach>
					<!-- 	<option value="沈阳">沈阳</option>
						<option value="抚顺">抚顺</option> -->
					</select>
	        		<input type="text" name="startCity" id="startCity"  placeholder="请选择出发城市"  readonly="readonly"  form="busForm"  style="position:absolute;top:-20px;z-index:2;"/>
	        	</div>
	        	<div class="">
	        		<img class="img"  src="${ctx }/resource/image/main/co-red1.png" />
	        		<!-- <span>站点</span> -->
	        		<select id="startPoint" name="startPoint" style="height:50px;float:right;background:#fff;border:none;box-shadow: none;!important;" onchange="getSite();">
					</select>
	        		<input type="text" name="startSite" id="startSite" placeholder="请选择出发地点"  readonly="readonly"  form="busForm" style="position:absolute;top:25px;">
	        	</div>	        
        	</div>

	    
        	<span>
        	<%-- 	<img class="img" src="${ctx }/resource/image/main/swith.png" /> --%>
        	</span>
        </div>  
        <form id="busForm">
	    	 <a class="btn blue" onclick="viewLine();"><span><img src="${ctx }/resource/image/main/u94.png" style="width:20px;margin-right:10px;vertical-align: middle;"></span>查询线路</a>
    	</form>         	
       	<!-- 为了返回,重复提交 -->
       	<input type="hidden" name="rouId" id="rouId" value=""/>
       	<input type="hidden" name="staId" id="staId" value=""/>       	 
       	<input type="hidden" name="city" id="city" value="123"/>       	 
       	<input type="hidden" name="site" id="site" value=""/>       	

       	
     <h4 style="padding:10px;font-size:16px;">产品介绍</h4>
       	<div class="tagedBox">
       		 <img class="img" src="${ctx }/resource/image/main/6Fjd5oKR-0.png"  style="margin:10px;">
       	</div>
    </div>
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
   <%--  <div class="footer">
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
    $(function(){
		$("#imgContainer").scrollImage();
	})
    var rouId="";
    var staId="";
    var city="";
    var site="";
    
    var $rouId=$("#rouId");
    var $staId=$("#staId");
    var $city=$("#city");
    var $site=$("#site");
    
    function getCityCode(){
    	var $cityPlace=$("#startPlace");    
    	
    	rouId=$cityPlace.val();
    	$rouId.val(rouId);
    	city=$cityPlace.find("option:selected").text();
    	$city.val(city);
    	$("#startCity").val(city);
    	
    	
    	var $startSite=$("#startSite");
    	//alert(city);    	    	
    	var $startPoint=$("#startPoint");
    	
    	$startPoint.html("");
    	var url="${ctx}/busniessbus/in/toChooseSite.do?";
    	//var str="<option style='display:none'></option>";
    	var str;
    	$.ajax({
    		url:url,
    		data:{rouId:rouId},
    		type:"GET",
    		dataType:"json",
    		success:function(data){    	
    			var param=data[0].staName;
    			var param2=data[0].staId;
    			for(var i=0;i<data.length;i++){
    				var temp=data[i].staName;
    				str+='<option value="'+data[i].staId+'">'+data[i].staName+'</option>';    				
    			} 
    			
    			$startPoint.html(str);
    			
    			$startPoint.val(param);
    			var $prev=$startPoint.prev().html(param);
    			 $startSite.val(param);
    			 
    			 site=param;
    			 $site.val(site);
    			 
    			 staId=param2
    			 $staId.val(staId);
    			 
    			// alert("select:"+$startPoint.val());
    			/* alert("input(start):"+ $startSite.val())
    			
    			alert("span:"+$prev.html());
    			alert("input(end):"+ $startSite.val()) */
    		},
    		error:function(){
    			alert("获取站点失败!")
    		}
    		
    	})
    }
    
    
    
    function chooseAirPort(){    
    	var url="${ctx}/airportbus/airlist.do";    	
    	window.location.href=url;
    } 
    
    function getSite(){
    	$startPoint=$("#startPoint");
    	$startSite=$("#startSite");
    
    	staId=$startPoint.val();
    	$staId.val(staId);
    	site=$startPoint.find("option:selected").text();
    	$site.val(site);
    	//alert(site);
    	$startSite.val(site);
    }
    
    
    function viewLine(){    	
    	//alert(rouId);
    	//alert(site);
    	var rouId2 = $rouId.val();
    	var staId2=$staId.val();
    	var city2=$city.val();
    	var site2=$site.val();
    	if(rouId2 == "" || rouId2 == "undefined"){
    		alert("请选择出发城市!");
    		return "";
    	}
    	if(site2 == "" || site2 == "undefined"){
    		alert("请选择出发站点!");
    		return "";
    	}
    	var total=city2+site2;
    	var url="${ctx}/busniessbus/toChooseStart.do?rouId="+rouId2+"&staId="+staId2+"&startSite="+total;    
    	window.location.href=url;
    }
    </script>
</div>
</body>
</html>