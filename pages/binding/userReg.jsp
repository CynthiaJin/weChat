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
		<link href="${ctx}/resource/font-awesome-4.4.0/css/font-awesome.css" type="text/css" rel="stylesheet" />
		<link rel="stylesheet" href="${ctx}/resource/css/main.css" type="text/css" />
		<link rel="stylesheet" href="${ctx }/resource/css/style.css" type="text/css" />
		<link rel="stylesheet" href="${ctx }/resource/jquery-mobile/css/themes/default/jquery.mobile-1.4.5.min.css" type="text/css" />
		<script src="${ctx}/resource/js/jquery-1.10.1.min.js" type="text/javascript"></script>
		<script src="${ctx }/resource/jquery-mobile/js/jquery.mobile-1.4.5.min.js" type="text/javascript"></script>
		<title>用户信息完善</title>	
	</head>
	<body data-role="page">
		<div class="box bindingpage">
		    <!--页头-->
		   <!--  <div class="topColor">
		        <a class="topIcon" onclick="javascript:window.history.back();" data-transition="slide" data-direction="reverse"><img class="img" src="../../resource/image/main/backup.png"></a>
		        <div class="topTitle">用户信息完善</div>
		        <a class="topIcon2"><img class="img" src="../../resource/image/main/user.png"></a>
		    </div>
		    <div class="clear"></div> -->
		    <div style="background:#35A8D7;height:5px;"></div>
    		<!-- <a class="topIcon" href="#userDetail"><i class="fa fa-user"></i></a> -->
		    <!--页头结束-->
		    <!--主体-->
		    <div class="mainBox userReg">
				<form class="userReg" id="userReg" action="${ctx}/business/wUser/updateInfo.do">
<!-- 					<div> -->
<!-- 						<i class="fa fa-user"></i> -->
<%-- 						<input type="text" value="${access_token }||${openid }" placeholder="姓名"/> --%>
<!-- 					</div> -->
					<div>
						<i class="fa fa-user"></i>
						<input type="text" name="wNickName" id="wNickName"  value="${wUser.wNickName }" placeholder="姓名"/>
					</div>
					<div>
						<i class="fa fa-phone"></i>
						<input type="text" name="wPhone" id="wPhone" value="${wUser.wPhone }" placeholder="电话" />
					</div>
					<div>
						<i class="fa fa-credit-card"></i>
						<input type="text" name="wCardId" id="wCardId" value="${wUser.wCardId }" placeholder="身份证号" />
					</div>
					
					<div class="radio">
						<input type="radio" name="wSex" id="sex" value="1" checked="checked" /><span>男</span>
						<input type="radio" name="wSex" id="sex" value="2"  /><span>女</span>
					</div>
										
<!-- 					<div class="seperate" id="date"> -->
<!-- 						<i class="fa fa-calendar"></i> -->
<!-- 						<i class="placeholder">出生年月</i> -->
<!-- 						<input type="date" name="birthday"  /> -->
<!-- 					</div> -->
<!-- 					<div> -->
<!-- 						<i class="fa fa-mail-forward"></i> -->
<!-- 						<input type="email" name="email" placeholder="邮箱" /> -->
<!-- 					</div> -->
<!-- 					<div class="seperate"> -->
<!-- 						<i class="fa fa-leaf"></i> -->
<!-- 						<input type="text" name="zhiye" placeholder="职业" /> -->
<!-- 					</div> -->
<!-- 					<div> -->
<!-- 						<i class="fa fa-qq"></i> -->
<!-- 						<input type="number" name="qq" placeholder="qq" /> -->
<!-- 					</div> -->
					<div>
						<i class="fa fa-flag"></i>
						<input type="text" name="wCountry" id="wCountry" value="${wUser.wCountry }" placeholder="国家" />
					</div>
					<div>
						<i class="fa fa-map-marker"></i>
						<input type="text" name="wProvince" id="wProvince" value="${wUser.wProvince }" placeholder="省份" />
					</div>
					<div>
						<i class="fa fa-map-pin"></i>
						<input type="text" name="wCity" id="wCity" value="" placeholder="城市" />
					</div>
					<div class="radio">
						<input type="radio" name="wUserType" id="wUserType" value="2" checked="checked" /><span>4G用户</span>
						<input type="radio" name="wUserType" id="wUserType" value="1" /><span>3G用户</span>
						<input type="radio" name="wUserType" id="wUserType" value="0" /><span>普通用户</span>
					</div>
<!-- 					<div class="seperate"> -->
<!-- 						<i class="fa fa-pencil"></i> -->
<!-- 						<textarea placeholder="签名"></textarea> -->
<!-- 					</div> -->
					<a class="btn blue" href="javascript:tijiao()" >提交</a>					
					
				</form>
			</div>
			
			<div data-role="popup" id="myPopup" class="ui-content" data-overlay-theme="b">
		      	<span>信息完善成功</span>
		    </div>
		    <div data-role="popup" id="myPopup2" class="ui-content" data-overlay-theme="b">
		      	<span>信息完善失败</span>
		    </div>
		</div>
		<script type="text/javascript">
			$("#date>input").focus(function(){
				$(this).parent().children('.placeholder').hide();
			});
			//用户信息提交
			function tijiao(){
				if($("#wNickName").val()==""){
					alert("请输入姓名");
					return;
				}
				if($("#wPhone").val()==""){
					alert("请输入电话");
					return;
				}
				if($("#wCardId").val()==""){
					alert("请输入身份证号");
					return;
				}
				$.ajax({
					url:"${ctx}/wUser/in/updateInfo.do?json",
					data:$("#userReg").serialize(),
					dataType:"json",
					type:"POST",
					success:function(data){
						if(data==0){
							$("#myPopup").popup('open');
						}else{
							$("#myPopup2").popup('open');
						}
					},error:function(){
					}
				});
			}
			
		</script>
	</body>
</html>
