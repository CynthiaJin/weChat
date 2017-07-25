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
<title>企业介绍</title>
<script src="<%=path%>/resouces/js/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src="<%=path%>/resouces/js/manhuatoTop.1.0.js" type="text/javascript"></script>
<script src="<%=path%>/resouces/js/common.js" type="text/javascript"></script>
<link rel="stylesheet" href="<%=path%>/resouces/css/idangerous.swiper.css">
<link rel="stylesheet" href="<%=path%>/resouces/css/iscroll.css">
<link rel="stylesheet" href="<%=path%>/resouces/css/style.css">
 <script src="<%=path%>/resouces/js/idangerous.swiper-1.9.1.min.js"></script> 
 <script src="<%=path%>/resouces/js/idangerous.swiper.scrollbar-1.2.js"></script> 
<script src="<%=path%>/resouces/js/swiper.js"></script>
<link href="<%=path%>/resouces/css/intocss/style.css" rel="stylesheet" type="text/css" />
<style type="text/css">
		.content {font-size:12px;margin-top:10px; }
</style>
<script type="text/javascript">
		$(function(){
			$(".toggle_container").hide(); 
			$(".trigger").click(function(){
				$(this).toggleClass("active").next().slideToggle("slow");
				return false;
			});
		})
</script>
</head>
<body>
<div id="frame">
	<div id="top">
			<a id="logo" href="#" style="left:5px;"><img src="<%=path%>/resouces/image/bonclogo.png" align="top"></a>
		<a id="title" >企业介绍</a>
		<span id="list">
			<a href="javascript:window.history.back();"><img src="<%=path%>/resouces/image/goback.png" align="top"></a>
		    <a href="<%=basePath%>toLogin"><img src="<%=path%>/resouces/image/userlogin.png" align="top"></a> 
		</span>
	</div>
	<div id="con">
			 <div class="content">
        <h1>东方国信</h1>
        <span class="subtitle_descr">欢迎来参观东方国信</span>
        <a href="#"  ><img src="<%=path%>/resouces/uploadpic/AD/bonc02.jpg"  alt="" title="" border="0" class="rounded" /></a>
        <img src="<%=path%>/resouces/image/intoim/shadow.jpg"  alt="" title="" border="0" class="shadow" />
    	<p class="main_text">
			       北京东方国信科技股份有限公司（以下简称“公司”）成立于1997年7月，2011年1月25日于深圳证券交易所创业板上市，股票简称“东方国信”，
			       股票代码为300166。目前公司注册资本25,962.0984万元，旗下有7个全资子公司，在全国31个省市设有办事处、研发基地和现场服务队伍。
			       公司是经国家发改委、工信部、财政部、商务部、国家税务总局联合审核评定的国家规划布局内重点软件企业，
			       被认证为国家级高新技术企业、北京市高新技术企业。
        </p>
        <h2>关于我们</h2>
        <ul class="lists">
        <li>公司介绍</li>
        <li>董事长致词</li>
        <li>我们的荣誉</li>
        </ul>
        <h2>企业新闻</h2>
        <div class="toogle_wrap">
            <div class="trigger"><a href="#">东方国信成功中标大数据项目 </a></div>
            <div class="toggle_container">
			<p>
			         奋力拼搏创佳绩，6月迎来新喜讯。在公司领导的正确决策和大力指导下，在联通事业部、战略规划中心、商务部精诚团结、共同努力下，
			         我公司在中国联通新疆分公司大数据项目的激烈竞争中脱颖而出，最终以商务分第一、技术分第一中标。 
			</p>
            </div>
        </div>
        <div class="toogle_wrap">
            <div class="trigger"><a href="#">东方国信HR年度会议</a></div>
            <div class="toggle_container">
            <ul class="lists">
            <li>团队组合</li>
            <li>开拓进取</li>
            <li>努力拼搏</li>
            </ul>
            </div>
        </div> 
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
</div>
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