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

<meta charset="UTF-8">

<meta name="keywords" content="" />

<meta name="description" content="" />

<meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0'/>

<meta name="author" content=""/>

<meta name="copyright" content=""/>



<link href="<%=path%>/resouces/css/m.css" rel="stylesheet" type="text/css" />

<title>用户留言</title>

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

	  

	<div id="con">

		<div id="login_div">
		
		

		
		
				<div style="float:left;width: 100%;">
						<img   src="<%=path%>/resouces/image/sorry.jpg" width=100% heigth="100%" />					
				</div>	
		        
			<div class="userline" style="background-color:#CBF1D3;height:80px;">
					<p style="color:#FC5DBF;font-size:16px;padding:5px;">您权限不够</p>
					
			</div>


		<div class="userline_info" id="username_info"></div>
		
		<div >
			
				
				
					
					<div class="login_button" ><input type="button"  value="返回初始页面" style="width:100%;height:100%;background:none;border:none;color:#ffffff;font-size:16px;"></div>
		
		
         </div>
		
		
		
		
		
		</div>
	</div>

	




<div id="footer" style="height:0px;"></div>

 
<div class="footer_front" style="position:fixed;width:100%;height:100%;top:0px;left:0px;z-index:888;display:none;"><img src="<%=path%>/resouces/image/front.png" width="100%" height="100%"></div>





</div>



</body>

</html>