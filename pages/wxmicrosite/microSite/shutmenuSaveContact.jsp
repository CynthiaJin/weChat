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
<title>保存联系人</title>
<script src="<%=path%>/resouces/js/jquery-2.1.1.min.js" type="text/javascript"></script>
 <link rel="stylesheet" href="<%=path%>/resouces/css/style.css"> 
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
			<a id="logo" href="#" style="left:0px;"><img src="<%=path%>/resouces/image/bonclogo.png" align="top"></a>
		<a id="title" >保存联系人</a>
		<span id="list">	
			<a href="javascript:window.history.back();"><img src="<%=path%>/resouces/image/goback.png" align="top"></a>
		</span>
	</div>
	<div id="con">
			 <div class="content">   
         <h2>保存联系人</h2>
        
        <div class="toogle_wrap">
            <div class="trigger"><a href="#">将联系人细心存储下来</a></div>
            <div class="toggle_container">
			<p>
			         在此将联系人信息存储到通讯录中
			</p>
            </div>
        </div>    
</div>
	</div>
<div id="footer" style="height:0px;"></div>
<div class="footer_front" style="position:fixed;width:100%;height:100%;top:0px;left:0px;z-index:888;display:none;"><img src="<%=path%>/resouces/image/front.png" width="100%" height="100%"></div>
</div>
</body>
</html>