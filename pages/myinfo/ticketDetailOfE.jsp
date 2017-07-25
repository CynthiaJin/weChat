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
<!DOCTYPE html>
<html>
<head lang="en">
     <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="format-detection" content="telephone=no" />
    <title>电子票</title>
    <link rel="stylesheet" href="${ctx }/resource/css/style.css"/>
    <link rel="stylesheet" href="${ctx }/resource/css/main.css" />
    <link rel="stylesheet" href="${ctx }/resource/font-awesome-4.4.0/css/font-awesome.css" />
    <script type="text/javascript" src="${ctx }/resource/js/jquery-1.10.1.min.js" ></script>
    <script type="text/javascript" src="${ctx }/resource/jquery-mobile/js/jquery.mobile-1.4.5.min.js" ></script>
    <style>
   		.saoma span{
   				width:100% !important;
   				text-align:center !important;
   			}
   			.top-title{
   				background:#fff;
   				text-align:center;
   				line-height:40px;
   			}
   			.main-content{
   				width:96%;
   				margin:15px auto 5px;
   				background:#fff;
   				min-height:340px;
   				border:1px solid #ddd;
   				border-radius:5px;
   				position:relative;
   			}
   			/* iphone5 */
   			@media screen and (device-aspect-ratio: 40/71) {
   				.main-content{
	   				width:96%;
	   				margin:15px auto 5px;
	   				background:#fff;
	   				min-height:440px;
	   				border:1px solid #ddd;
	   				border-radius:5px;
	   				position:relative;
   				}
   				div.tab-show{
   					margin:20px auto;
   				}
   				.time{
   					margin:10px 0;
   				}
   				.ch{
   					margin:20px 0;
   				}
   				p.s1{
	   				border-bottom:1px solid #fff;
	   				line-height:40px;
   				}
	   			p.s2{
	   				line-height:60px;
	   				font-size:28px;
	   			}
	   			div.opa{
	   				width:100%;
	   				height:440px;
	   				position:absolute;
	   				top:0;
	   				z-index:10;
	   				background:rgba(0,0,0,0.2);
	   				display:none;
	   			}
	   			div.yz{
	   				width:120px;
	   				height:120px;
	   				margin:200px 140px;
	   				text-align:center;
	   				line-height:120px;
	   				font-size:30px;
	   				color:rgba(0,0,0,0.3);
	   				border:10px solid rgba(0,0,0,0.3);
	   				border-radius:50%;
	   			}
   			}
   			/* iphone6 */
   			@media only screen and (min-device-width: 375px) and (max-device-width: 667px){ 
   					.main-content{
		   				width:96%;
		   				margin:15px auto 5px;
		   				background:#fff;
		   				min-height:500px;
		   				border:1px solid #ddd;
		   				border-radius:5px;
		   				position:relative;
   					}
   					div.tab-show{
	   					margin:50px auto;
		   			}
	   				.time{
	   					margin:20px 0;
	   				}
	   				.ch{
	   					margin:30px 0;
	   				}
	   				p.s1{
		   				border-bottom:1px solid #fff;
		   				line-height:40px;
	   				}
		   			p.s2{
		   				line-height:60px;
		   				font-size:28px;
		   			}
		   			div.opa{
	   				width:100%;
	   				height:500px;
	   				position:absolute;
	   				top:0;
	   				z-index:10;
	   				background:rgba(0,0,0,0.2);
	   				display:none;
	   			}
		   			div.yz{
		   				width:120px;
		   				height:120px;
		   				margin:200px 160px;
		   				text-align:center;
		   				line-height:120px;
		   				font-size:30px;
		   				color:rgba(0,0,0,0.3);
		   				border:10px solid rgba(0,0,0,0.3);
		   				border-radius:50%;
		   			}
				}
				/* iphone6 plus */
				@media only screen and (min-device-width: 414px) and (max-device-width: 736px){
					.main-content{
						min-height:540px;
					}
					div.tab-show{
   						margin:50px auto;
	   				}
	   				.time{
	   					margin:20px 0;
	   				}
	   				.ch{
	   					margin:30px 0;
	   				}
	   				p.s1{
		   				border-bottom:1px solid #fff;
		   				line-height:40px;
	   				}
		   			p.s2{
		   				line-height:60px;
		   				font-size:28px;
		   			}
		   			div.opa{
	   				width:100%;
	   				height:540px;
	   				position:absolute;
	   				top:0;
	   				z-index:10;
	   				background:rgba(0,0,0,0.2);
	   				display:none;
	   			}
		   			div.yz{
		   				width:120px;
		   				height:120px;
		   				margin:200px 180px;
		   				text-align:center;
		   				line-height:120px;
		   				font-size:30px;
		   				color:rgba(0,0,0,0.3);
		   				border:10px solid rgba(0,0,0,0.3);
		   				border-radius:50%;
		   			}
				}
   			.time{
   				text-align:center;
   			}
   			.day{
   				font-size:16px;
   				font-weight:900;
   				line-height:30px;
   				color:blue;
   			}
   			.detail{
   				font-size:20px;
   				font-weight:900;
   				color:#000;
   			}
   			.tab-show{
   				width:90%;
   				margin:10px auto;
   				background:#35A8D7;
   				color:#fff;
   			}
   			.tab-show p span{
   				display:inline-block;
   				width:50%;
   				text-align:center;
   				box-sizing:border-box;
   			}
   			.s1{
   				border-bottom:1px solid #fff;
   				line-height:30px;
   				background:#fbbb0e;
   			}
   			.s2{
   				line-height:50px;
   				font-size:28px;
   			}
   			.bl{
   				border-right:1px solid #fff;
   			}
   			h3.ch{
   				text-align:center;
   				color:#01b100;
   				font-size:20px;
   			}
   			.car-card{
   				color:#f9361a;
   				border-bottom:1px solid #f9361a;
   			}
   			h3 b{
   				font-size:28px;
   				display:inline-block;
   				width:40px;
   				height:40px;
   				line-height:40px;
   				font-weight:normal;
   				border-radius:50%;
   				background:#00a7ff;
   				color:#fff;
   			}
   			.tips{
   				font-size:18px;
   				margin-top:50px;
   				text-align:center;
   				color:#000;
   				font-weight:900;
   			}
   			.pj{
   				width:96% !important;
   				height:30px;
   				line-height:30px;
   				margin:0 auto !important;
   				color:#fff !important;
   				background:#facb59 !important;
   				border:0 !important;
   				border-radius:5px !important;
   			}
   			.tel{
   				text-align:center;
   				margin-top:30px;
   			}
   			html,body,.box{
   				overflow:hidden;
   			}
   			.gray{
   				background:rgba(125,125,0,0.2);
   				color:#ccc;
   			}
   			.opa{
   				width:100%;
   				height:340px;
   				position:absolute;
   				top:0;
   				z-index:10;
   				background:rgba(0,0,0,0.2);
   				display:none;
   			}
   			.yz{
   				width:120px;
   				height:120px;
   				margin:135px 130px;
   				text-align:center;
   				line-height:120px;
   				font-size:30px;
   				color:rgba(0,0,0,0.3);
   				border:10px solid rgba(0,0,0,0.3);
   				border-radius:50%;
   			}
   			@-webkit-keyframes twinkling{    /*透明度由0到1*/
	    		0%{
			       opacity:0; /*透明度为0*/
			     }
			    100%{
			       opacity:1; /*透明度为1*/
			    }
			  }
			  #chi{
				-webkit-animation: twinkling 1s infinite ease-in-out; 
    			 }
    </style>
    <script type="text/javascript">
    	function myfunction(){
    		$("#cs2wm").hide();
    		var a=${tk.mobileState };
    		if(a=="2"){
    			$("#cs2wm").show();
    		}	
    	}
    	
    	
