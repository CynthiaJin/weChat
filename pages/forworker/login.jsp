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
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1,userscale=no,maximum-scale=1.0,minimum-scale=1.0">
		<link href="${ctx }/resource/font-awesome-4.4.0/css/font-awesome.css" type="text/css" rel="stylesheet" />
		<link rel="stylesheet" href="${ctx }/resource/css/style.css" type="text/css" />
		<link rel="stylesheet" href="${ctx }/resource/css/main.css" type="text/css" />
		<link rel="stylesheet" href="${ctx }/resource/jquery-mobile/css/themes/default/jquery.mobile-1.4.5.min.css" type="text/css" />
		<script src="${ctx }/resource/js/jquery-1.10.1.min.js" type="text/javascript"></script>
		<script src="${ctx }/resource/jquery-mobile/js/jquery.mobile-1.4.5.min.js" type="text/javascript"></script>
		<title>员工查询</title>
		<style>
	
		</style>
	</head>
	<body data-role="page">
		<div class="box bindingpage">
		    <!--页头-->
		    <!-- <div class="topColor">
		        <div class="topTitle center">用户绑定</div>
		    </div>
		    <div class="clear"></div> -->
		    <div style="background:#35A8D7;height:5px;"></div>
		    <!--页头结束-->
		    <!--主体-->
		    <div class="mainBox bottom0">
		    	<!--<div class="bindingRoute" id="bindRoute">
					<ul>
						<li class="active">请输入手机号</li>
						<li>请输入验证码</li>
						<li>完成绑定</li>
					</ul>
				</div>-->
				<img class="img" src="${ctx }/resource/image/main/ad4.png" />
				<div class="binding bodyPadding">
					<div class="pageone active">
						<span><strong>员工查询</strong></span>
						<div class="phone">
							<i class="fa fa-car"></i>
							<input type="text" id="littleCode" name="littleCode" placeholder="请输入车小号" />
						</div>
						<div class="phone">
							<i class="fa fa-shield"></i>
							<select id="whichDay" name="whichDay" >
								<c:forEach items="${dayList }" var="day">
									<option value="${day }">${day }</option>
								</c:forEach>
							</select>
						</div>
						<a class="btn btn-success" href="javascript:submit();" id="submitBinding">点击查询</a>
					</div>
				</div>
		    </div>
		    <!--主体结束-->
		    <!--页脚
		    <div class="footer">
		    <div class="iconBox">
		        <div class="icon"><img src="../../resource/image/main/icon1.png"></div>
		        <p>城际巴士</p>
		    </div>
		    <div class="iconBox">
		        <div class="icon"><img src="../../resource/image/main/icon2.png"></div>
		        <p role="mid">商务车</p>
		    </div>
		    <div class="iconBox">
		        <div class="icon"><img src="../../resource/image/main/icon3.png"></div>
		        <p>机场快线</p>
		    </div>
		    </div>
		    <!--页脚结束-->	
		</div>
		
		<script type="text/javascript">
			//console.log('${dayList}');
			
			function submit(){			
				var littleCode = $("#littleCode").val();
				var whichDay = $("#whichDay").val();
				if(! littleCode||littleCode==""){
					alert("车小号不能为空");
					return;
				}
				
				//无此车号
				//稍后重试
				$.ajax({
					type:"post",
					url:"${ctx}/forworker/tologin.do?",
					data:{littleCode:littleCode},
					dateType:"json",
					success:function(e){
						if(e == 0){
							alert("无此车号!")
						}else{
							location.href="${ctx}/forworker/login.do?littleCode="+littleCode+"&whichDay="+whichDay;
						}
					},error:function(e){
						alert("登陆失败,请稍后重试!")
					}
				})
				
			//	location.href="${ctx}/bind/binding2.do?openid="+openid+"&phone="+phone+"&checkCode="+checkCode;
	// 			location.href="${ctx}/bind/getAccessToken.do?phone="+phone;
			}
		</script>
</body>
</html>
