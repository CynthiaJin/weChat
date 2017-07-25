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
    <title>校园通</title>
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
				margin-left:25px;
				padding-top:6px;
			}
			.carShow ul li img{
				width:115px;
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
			h2{
				padding:5px;
			}
			img{
				width:300px;
				height:200px;
				margin:10px 0;
			}
			p{
				text-indent:24px;padding:5px;
			}
			h3{
				margin:10px 0;
			}
			.line{
				width:100%;
				height:2px;
				background:#ddd;
			}
			.code{
				width:300px;
				height:300px;
			}
	</style>
</head>
<body style="background:#fff;padding:10px;">
		<h2><span><small>工学院之</small><big style="font-style:italic;">我的出行</big></span></h2>
	<p style="text-indent:24px;padding:10px;">辽宁城际客运有限公司将会为工学院的同学们提供最舒适的车辆、最优秀的驾驶员、最安全的保障以及最专业的服务。</p>
	<p style="text-indent:24px;padding:5px;">咨询电话：024-52799255</p>
	<h3><ins>省内出行</ins></h3>
	<img  src="http://i.niupic.com/images/2016/03/30/6vl4jT.jpg" height="100%" width="100%">
	<p>沈阳、铁岭、阜新、盘锦、辽阳、鞍山、营口、本溪，城际是您往返家与学校之间最可靠的朋友。</p>
	<h3><ins>机场接送</ins></h3>
	<img  src="http://i.niupic.com/images/2016/03/30/Wc4xqk.jpg" height="100%" width="100%">
	<p>如果您有乘坐航班的需要，那么城际就是您最贴心的助手。无论是订票、候机还是接待，城际都将为您提供最贴心的服务。</p>
	<h3><ins>校园包车</ins></h3>
	<img  src="http://i.niupic.com/images/2016/03/30/QFCr0E.jpg" height="100%" width="100%">
	<p>说出您想去的地方，城际陪您去看看。</p>
	<h3><ins>校园班车</ins></h3>
	<img  src="http://i.niupic.com/images/2016/03/30/tUsxOJ.jpg" height="100%" width="100%">
	<p>还在为早课迟到而烦恼吗？还在为没时间吃早饭而烦恼吗？还在为浪费在路上的时间而烦恼吗？校园班车，从您的宿舍到课堂，只需要2分钟！</p>
	<div class="line"></div>
	<h2><span><small>工学院之</small><big style="font-style:italic;">我的旅游</big></span></h2>
	<p>作为春节假期后的首个正式小长假，我等对此可是盼望已久啊~！熬完本周，同学们又可以尽情地玩耍啦~！吹着春风，踏着青草，城际旅游陪您度过一个愉快的小长假哟~！</p><p>咨询电话：024-58217688/58217677</p>
	<h3><ins>吃--新鲜的草莓</ins></h3>
	<img  src="http://i.niupic.com/images/2016/03/30/W25uCj.jpg" height="100%" width="100%">
	<h3><ins>看--初春的美丽</ins></h3>
	<img  src="http://i.niupic.com/images/2016/03/30/q3AHrZ.jpg" height="100%" width="100%">
	<h3><ins>玩--疯狂的游乐</ins></h3>
	<img  src="http://i.niupic.com/images/2016/03/30/8LtqP6.jpg" height="100%" width="100%">
	<h3><ins>洗--健康的温泉</ins></h3>
	<img  src="http://i.niupic.com/images/2016/03/30/xUUPBd.jpg" height="100%" width="100%">
	<h3><ins>学--知识的力量</ins></h3>
	<img  src="http://i.niupic.com/images/2016/03/30/CK1gst.jpg" height="100%" width="100%">
	<div class="line"></div>
	<h2><span><small>工学院之</small><big style="font-style:italic;">我的快递</big></span></h2>
	<p>“信誉第一、诚信服务、高效快捷、实现双赢”</p>
	<img  src="http://i.niupic.com/images/2016/03/30/eUCSbO.jpg" height="100%" width="100%">
	<p>沈阳五爱、三好街、沈阳站、沈阳北站、珠林桥、龙之梦；抚顺南站、抚顺北站、石化大学、工学院。就近发货，送货上门，只需要2小时左右的时间，就是这么快！</p><p>咨询电话：024-58217076、58217172、58217131</p>
	
	<h2><span><small>工学院之</small><big style="font-style:italic;">我的实训</big></span></h2>
	<p>辽宁城际客运有限公司携手辽宁省道路运输协会、北京东方国信互联网巨头，为沈阳工学院提供全方位、专业化的师生服务。</p>
	<h3><ins>实训基地</ins></h3>
	<img  src="http://i.niupic.com/images/2016/03/30/DpYV3o.jpg" height="100%" width="100%">
	<p>全省500余家从事道路运输企业将会为您提供参观学习的实训基地。</p>
	<h3>人才推荐</h3>
	<img  src="http://i.niupic.com/images/2016/03/30/S8L6Wu.jpg" height="100%" width="100%">
	<p>拥有10家全资子公司，业务遍及全球，5000多名员工的互联网巨头—东方国信BONC将为您提供全方位的人才培养计划。</p></br>
	
	<div align="center">
		<h3>关注“雷锋号”，精彩校园生活</h3>
	<img  src="http://i.niupic.com/images/2016/03/30/K7Jv7B.jpg" height="100%" width="100%" class="code">
	</div>
	
</body>
</html>