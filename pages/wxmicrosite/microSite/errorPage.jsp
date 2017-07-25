<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE >
<html>
<head>
<title>系统提示</title>
<link href="<%=path%>/resouces/common/css/jquery.mobile-1.3.2.min.css" rel="stylesheet" type="text/css" />
<link href="<%=path%>/resouces/common/wx_css/common.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=path%>/resouces/js/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="<%=path%>/resouces/js/jquery.mobile-1.3.2.min.js"></script>
<script type="text/javascript" src="<%=path%>/resouces/common/wx_js/ichart.1.2.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#submit").on("tap",function(){
		window.location.href="<%=path %>/guestbook.action";
	});
});
</script>
</head>
<body>
    <div style="background: #fff;">
    <div style="text-align: center;background: #fff;margin-bottom: 20px">
        <img title="customerView" align="middle" src="<%=path%>/resouces/common/wx_img/prom_01.jpg">
    </div>
    <div style="background: #fff;margin-bottom: 20px">
        <div style="width: 80%;margin-left: auto;margin-right: auto;">
        <span class="ui-font-2-6" >留言回复失败！</span>
        </div>
    </div>
	<div  style="width: 95%;margin-left: auto;margin-right: auto;">
		<input type="button" id="submit" data-role="none" data-inline="true"
			value="点击返回留言清单界面" data-ajax="false" />
	</div> 
	</div>
</body>
</html>