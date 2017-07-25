<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML>
<html>
<head>
<link href="<%=path%>/resouces/css/m.css" rel="stylesheet" type="text/css" />
<title>我的套餐</title>
<script src="<%=path%>/resouces/js/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src="<%=path%>/resouces/js/manhuatoTop.1.0.js" type="text/javascript"></script>
<script src="<%=path%>/resouces/js/common.js" type="text/javascript"></script>
<link rel="stylesheet" href="<%=path%>/resouces/css/idangerous.swiper.css">
<link rel="stylesheet" href="<%=path%>/resouces/css/iscroll.css">
<link rel="stylesheet" href="<%=path%>/resouces/css/cate.css">
<link rel="stylesheet" href="<%=path%>/resouces/css/style.css">
<script src="<%=path%>/resouces/js/idangerous.swiper-1.9.1.min.js"></script>
<script src="<%=path%>/resouces/js/idangerous.swiper.scrollbar-1.2.js"></script>
<script src="<%=path%>/resouces/js/swiper.js"></script>
<style type="text/css">
						table, td{
					font:100% Arial, Helvetica, sans-serif; 
				}
				table{width:80%;border-collapse:collapse;margin:1em 0;}
				th, td{text-align:left;padding:.5em;border:1px solid #fff;}
				th{background:#328aa4 url(tr_back.gif) repeat-x;color:#fff;}
				td{background:#e5f1f4;}
				tr.even td{background:#e5f1f4;}
				tr.odd td{background:#f8fbfc;}
				
				th.over, tr.even th.over, tr.odd th.over{background:#4a98af;}
				th.down, tr.even th.down, tr.odd th.down{background:#bce774;}
				th.selected, tr.even th.selected, tr.odd th.selected{}
				
				td.over, tr.even td.over, tr.odd td.over{background:#ecfbd4;}
				td.down, tr.even td.down, tr.odd td.down{background:#bce774;color:#fff;}
				td.selected, tr.even td.selected, tr.odd td.selected{background:#bce774;color:#555;}
				
				/* use this if you want to apply different styleing to empty table cells*/
				td.empty, tr.odd td.empty, tr.even td.empty{background:#fff;}
		.tm_div{margin:0 auto;width:96%;max-width:500px;height:150px !important;margin-top:10px;overflow:hidden;position:relative;cursor:pointer;text-align:center;}
		
		
		
		.detail-list { width:100%; margin:0 auto; position: relative; z-index:999;}

		.shoplist{ float:left; margin-left:2.5%; width:95%; position: relative; z-index:9; background:#FFF; padding-top:1%;}
	/* 	.shoplist li { float:left; margin-left:2.5%; margin-top:2.5%; width:95%; padding-bottom:10px; border-bottom:1px dotted #ccc; } */
		.shoplist li { float:left; margin-left:0px; margin-top:2.5%; width:100%; padding-bottom:10px; border-bottom:1px dotted #ccc; }
		.shoplist li .leftimg{ text-align:center; display:block; float:left; width:25%; overflow:hidden}
		.shoplist li .righttxt{ display:block; color:#ff5400; text-align:left; overflow:hidden; float:right; width:71%}
		.shoplist li .shopname{ float:left; clear:both; display:block; line-height:80px; font-size:30px; width:100%; text-align:left; overflow:hidden; text-overflow:ellipsis; white-space:nowrap; }
		.shoplist li .shopadd{ float:left; clear:both; display:block; color:#333333; line-height:25px; font-size:13px; width:100%; text-align:left; overflow:hidden; text-overflow:ellipsis; white-space:nowrap; }
		.img-responsive { display: block;  max-width: 100%; height:100%; }
		.shoplist li .shopname{ font-size:24px; line-height:50px;}
		.shoplist li .leftimg{ text-align:center; display:block; float:left;  width:130px; height:130px overflow:hidden}
		.shoplist li .shopname{ font-size:17px; line-height:30px;}
		.shoplist li .leftimg{ text-align:center; display:block; float:left;  width:80px; height:80px overflow:hidden}
		.toptitle{float:left; margin-left:2.5%; margin-top:0px; width:95%;position: relative; z-index: 10; background:#ec5248; border-bottom:3px solid #d71f13; height:58px ;
 border-top-left-radius:3px; border-top-right-radius:3px;
 -moz-border-top-left-radius:3px; -moz-border-top-right-radius:3px;
 -webkit-border-top-left-radius:3px; -webkit-border-top-right-radius:3px;}

 /* 消除toPackage.css中样式 */
 		.toptitle{
 				background:#fff;
 				border-bottom:#fff;
 		}
 .shoplist li .shopadd {white-space:normal;}
   body{background: url(<%=path%>/resouces/image/bg.gif) repeat;}
</style>
</head>



<body>

<div id="frame">

	<div id="top">


			<a id="logo" href="#" ><img src="<%=path%>/resouces/image/bonclogo.png" align="top"></a>
		<a id="title" >我的套餐</a>

		<span id="list">

		<a href="javascript:window.history.back();"><img src="<%=path%>/resouces/image/goback.png" align="top"></a>

		    <a href="<%=basePath%>toLogin"><img src="<%=path%>/resouces/image/userlogin.png" align="top"></a> 

		

		</span>

	</div>

	<div id="con">

		<div style="margin:0 auto;position:relative;width:100%;max-width:500px;height:auto;margin-top:10px;">

			<img src="<%=path%>/resouces/image/bg.png" width=100% style="vertical-align:top">

			<div class="home-device">

				<div class="swiper-main">

					<div class="swiper-container swiper1">

						<div class="swiper-wrapper">

						

							<div class="swiper-slide"><a href="#"><img  id="pc_0" src="<%=path%>/resouces/image/package/package1.jpg" width=100%/></a></div>					

							<div class="swiper-slide"><a href="#"><img alt="" id="pc_1" src="<%=path%>/resouces/image/package/package2.jpg"  width=100%/></a></div>

						

							<div class="swiper-slide"><a href="#"><img alt="" id="pc_2" src="<%=path%>/resouces/image/package/package3.jpg"  width=100%/></a></div>

						

						</div>

					</div>

				</div>

				<div class="pagination pagination1"></div>

			</div>

		</div>

	<div class="tm_div" style="height:150px;">
				<table >
			<tr>
				<th width="30%">套餐名称：</th>
				<td>4G全国套餐</td>
			</tr>
			<tr>
				<th>月租：</th>
				<td>45元</td>
			</tr>			
			<tr>
				<th>流量：</th>
				<td>4G每月</td>
			</tr>			
			<tr>
				<th>本地通话时长</th>
				<td>100分钟市话</td>
			</tr>			
																																							
		</table>
	</div>
	
		<div class="detail-list">
				<div class="toptitle" style="margin-bottom:5px;">
			    	
			    	<img src="<%=path%>/resouces/image/wow4g.jpg" width="100%" height="76">
			    </div>
			    <ul class="shoplist" style="margin-top:10px;">
			    	<li>
			        	<span class="leftimg"><img src="<%=path%>/resouces/image/detail_04.jpg" width="256" height="256" class="img-responsive"></span>
			            <span class="righttxt">
			            	<span class="shopname">更多套餐请选择</span>
			                <span class="shopadd">套餐业务介绍：月租68元，4G流量，市话100分钟</span>
			            </span>
			        </li>
			    	<li>
			        	<span class="leftimg"><img src="<%=path%>/resouces/image/detail_04.jpg" width="256" height="256" class="img-responsive"></span>
			            <span class="righttxt">
			            	<span class="shopname">更多套餐请选择</span>
			                <span class="shopadd">套餐业务介绍：月租68元，4G流量，市话100分钟</span>
			            </span>
			        </li>
			    	<li>
			        	<span class="leftimg"><img src="<%=path%>/resouces/image/detail_04.jpg" width="256" height="256" class="img-responsive"></span>
			            <span class="righttxt">
			            	<span class="shopname">更多套餐请选择</span>
			                <span class="shopadd">套餐业务介绍：月租68元，4G流量，市话100分钟</span>
			            </span>
			        </li>
			    	<li>
			        	<span class="leftimg"><img src="<%=path%>/resouces/image/detail_04.jpg" width="256" height="256" class="img-responsive"></span>
			            <span class="righttxt">
			            	<span class="shopname">更多套餐请选择</span>
			                <span class="shopadd">套餐业务介绍：月租68元，4G流量，市话100分钟</span>
			            </span>
			        </li>
			    			    
			    </ul>		
			</div>
</div>	
<div id="footer" style="height:0px;"></div>
 <div class="menwrap">	
 	<div class="expan2" style="padding-top:3px;padding-left:3px;background:#fafafa;">
		 <div class="plug-div" >
		    <div class="plug-phone" > 
		     <div class="plug-menu themeStyle">
		      <span class="close" ></span>
		     </div>
		     <div class="themeStyle plug-btn plug-btn1 close">
		      <a href="<%=basePath%>mall"><span style="background-image: url(<%=path%>/resouces/image/ky_img/home.png);"></span></a>
		     </div>
		     <div class="themeStyle plug-btn plug-btn2 close">
		    <%--   <a href="tel:13888888888"><span style="background-image: url(<%=path%>/resouces/image/ky_img/tel.png);"></span></a> --%>
		      <a href="<%=basePath%>toTelephone"><span style="background-image: url(<%=path%>/resouces/image/ky_img/tel.png);"></span></a>
		     </div>
		     <div class="themeStyle plug-btn plug-btn3 close">
		      <a href="<%=basePath%>toContacts"><span style="background-image: url(<%=path%>/resouces/image/ky_img/aboutus.png);"></span></a>
		     </div>
		     <div class="themeStyle plug-btn plug-btn4 close">
		      <a href="<%=basePath%>toMessage"><span style="background-image: url(<%=path%>/resouces/image/ky_img/guestbook.png);"></span></a>
		     </div>
		     <div class="plug-btn plug-btn5 close"></div>
		    </div>
	 	 </div> 
 	</div> 
     <div class="btn3 clearfix" >
        <div class="menu">
            <div class="bt-name">沃看</div>
             <div class="sanjiao"></div>
             <ul class="new-sub margin10">
                <li class="pipe2"><a href="<%=basePath%>toPanelChartA">项目分析</a></li>
             	<li class="pipe1"><a href="<%=basePath%>toLineChartA">回款趋势</a></li>
                 <li class="pipe1"><a href="<%=basePath%>toPaymentScatterA">回款分布</a></li>  
                 <li class="pipe1"><a href="<%=basePath%>toTransferBarA">人员情况</a></li>              
                <li style="height:0px;"><img src="<%=path%>/resouces/image/arrow-down.png" width="16" height="16" style="position:absolute; bottom:-16px; text-align:center"></li>
            </ul>
        </div>
        <div class="menu">
            <div class="bt-name">沃查</div>
             <div class="sanjiao"></div>
             <ul class="new-sub margin10">
                <li class="pipe2"><a href="http://192.168.6.198/wxgw/table">回款考核表</a></li>          
                <li style="height:0px;"><img src="<%=path%>/resouces/image/arrow-down.png" width="16" height="16" style="position:absolute; bottom:-16px; text-align:center"></li>
            </ul>
        </div>
        <div class="menu" >
        	<div class="bt-name">沃联系</div>
        	<div class="sanjiao"></div>
            <ul class="new-sub margin10">
                <li class="pipe2"><a href="http://118.186.205.197/wxgw/interactAction">联系经理</a></li>
             <!--    <li class="pipe1"><a href="http://118.186.205.197/wxgw/guestbook">我的留言</a></li> -->
             	   <li class="pipe1"><a href="<%=basePath%>toLeavewords">我的留言</a></li>
                 <li class="pipe1"><a href="#">绑定界面</a></li>             
                <li style="height:0px;"><img src="<%=path%>/resouces/image/arrow-down.png" width="16" height="16" style="position:absolute; bottom:-16px; text-align:center"></li>
            </ul>
        </div>
	</div> 
</div>
 <script>
		$(".menu").click(function() {
		    if ($(this).hasClass("cura")) {
		        $(this).children(".new-sub").hide(); //当前菜单下的二级菜单隐藏
		        $(".menu").removeClass("cura"); //同一级的菜单项
		    } else {
		        $(".menu").removeClass("cura"); //移除所有的样式
		        $(this).addClass("cura"); //给当前菜单添加特定样式
		        $(".new-sub").hide(); //隐藏所有的二级菜单
		        $(this).children(".new-sub").show(); //展示当前的二级菜单
		    }
		});
</script>
<div class="footer_front" style="position:fixed;width:100%;height:100%;top:0px;left:0px;z-index:888;display:none;"><img src="<%=path%>/resouces/image/front.png" width="100%" height="100%"></div>
<script>

function beginTalk() {
	var t = window.location.toString();
	var newT = t.replace(new RegExp("&", "gm"), "<and>"); 
	window.open("italk/index_m.jsp@fs_AccessAddress=" + newT, "talk");
}
</script>
<script>
$('.tm_div').each(function(i){
	$('.tm_div').eq(i).css({'height': $('.tm_div').eq(0).width()});
});
$(function(){
    $(".plug-menu").click(function(){
    var span = $(this).find("span");

    if(span.attr("class") == "open"){
            span.removeClass("open");
            span.addClass("close");
            $(".plug-btn").removeClass("open");
            $(".plug-btn").addClass("close");

    }else{
            span.removeClass("close");
            span.addClass("open");
            $(".plug-btn").removeClass("close");
            $(".plug-btn").addClass("open");
    }
    });
    $(".plug-menu").on('touchmove',function(event){event.preventDefault();});

});

</script>
</body>
</html>