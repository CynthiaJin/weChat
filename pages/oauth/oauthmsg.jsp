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
<!DOCTYPE >
<html>
	<body>
	<div style="text-align: center;">
			<div >  	
	            <div  style="margin-top: 20px;text-align: center;">           	
	            	<img style="text-align:center;" src="<%=path%>/resouces/image/bonc.png">
	            </div>  
	            <div style="margin-top: 20px;font-size: 14px">           	
	            	<p>微信帐号 让奇迹触手可及</p>
	            </div>  
	    </div>  
	    <div style="padding:5px;">
		    <div id="agree" style="margin-top: 10px;font-size: 14px ">
		    	该应用公众将使用基本资料登录该应用
		    </div>		    
	    	<div style="margin-top: 20px;">
	    		<button onclick="oauthBtn();" style="width:150px;background-image: url('<%=path%>/resources/image/auth.png');">授权</button>
	    	</div>
	    </div>  
	</div>
		<script type="text/javascript">
			function oauthBtn(){						
				window.location.href="<%=path %>/reqandres.action";			
			}		
		</script>
	</body>
</html>
