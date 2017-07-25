<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="format-detection" content="telephone=no" />
    <title>旅游包车</title>
    <link rel="stylesheet" href="${ctx }/resource/css/style.css" />
	<link rel="stylesheet" type="text/css" href="${ctx }/resource/css/main.css" />
	 <script type="text/javascript" src="${ctx }/resource/js/jquery-1.10.1.min.js"></script>
	 <script type="text/javascript" src="${ctx }/resource/js/flow.js"></script>
	<style type="text/css">
			html,body{
    			overflow-x:hidden;
    		}
    		.mainBox{
    			overflow-x:hidden;
    		}
			.info{
				width: 100%;
				border:1px solid #ddd;
				border-radius: 3px;
				margin: 10px 0;
				background:#fff;
			}
			.info p{
				padding: 10px 5px;
				font-size: 15px;
				color:#bbb;
				font-family: "微软雅黑";
			}
			.info p img{
				width: 24px;
				vertical-align: middle;
				margin-left: 10px;
				margin-right: 10px;
			}
			.carShow ul{
				width:99%;
				margin:10px auto;
				background:#fff;
				height:100px;
				border:1px solid #ddd;
			}
			.carShow ul li{
				float:left;
				height:100%;
				margin-left:25px;
				padding-top:6px;
			}
			.carShow ul li img{
				width:115px;
				vertical-align: middle;
			}
			.carShow ul li h4{
				font-size:16px;
			}
			.carShow ul li p{
				color:#999;
				margin:10px 0;
			}
			.carShow ul li p.green{
				color:#59B18B;
			}
			.info p .yuyue{
				display:inline-block;
				width:55px;
				height:24px;
				font-size:12px;
				line-height:24px;
				border:1px solid #D2332C;
				border-radius:3px;
				text-align:center;
				color:#D2332C;
				position:absolute;
				right:5px;
			}
			.info p a span img{
				width:15px;
				margin:0 5px;
				vertical-align: middle;
			}
	</style>
</head>
<body>
	<div class="mainBox bottom0">
		<div style="background: #35A8D7; height: 5px;"></div>
    	<div class="brandBox">
	       		<div class="scrollImg">
					<ul id="imgContainer" style="width: 1240px; left: 0px;">
						<li style="width: 310px;"><img class="img" src="${ctx }/resource/image/main/tbanner_1.png" alt=""></li>
						<li style="width: 310px;"><img class="img" src="${ctx }/resource/image/main/tbanner_2.png" alt=""></li>
						<li style="width: 310px;"><img class="img" src="${ctx }/resource/image/main/tbanner_3.png" alt=""></li>
						<li style="width: 310px;"><img class="img" src="${ctx }/resource/image/main/tbanner_4.png" alt=""></li>
						<li style="width: 310px;"><img class="img" src="${ctx }/resource/image/main/tbanner_5.png" alt=""></li>
					</ul>
				</div>
	     </div>
	     <div class="info">
				<p style="border-bottom: 1px solid #ddd;color: #D2332C;">
					<span>
						<img src="${ctx }/resource/image/main/u50.png">
					</span>咨询电话：<a style="font-weight: 800;" href="tel:024-52799255" class="ui-link"> <b style="color: #D2332C;font-weight: 800;">024-52799255</b></a>
					<a href="tel:024-52799299" class="yuyue">
						<span><img src="${ctx }/resource/image/main/uphone.png"></span>
						预约
					</a>
				</p>
				<p><span><img src="${ctx }/resource/image/main/u47.png"></span>工作时间： <b>24小时全天候</b> </p>
			</div> 
		<div class="carShow"> 
			<h4 style="font-size:16px;">车辆展示</h4>
			<ul>
				<li><img src="${ctx }/resource/image/main/6iKd5tCF-0.png" /></li>
				<li>
					<h4>金龙</h4>
					<p class="green">大型高一级</p>
					<p>座位数：51+1+1</p>
				</li>
			</ul>
			<ul>
				<li><img src="${ctx }/resource/image/main/6iKd5tCF-1.png" /></li>
				<li>
					<h4>宇通</h4>
					<p class="green">大型高一级</p>
					<p>座位数：51+1+1</p>
				</li>
			</ul>
			<ul>
				<li><img src="${ctx }/resource/image/main/6iKd5tCF-2.png" /></li>
				<li>
					<h4>丹东黄海</h4>
					<p class="green">大型高一级</p>
					<p>座位数：49+1+0</p>
				</li>
			</ul>
			<ul>
				<li><img src="${ctx }/resource/image/main/6iKd5tCF-1.png" /></li>
				<li>
					<h4>宇通</h4>
					<p class="green">大型高一级</p>
					<p>座位数：44+1</p>
				</li>
			</ul>
			<ul>
				<li><img src="${ctx }/resource/image/main/6iKd5tCF-33.png" /></li>
				<li>
					<h4>宇通</h4>
					<p class="green">大型高一级</p>
					<p>座位数：43+1</p>
				</li>
			</ul>
			<ul>
				<li><img src="${ctx }/resource/image/main/6iKd5tCF-4.png" /></li>
				<li>
					<h4>别克GL8</h4>
					<p class="green">商务车</p>
					<p>座位数：7+1</p>
				</li>
			</ul>
			<ul>
				<li><img src="${ctx }/resource/image/main/6iKd5tCF-4.png" /></li>
				<li>
					<h4>别克GL8</h4>
					<p class="green">商务车</p>
					<p>座位数：6+1</p>
				</li>
			</ul>
			<ul>
				<li><img src="${ctx }/resource/image/main/6iKd5tCF-5.png" /></li>
				<li>
					<h4>黄海瑞途</h4>
					<p class="green">小型高一级</p>
					<p>座位数：8+1</p>
				</li>
			</ul>
		</div>    	
    </div>
	<script type="text/javascript">
	$(function(){
		$("#imgContainer").scrollImage();
	})
	</script>
</body>
</html>