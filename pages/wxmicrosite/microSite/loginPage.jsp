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
<title>用户登陆</title>
<script src="<%=path%>/resouces/js/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src="<%=path%>/resouces/js/manhuatoTop.1.0.js" type="text/javascript"></script>
<script src="<%=path%>/resouces/js/common.js" type="text/javascript"></script>
<link rel="stylesheet" href="<%=path%>/resouces/css/idangerous.swiper.css">
<link rel="stylesheet" href="<%=path%>/resouces/css/iscroll.css">
<link rel="stylesheet" href="<%=path%>/resouces/css/cate.css">
<link rel="stylesheet" href="<%=path%>/resouces/css/style.css">
<script type="text/javascript">
$(function() {
	$.fn.manhuatoTop = function(options) {
		var defaults = {			
			showHeight : 150,
			speed : 1000
		};
		var options = $.extend(defaults,options);
		$("body").prepend("<div id='totop'><a></a></div>");
		var $toTop = $(this);
		var $top = $("#totop");
		var $ta = $("#totop a");
		$toTop.scroll(function(){
			var scrolltop=$(this).scrollTop();		
			if(scrolltop>=options.showHeight){				
				$top.show();
			}
			else{
				$top.hide();
			}
		});	
		$ta.hover(function(){ 		
			$(this).addClass("cur");	
		},function(){			
			$(this).removeClass("cur");		
		});	
		$top.click(function(){
			$("html,body").animate({scrollTop: 0}, options.speed);	
		});
	}
});

</script>
<style type="text/css">
		body {background: url(<%=path%>/resouces/image/bg.gif) repeat;}
</style>
</head>
<body  >
<div id="frame">
	<div id="top">
			<a id="logo" href="#" style="left:5px;"><img src="<%=path%>/resouces/image/bonclogo.png" align="top"></a>
		<a id="title" >用户登录界面</a>
		<span id="list">

	     	<a href="javascript:window.history.back();"><img src="<%=path%>/resouces/image/goback.png" align="top"></a>

		    <a href="#"><img src="<%=path%>/resouces/image/userlogin.png" align="top"></a> 

		

		</span>

	</div>

	<div id="con">

		<div id="login_div">

		<form name="form2" onKeyDown="onKeyDown()" method="post" action="toPersonal">

		<input name="t" id="t" value="" type="hidden">

		<div class="userline_info"></div>

		<div class="userline"><div class="userline_1">用户名&nbsp;&nbsp;&nbsp;&nbsp;</div><div class="userline_2"><input type="text" name="userId" id="userId" placeholder="请输入用户名/手机/邮箱"/></div><div class="userline_3"></div></div>

		<div class="userline_info" id="username_info"></div>

		<div class="userline"><div class="userline_1 c1">密码&nbsp;&nbsp;&nbsp;&nbsp;</div><div class="userline_2"><input name="userPassword" id="userPassword" type="password" placeholder="请输入密码"/></div><div class="userline_3"></div></div>

		<div class="userline_info" id="pass_info"></div>

		<div class="login_button" ><input type="submit"  value="登 录" style="width:100%;height:100%;background:none;border:none;color:#ffffff;font-size:16px;"></div>

		<div class="reg_div">

			<div class="reg_div_1"><!--a href="./getpwd.jsp" target="_self" style="color:#7A7A7A;">忘记密码？</a--></div>

			<div class="reg_div_2"><a href="<%=basePath%>toRegister" >立即注册</a></div>

		</div>

		</form>

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
        </div>
        <div class="menu">
            <div class="bt-name">沃查</div>
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