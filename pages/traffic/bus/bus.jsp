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
    <title>辽宁城际客运-雷锋号</title>
    <link rel="stylesheet" href="${ctx }/resource/css/style.css"/>
    <link rel="stylesheet" type="text/css" href="${ctx }/resource/css/main.css"/>
    <link rel="stylesheet" href="${ctx }/resource/jquery-mobile/css/themes/default/jquery.mobile-1.4.5.min.css" />
    <script src="${ctx }/resource/js/jquery-1.10.1.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="${ctx }/resource/js/main.js" ></script>
    <script type="text/javascript" src="${ctx }/resource/js/angular.min.js" ></script>
    <script type="text/javascript" src="${ctx }/resource/jquery-mobile/js/jquery.mobile-1.4.5.min.js" ></script>
     <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=ezofnKG8X1gQ29UuOUjQlo1Q"></script>
    <style>
    	
    </style>
</head>
<body data-role="page">
<div class="box" class="">
    <!--页头-->
    <div class="topColor">
        <a class="topIcon" onclick="javascript:window.history.back();" data-transition="slide" data-direction="reverse"><img class="img" src="${ctx }/resource/image/main/backup.png"></a>
        <div class="topTitle">城际巴士</div>
        <a class="topIcon2" href="#userDetail"><img class="img" src="${ctx }/resource/image/main/user.png"></a>
    </div>
    <div class="clear"></div>
    <!--页头结束-->
    <!--主体-->
    <div class="mainBox bottom0">
        <div class="putBox">
            <div class="putIcon-left"><img class="img" src="${ctx }/resource/image/main/line.png"></div>
            <p>查看城际巴士全部线路</p>
            <div class="putIcon-right"><img class="img" src="${ctx }/resource/image/main/more.png"></div>
            <div class="clear"></div>
        </div>
        <div class="exchangeInput">
        	<div class="inputContainer">
	        	<div>
	        		<img class="img" src="${ctx }/resource/image/main/co-green.png" />
	        		<span>出发地</span>
	        		<input type="text" id="startsite" placeholder="请输入出发地"/>
	        	</div>
	        	<div class="">
	        		<img class="img" src="${ctx }/resource/image/main/co-red.png" />
	        		<span>出发地</span>
	        		<input type="text" id="endsite" placeholder="请输入目的地"/>
	        	</div>
        	</div>
        	<span>
        		<img class="img" src="${ctx }/resource/image/main/swith.png" />
        	</span>
        </div>
        <a class="btn blue noRadius" onclick="selectLine();">查询线路</a>
        <div class="aroundPoint">
        	<h4>附近站点</h4>
        	<div>
        		<span class="taged">珠林桥</span>
        		<span class="taged">惠工广场</span>
        		<span class="taged">珠林桥</span>
        		<span class="taged">惠工广场</span>
        	</div>
        </div>


    </div>
    <!--主体结束-->
    <!--用户信息panel-->
	<div data-role="panel" id="userDetail" class="userDetail" data-display="overlay" data-position="right"  data-position-fixed="true" >
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
  <%--   <div class="footer">
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
<script>

var outSite;
var inSite;
var one;
var two;
		 	$(function(){
				$("#startsite").bind('click',function(){
					var id='startsite';
					window.location.href="${ctx }/bus/toposlist.do?id="+id;
					/* window.location.href="${ctx }/bus/poslist.do";		 */			
				})
				$("#endsite").bind('click',function(){
					var id='endsite';
					window.location.href="${ctx }/bus/toposlist.do?id="+id;
				/* 	window.location.href="${ctx }/bus/poslist.do"; */
				})
				
				outSite='${startsite}';
				if(outSite!=null&&outSite!=''){
					$("#startsite").val(outSite);
				}
				inSite='${endsite}';
				if(inSite!=null&&inSite!=''){
					$("#endsite").val(inSite);
				}
			}) 
			
			
			function selectLine(){

			one=$("#startsite").val();
			two=$("#endsite").val();
			if(one==null||one==''||one==undefined){
				$("#startsite").attr('placeholder','请输入出发地');
				return;
			}
			if(two==null||two==''||two==undefined){
				$("#endsite").attr('placeholder','请输入目的地');
				return;
			}
			
			window.location.href="${ctx}/bus/togetlines.do?star="+one+"&end="+two;
		}
</script>
</body>
</html>