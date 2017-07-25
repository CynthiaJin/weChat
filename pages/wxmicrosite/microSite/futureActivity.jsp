<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
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
<title>微空间</title>
<script src="<%=path%>/resouces/js/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src="<%=path%>/resouces/js/manhuatoTop.1.0.js" type="text/javascript"></script>
<script src="<%=path%>/resouces/js/common.js" type="text/javascript"></script>
<script src="<%=path%>/resouces/js/idangerous.swiper-1.9.1.min.js"></script>
<link rel="stylesheet" href="<%=path%>/resouces/css/style.css">
<style type="text/css">
         body{background: url(<%=path%>/resouces/image/bg.gif) repeat;}
		.tm_write{float: left;width: 96%;height: auto;text-align: left;overflow: hidden;margin-left: 2%;line-height: 16px;font-size: 12px;color:#ffffff}
		.tm_pro{background-color:#ffffff}
</style>
</head>
<body>
<div id="frame">
	<div id="top">
			<a id="logo" href="#" style="left:5px;"><img src="<%=path%>/resouces/image/bonclogo.png" align="top"></a>
		<a id="title" >近期活动</a>
		<span id="list">
	     	<a href="javascript:window.history.back();"><img src="<%=path%>/resouces/image/goback.png" align="top"></a>
		    <a href="#"><img src="<%=path%>/resouces/image/userlogin.png" align="top"></a> 
		</span>
	</div>
	<div id="con">
		<div class="tm_div">
			<div class="tm_pro">
				<a href="#"><img src="<%=path%>/resouces/image/wow1.jpg" width="100%"></a>
			</div>
			<div class="tm_price">				
				<a style="float: left;width: 96%;height: auto;text-align: left;overflow: hidden;margin-left: 2%;line-height: 16px;font-size: 12px;color:#ffffff">联通最新优惠活动，凡活动期间，获得价值100元礼品一份。礼品数量有限，先到先得，送完即止。</a>
			</div>
		</div>
		<div class="tm_div">
			<div class="tm_pro">
				<a href="#"><img src="<%=path%>/resouces/image/wow2.jpg" width="100%"></a>
			</div>
			<div class="tm_price">				
				<a class="tm_write">联通最新优惠活动，凡活动期间，获得价值100元礼品一份。礼品数量有限，先到先得，送完即止。</a>
			</div>
		</div>
		<div class="tm_div">
			<div class="tm_pro">
				<a href="#"><img src="<%=path%>/resouces/image/wow3.jpg" width="100%"></a>
			</div>
			<div class="tm_price">				
				<a class="tm_write">联通最新优惠活动，凡活动期间，获得价值100元礼品一份。礼品数量有限，先到先得，送完即止。</a>
			</div>
		</div>
		<div class="tm_div">
			<div class="tm_pro">
				<a href="#"><img src="<%=path%>/resouces/image/wow4.jpg" width="100%"></a>
			</div>
			<div class="tm_price">				
				<a class="tm_write">联通最新优惠活动，凡活动期间，获得价值100元礼品一份。礼品数量有限，先到先得，送完即止。</a>
			</div>
		</div>
		<div class="tm_div">
			<div class="tm_pro">
				<a href="#"><img src="<%=path%>/resouces/image/wow5.jpg" width="100%"></a>
			</div>
			<div class="tm_price">				
				<a class="tm_write">联通最新优惠活动，凡活动期间，获得价值100元礼品一份。礼品数量有限，先到先得，送完即止。</a>
			</div>
		</div>
	</div>
	<div class="more" id="more">点击查看更多</div>

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
      <!--快捷按钮 开始-->
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

</div>
<script>
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

