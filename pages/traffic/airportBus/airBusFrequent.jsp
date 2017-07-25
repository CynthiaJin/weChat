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
    <title>机场快线时刻表</title>
    <link rel="stylesheet" href="${ctx }/resource/css/style.css"/>
    <link rel="stylesheet" type="text/css" href="${ctx }/resource/css/main.css"/>
     <link rel="stylesheet" href="${ctx }/resource/font-awesome-4.4.0/css/font-awesome.css" />
    <link rel="stylesheet" href="${ctx }/resource/jquery-mobile/css/themes/default/jquery.mobile-1.4.5.min.css" />
      <script type="text/javascript" src="${ctx }/resource/js/jquery-1.10.1.min.js" ></script>
    <script type="text/javascript" src="${ctx }/resource/js/main.js" ></script>
    <script type="text/javascript" src="${ctx }/resource/jquery-mobile/js/jquery.mobile-1.4.5.min.js" ></script>
    <script type="text/javascript" src="${ctx }/resource/js/GeoUtils_min.js"></script>
     <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=ezofnKG8X1gQ29UuOUjQlo1Q"></script>
     <script type="text/javascript" src="${ctx }/resource/js/flow.js"></script>
	<style type="text/css">
			.header{
				height:60px;
				background: #000000;
				line-height:60px;
				padding:0 10px;
			}
			.list-bs li{
				width: 33.3%;
				height:60px;
				float: left;
				font-size:16px;
				color:#fff;
				text-align:center;
			}
			.list-bs li span{
				display:inline-block;
				height:60px;
				line-height:60px;
			}
			.list-bs li span.spleft{
				margin-left:5px;
			}
			.list-bs li img{
				width:30px;
				vertical-align:middle;
			}
			.title{
				padding:15px 5px;
			}
			.title p{
				width:33%;
				float:left;
				text-align:center;
				font-size:16px;
			}
			.title p img{
				width:100%;
				height:1px;
				vertical-align:middle;
			}
			.box-content{
				padding: 10px;
				background: #fff;
				margin-top:15px;
			}
			.box-content ul{
				list-style: none;
				background: #fff;
				border:1px solid #ddd;
				padding: 5px;
				position:relative;
				margin-bottom:10px;
			}
			.box-content ul li{
				width:100%;
				min-height:40px;
			}
			.box-content ul li p{
				/* width:33%; */
				float:left;
				text-align:center;
				font-size: 14px;
			}
			.box-content ul li p span{
				margin-left:5px;
			}
			.start{
				display: inline-block;
				background: #59b18b;
				width:25px;
				height: 25px;
				color: #fff;
				border-radius: 50%;
				line-height: 25px;
				text-align: center;
			}
			.end{
				display: inline-block;
				background: #d57c7b;
				width:25px;
				height: 25px;
				color: #fff;
				border-radius: 50%;
				line-height: 25px;
				text-align: center;
			}
			.shi{
				display: inline-block;
				background: #36a8d7;
				width:25px !important;
				height: 25px;
				color: #fff !important;
				border-radius: 3px;
				line-height: 25px;
				text-align: center;
			}
			.fir{
				width:47% !important;
				text-align:left !important;
				font-size:10px !important;
			}
			.gray{
				color:#ccc;
				margin-top:30px !important;
				font-size: 12px;
			}
			.price{
				font-size: 18px;
				margin-right:20px;
			}
			.tm{
				font-weight: 900;
				color:#666;
			}
			.buy{
				display: inline-block;
				width:50px;
				height:25px;
				color: #36A8D7;
				border:1px solid #36A8D7;
				border-radius: 5px;
				text-align: center;
				line-height: 25px;
			}
			.bot{
				margin-top:15px;
			}
			.right{
				margin-left:12%;
			}
			.topp{
				font-size:20px !important;
				margin-top:-10px;
			}
			.tim{
				width:100% !important;
				margin-top:10px;
				clear:both !important;
				text-align:left !important;
			}
			.tim span{
				width:20%;
				color:#666;
				margin-left:5px;
			}
			.dashed{
				box-sizing: border-box;
				border-bottom:1px dashed #ddd;
			}
			.btn-right{
				position:absolute;
				right:0;
				top:0;
			}
			.btn-right img{
				width:45px;
			}
			.wt{
				float:right;
				transform: rotate(45deg);
				position:absolute;
				right:0;
				top:8px;
				color:#fff;
				font-size:12px;
			}
			.clearfix:after {
				visibility: hidden;
				display: block;
				font-size: 0;
				content: " ";
				clear: both;
				height: 0;
			}
			.clearfix {
				zoom: 1;
			}
			.nullbox{
				clear:both;
			}
			.lf{
				margin-left:35px;
				width:80% !important;
				font-size:12px;
				display:none;
				word-break:break-all;
　　				word-wrap:break-word;
			}
			.dn{
				display:block;
			}
			.lf span{
				font-size:12px;
			}
			.jt{
				width:30px !important;
				float:right;
				margin-right:15px;
			}
			.jt img{
				width:30px;
			}
			.routa{
				transform: rotate(90deg);
				transition: 0.5s;
			}
			.bbyy{
				float:right !important;
			}
			.lf span{
				display:inline-block;
				width:18%;
			}
			@media screen and (max-width: 320px) {
	    	.lf span{
					display:inline-block;
					width:22%;
				}
			}
	</style>
