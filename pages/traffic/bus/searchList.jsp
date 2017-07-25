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
    <title>城际巴士查询线路列表</title>
    <link rel="stylesheet" href="${ctx }/resource/font-awesome-4.4.0/css/font-awesome.css" />
    <link rel="stylesheet" href="${ctx }/resource/css/style.css"/>
    <link rel="stylesheet" type="text/css" href="${ctx }/resource/css/main.css"/>
    <link rel="stylesheet" href="${ctx }/resource/jquery-mobile/css/themes/default/jquery.mobile-1.4.5.min.css" />
      <script type="text/javascript" src="${ctx }/resource/js/jquery-1.10.1.min.js" ></script>
    <script type="text/javascript" src="${ctx }/resource/js/main.js" ></script>
    <script type="text/javascript" src="${ctx }/resource/jquery-mobile/js/jquery.mobile-1.4.5.min.js" ></script>
    <style>
    	.searchListBox>ul>li{margin-bottom:10px;}
    	.searchListBox>ul>li>a{line-height:1.7em;color:#000;font-weight:normal;display:block;margin:10px;background:#fff;padding:8px;position:relative;}
    	.searchListBox>ul>li>a *{color:#000;}
    	.searchListBox>ul>li>a>span,
    	.searchListBox>ul>li>a>small{display:block;}
    	.searchListBox>ul>li>a>small{color:#999;}
    	.searchListBox>ul>li>a>span:first-child{font-size:0.9em;}
    	.searchListBox>ul>li>a>span>i{margin:0 5px;}
    	.searchListBox>ul>li>a>span:nth-child(2){font-size:1.2em;}
    	.searchListBox>ul>li>a>span.taged{position:absolute;display:inline-block;right:8px;top:10px;background:#E4231A;color:#FFF;}
    	.searchListBox>ul>li>a>span.taged>i{color:#fff;}
    </style>
</head>
<body data-role="page">
<div class="box allBus">
    <!--页头-->
   <%--  <div class="topColor">
        <a class="topIcon" onclick="javascript:window.history.back()" data-transition="slide" data-direction="reverse"><img class="img" src="${ctx }/resource/image/main/backup.png"></a>
        <div class="topTitle">城际巴士</div>
        <a class="topIcon2" href="#userDetail"><img class="img" src="${ctx }/resource/image/main/user.png"></a>
    </div>
    <div class="clear"></div> --%>
    <div style="background:#35A8D7;height:5px;"></div>
    <a class="topIcon" href="#userDetail"><i class="fa fa-user"></i></a>
    <!--页头结束-->
    <!--主体-->
    <div class="mainBox bottom0">
       <div class="brandBox">
       		<div class="scrollImg">
				<ul id="imgContainer">
					<li><img class="img" src="${ctx }/resource/image/main/ad1.jpg" alt=""/></li>
					<li><img class="img" src="${ctx }/resource/image/main/ad2.jpg" alt=""/></li>
					<li><img class="img" src="${ctx }/resource/image/main/ad3.jpg" alt=""/></li>
				</ul>
			</div>
       </div>
		<div class="searchListBox" id="searchListBox">	
			 <ul>
				<li>
					<a href="">
						<span>1号线（高湾）</span>
						<span>抚顺南站-沈阳站</span>
						<small>首：0610<i class="fa fa-long-arrow-right"></i>末：20:40</small>
						<span class="taged"><i class="fa fa-jpy"></i>11.00</span>
						
					</a>
				</li>
				<li>
					<a href="">
						<span>1号线（高湾）</span>
						<span>抚顺南站-沈阳站</span>
						<small>首：0610-末：20:40</small>
						<span class="taged"><i class="fa fa-jpy"></i>11.00</span>
						
					</a>
				</li>
				
				
			</ul> 
		</div>
    </div>
    <!--主体结束-->
    <!--用户信息panel-->
	<div data-role="panel" id="userDetail" class="userDetail" data-display="overlay" data-position="right" >
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
    
</div>
<script type="text/javascript">
			$(function(){
											
					 $.ajax({url:"${ctx}/bus/showlines.do?json",async: false,
							type: "POST",dataType:'json',error:function(){},
							success:function(result){	
								var upload=' <ul>';
									for(var i=0;i<result.length;i++){
										upload+='<li><a><span onclick="toshowMap('+result[i].rou_code+','+result[i].updown_type+')">'+result[i].rou_name+'</span>';
										upload+='<span>'+result[i].beginstationname+'-'+result[i].endstationname+'&nbsp&nbsp'+result[i].START_TIME+'-'+result[i].END_TIME+'</span>';
										upload+='</a></li>';
									}
									upload+='</ul>';
									$('#listBox').html(upload);
							}
					
						}); 	
					
					
			});
			
			function toshowMap(rouId,updownType){			
			 	window.location.href="${ctx}/bus/todetail.do?rouId="+rouId+"&updownType="+updownType; 
			}
			
			
	
			</script>
</body>
</html>