</script>
</head>
<body class="myOrder"  data-role="page" onload="myfunction()">
<div class="box">
    <!--页头-->
     <div style="background:#35A8D7;height:5px;"></div>
   
    <div class="mainBox bottom0">
    	<div class="top-title">
    		<h3>我的行程</h3>
    	</div>
    	<div class="main-content">
    		<p class="time day">${tk.rouName }</p>
    		<p class="time detail">${tk.finishTimeString }</p>
    		<div class="tab-show">
    			<p class="s1"><span class="bl">${tk.businessTypeString }</span><span>票价合计</span></p>
    			<p class="s2"><span class="bl">${tk.bookSeat }张</span><span>${tk.price }元</span></p>
    		</div>
    		<h3 class="ch">请<span class="car-card">${tk.carNo }</span>司机<b id="chi">验</b>票</h3>
    		<p class="tips">30分钟内有效，过期作废！</p>    		
    		
    		<div class="opa">
    			<div class="yz">已过期</div>
    		</div>
    	
    		
    	</div>
    		<!-- <button class="pj">评价行程</button> -->
    		<p class="tel">城际客运-雷锋号服务热线 400-998-1615</p>
  </div>


</div>
<script type="text/javascript">
	$(function(){
		var ifOutDate='${ifInDate}';
		//alert(ifOutDate);
		if(ifOutDate == "out"){
			$(".opa").show();
		}
	})
		
</script>
</body>
</html>