</head>
<body>
	<div class="header">
			<ul class="list-bs">
				<li onclick="changeCar('0')">
					<span><img src="${ctx }/resource/image/inside/u192.png"/></span>
					<span class="spleft">全部</span>
				</li>
				<li onclick="changeCar('3')">
					<span><img src="${ctx }/resource/image/inside/u196.png"/></span>
					<span class="spleft">大巴</span>
				</li>
				<li onclick="changeCar('4')">
					<span><img src="${ctx }/resource/image/inside/u200.png"/></span>
					<span class="spleft">商务车</span>
				</li>
			</ul>
	</div>
	<div class="title">
    		<p><img src="${ctx }/resource/image/inside/u42.png"></p>
    		<p class="tf">全部</p>
    		<p><img src="${ctx }/resource/image/inside/u42.png"></p>
    </div>
    <div class="box-content" id="boss">
			<c:forEach items="${routeList }" var="route">
				<ul>
					<li onclick="jump(${route.parents.rouId})">
						<p class="fir"><span class="start">始</span><span>${route.parents.startSite }</span></p>
						<p class="bot"><span class="gray">最近</span></p>
						<p class="right"><span>￥</span><b class="price">${route.parents.price } </b></p>
					</li>
					<li class="dashed"  onclick="jump(${route.parents.rouId})">
						<p class="fir"><span class="end">终</span><span>${route.parents.endSite }</span></p>
						<p class="topp"><b class="tm">
						<c:choose>
							<c:when test="${ ! empty route.nearOne }">
								${route.nearOne.startTimeString}
							</c:when>
							<c:otherwise>
								无
							</c:otherwise>
						</c:choose>
						</b></p>
						<p class="bbyy"><span class="buy">购买</span></p>
					</li>
				<c:choose>
					<c:when test="${route.parents.businessType == '3' }">
					
						<li class="tim">
							<span class="shi">时</span>
							<c:forEach items="${route.childList }" var="child">
								<span>${child.startTimeString} </span>
							</c:forEach>
						</li>
						<div class="btn-right">
							<img src="${ctx }/resource/image/inside/btn-r.png">
							<span class="wt">大巴</span>
							
						</div>
					</c:when>
					<c:otherwise>
							<li class="tim">
									<span class="shi">时</span>
									<span>全部时刻表</span>
									<span class="jt"><img src="${ctx }/resource/image/inside/u97.png"></span>
									<p class="tim lf">
										<c:forEach items="${route.childList }" var="child">
											<span>${child.startTimeString }</span>
										</c:forEach>
									</p>
									<div class="nullbox"></div>
							</li>
							<div class="btn-right">
								<img src="${ctx }/resource/image/inside/btn-r.png">
								<span class="wt">商务车</span>
							</div>
					</c:otherwise>
					</c:choose>
				</ul>
			</c:forEach>
			
			
				
			
		
			
			<%-- <ul>
				<li>
					<p class="fir"><span class="start">始</span><span>桃仙机场</span></p>
					<p class="bot"><span class="gray">最近</span></p>
					<p><span>￥</span><b class="price">35.5</b></p>
				</li>
				<li class="dashed">
					<p class="fir"><span class="end">终</span><span>本溪</span></p>
					<p class="topp"><b class="tm">12:40</b></p>
					<p><span class="buy">购买</span></p>
				</li>
				<li class="tim">
						<span class="shi">时</span>
						<span>半点发车（早06:30-晚20:30）</span>
						<span class="jt"><img src="${ctx }/resource/image/inside/u97.png"></span>
						<p class="tim lf">
							<span>06:30</span><span>07:30</span>
							<span>08:30</span><span>09:30</span>
							<span>10:30</span><span>11:30</span>
							<span>12:30</span><span>13:30</span>
							<span>14:30</span><span>15:30</span>
							<span>16:30</span><span>17:30</span>
							<span>18:30</span><span>19:30</span><span>20:30</span>
						</p>
						<div class="nullbox"></div>
				</li>
				<div class="btn-right">
					<img src="${ctx }/resource/image/inside/btn-r.png">
					<span class="wt">商务车</span>
				</div>
			</ul>
			<ul>
				<li>
					<p class="fir"><span class="start">始</span><span>本溪</span></p>
					<p class="bot"><span class="gray">最近</span></p>
					<p><span>￥</span><b class="price">35.5</b></p>
				</li>
				<li class="dashed">
					<p class="fir"><span class="end">终</span><span>桃仙机场</span></p>
					<p class="topp"><b class="tm">12:40</b></p>
					<p><span class="buy">购买</span></p>
				</li>
				<li class="tim">
						<span class="shi">时</span>
						<span>整点发车（早05:00-晚19:00）</span>
						<span class="jt"><img src="${ctx }/resource/image/inside/u97.png"></span>
						<p class="tim lf">
							<span>05:00</span><span>06:00</span>
							<span>07:00</span><span>08:00</span>
							<span>09:00</span><span>10:00</span>
							<span>11:00</span><span>12:00</span>
							<span>13:00</span><span>14:00</span>
							<span>15:00</span><span>16:00</span>
							<span>17:00</span><span>18:00</span><span>19:00</span>
						</p>
						<div class="nullbox"></div>
				</li>
				<div class="btn-right">
					<img src="${ctx }/resource/image/inside/btn-r.png">
					<span class="wt">商务车</span>
				</div>
			</ul> --%>
			
		</div>
		<script>
			$(function(){
				$('.list-bs li').click(function(){
					var TF = $(this).find('.spleft').text();
					$('.title .tf').html(TF);
				})
				$(".tim").on("click", function () {
   				 	$(this).find('.jt').toggleClass('routa');
					$(this).find('.lf').toggleClass('dn');
				});
			})
			/* 	function styleChange(){
					$(function(){
						alert($(this).index());
						$(this).find('.jt').toggleClass('routa');
						$(this).find('.lf').toggleClass('dn');
					})
				} */
				

				
				/* $('#boss ul .tim').on('click',function(){
					alert(11)
					$(this).find('.jt').toggleClass('routa');
					$(this).find('.lf').toggleClass('dn');
				}); */
				
				function jump(data){
					//alert(data);
					window.location.href="${ctx}/airportbus/in/gobyfrequent.do?sId="+data;
				}
				
				
				function changeCar(data){
					//alert(13);
					$boss=$("#boss");
					$.ajax({
						url:"${ctx}/airportbus/showbycondition.do",
						method:"GET",
						data:{businessType:data},
						dataType:"json",					
						error:function(){
							alert("查询失败,请稍后重试");
						},
						success:function(data){
							console.log(data);						
							var str="";
							for(var i=0;i<data.length;i++){
								var parents=data[i].parents;
								var nearOne=data[i].nearOne;
								var children=data[i].childList;
								var businessType=parents.businessType;
								
								str+='<ul><li onclick="jump('+parents.rouId+')"><p class="fir"><span class="start">始</span><span>';
							
								str+=parents.startSite;
								str+='</span></p><p class="bot"><span class="gray">最近</span></p><p class="right"><span>￥</span><b class="price">';
								str+=parents.price;
								str+='</b></p></li><li class="dashed" onclick="jump('+parents.rouId+')"><p class="fir"><span class="end">终</span><span>';							
								str+=parents.endSite;
								str+='</span></p><p class="topp"><b class="tm">';
								if(nearOne != null){
									str+=nearOne.startTimeString;
								}else{
									str+="无";
								}
								
								str+='</b></p><p class="bbyy"><span class="buy">购买</span></p></li>';
								
								if(businessType == '3'){
									str+='<li class="tim"><span class="shi">时</span>';
									for(var j=0;j<children.length;j++){	
										str+='<span>';
										str+=children[j].startTimeString;
										str+='</span>';	
									}
									str+='</li><div class="btn-right"><img src="${ctx }/resource/image/inside/btn-r.png"><span class="wt">大巴</span></div>';
								}else{
									str+='<li class="tim" ><span class="shi">时</span><span>全部时刻表</span><span class="jt"><img src="${ctx }/resource/image/inside/u97.png"></span><p class="tim lf">';
									for(var j=0;j<children.length;j++){
										str+='<span>';
										str+=children[j].startTimeString;
										str+='</span>';								
										}
									str+='</p><div class="nullbox"></div></li><div class="btn-right"><img src="${ctx }/resource/image/inside/btn-r.png"><span class="wt">商务车</span></div>';	
									}		

								str+='</ul>';	
							}
							$boss.html(str);
							$(".tim").on("click", function () {
			   				 	$(this).find('.jt').toggleClass('routa');
								$(this).find('.lf').toggleClass('dn');
							});
						}
					})
				}
			
			
		
		</script>
</body>
</html>