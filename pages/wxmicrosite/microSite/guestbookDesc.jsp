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
<!DOCTYPE html>
<html>
<head>
<title>留言内容</title>
<link href="<%=path%>/resouces/common/css/jquery.mobile-1.3.2.min.css"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="<%=path%>/resouces/jplayer/lib/circle-player/skin/circle.player.css">
<link href="<%=path%>/resouces/common/wx_css/common.css"
	rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=path%>/resouces/js/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="<%=path%>/resouces/js/jquery.mobile-1.3.2.min.js"></script>
<script type="text/javascript" src="<%=path%>/resouces/common/wx_js/common.js"></script>
<style type="text/css">
#actionList {
	width: 100%;
	height: 45px;
	border-bottom: 1px solid #dadada;
}
.text {
	float: left;
	margin-top: 11px;
	margin-left: 5%;
	width: 60%;
}
.textOne {
	color: #fc6e51;
	font-weight: bold;
	width: 12em;
}
.submit {
	clear: none;
	font-size: 0.9em;
	float: left;
	width: 30%;
	margin-top: 10px;
	margin-left: 2%;
}
#submit {
	height: 30px;
	font-size: 0.9em;
}
#sending img,#sendSuccess img,#sendFailed img {
	position: absolute;
	top: 50%;
	margin-top: -12.5px;
	left: 5%;
	width: 26px;
	height: 25px;
}
#msg div {
	float: left;
	margin-left: 5%;
}
</style>
<script type="text/javascript">
	function deleteMsg(){
		$("#sending").show();
		$("#messageLoading").html("正在忽略，请稍等...");
		var contactId = $("#contactId").val();
		$.ajax({
			type:"post",
			url:"<%=path%>/<%=path %>/guestbook!delectGuest.action",
			data:{'contentId':contactId},
			success:function(){
				window.location.href="<%=path %>/guestbook.action";
			}
		});
	}
	function toDialogue(){
		//$("#sending").show();
		//$("#messageLoading").html("联系客户中，请稍等...");
		var contactId = $("#contactId").val();
		window.location.href="<%=path %>/replay.action";

		//closePage();
	}
	function failedToBind(){
		$("#sendFailed").hide();	
	}
	function closePage(){
		WeixinJSBridge.invoke('closeWindow',{},function(res){
			
		});
	}
	$("documebnt").ready(function(){
		var h = $(".textOne").height();
		$("#actionList").css("height",h+20);
		$("#submit").css("margin-top",h-25);
	});
</script>
</head>
<body>
	<div data-role="page" id="pageOne" data-theme="d">
		<div class="ui-div-3" style="height: 100">
			<div class="right-center-4-1" style="float: left; width: 30%">
				<img style="vertical-align: middle;"
					src="<%=path%>/resouces/common/wx_img/fastreply.png" width="80"
					height="80">
			</div>
			<div class="right-center-4-2" style="float: left; width: 70%">
				
					<input type="hidden" id="managerId" name="managerId"
						value="<s:property value="fastreply.managerId" />">
					<input type="hidden" id="managerId" name="mopenId"
						value="<s:property value="fastreply.mopenId" />">
					<input type="hidden" id="managerId" name="copenId"
						value="<s:property value="fastreply.copenId" />">
					<div style="margin-bottom: 12px; margin-left: 20px">
						<span class="ui-font-2-7">客户姓名：</span> <span class="ui-font-2-1">
							 <s:property value="guestbookDetail.userName" />
						</span>
					</div>
					<div style="margin-left: 20px">
						<span class="ui-font-2-7">手机号码：</span> 
						 <span
							class="ui-font-2-1"> <s:property value="guestbookDetail.userNum" />
						</span>
					</div>
			</div>
			<div class="img-right">
				<a href="#" onclick="toDialogue()" data-role="none"> <img
					align="middle"
					src="<%=path%>/resouces/common/img/my_activity_04.png" width="40px"
					height="40px"></a>
			</div>
		</div>
		<div class="ui-div-4">
			<div class="ui-div-5-2 ui-font-2-8" style="float: left; width: 100%;"
				id="msg">
				<div>留言内容</div>
			</div>
		</div>
		<input id="contactId" type="hidden" name="contentId" value="<s:property value="guestbookDetail.contactId" />"/>
		<s:if test="guestbookDetail.msgKind==1 ">
			<div id="actionList">
			<div class="text" 
				id="te_<s:property value="guestbookDetail.contactId" />">
				<div class="textOne">
					<s:property value="guestbookDetail.msgInfo" escape="false"/>
				</div>
			</div>
			</div>
		</s:if>
		<s:if test="guestbookDetail.msgKind==2 ">
			<div id="actionList">
			<div class="text" onclick="showDesc(this.id)"
				id="te_<s:property value="guestbookDetail.contactId" />">
				<div class="textOne">
				<script type="text/javascript" src="<%=path%>/resouces/jplayer/dist/jplayer/jquery.jplayer.min.js"></script>
				<script type="text/javascript" src="<%=path%>/resouces/jplayer/lib/circle-player/js/jquery.transform2d.js"></script>
				<script type="text/javascript" src="<%=path%>/resouces/jplayer/lib/circle-player/js/jquery.grab.js"></script>
				<script type="text/javascript" src="<%=path%>/resouces/jplayer/lib/circle-player/js/mod.csstransforms.min.js"></script>
				<script type="text/javascript" src="<%=path%>/resouces/jplayer/lib/circle-player/js/circle.player.js"></script>
				<script type="text/javascript">
						$(document).ready(function(){
							var myCirclePlayer = new CirclePlayer("#jquery_jplayer_1",{
		  						//oga: "http://yinyueshiting.baidu.com/data2/music/123296359/13132725248400128.mp3?xcode=576ffc5afc6b0a315e765ddbfbf9dd4c19c56da7f7cc7a9f"
								oga:"<s:property value="guestbookDetail.msgInfo" />"
							    }, {
								cssSelectorAncestor: "#cp_container_1",
								swfPath: "<%=path%>/resouces/jplayer/dist/jplayer",
								wmode: "window",
								keyEnabled: true
							});
						});
				</script>
				<!-- The jPlayer div must not be hidden. Keep it at the root of the body element to avoid any such problems. -->
				<div id="jquery_jplayer_1" class="cp-jplayer"></div>

				<!-- The container for the interface can go where you want to display it. Show and hide it as you need. -->

				<div id="cp_container_1" class="cp-container" style="margin-left: -14px;">
					<div class="cp-buffer-holder"> <!-- .cp-gt50 only needed when buffer is > than 50% -->
						<div class="cp-buffer-1"></div>
						<div class="cp-buffer-2"></div>
					</div>
					<div class="cp-progress-holder"> <!-- .cp-gt50 only needed when progress is > than 50% -->
						<div class="cp-progress-1"></div>
						<div class="cp-progress-2"></div>
					</div>
					<div class="cp-circle-control"></div>
						<ul class="cp-controls">
						<li><a class="cp-play" tabindex="1">play</a></li>
						<li><a class="cp-pause" style="display:none;" tabindex="1">pause</a></li> <!-- Needs the inline style here, or jQuery.show() uses display:inline instead of display:block -->
					</ul>
				</div>
			</div> 	
			</div>
			<!--  div class="submit">
				<input type="button" id="submit" data-role="none" data-inline="true"
					value="忽略该条留言" data-ajax="false" onclick="deleteMsg();" />
			</div>-->
			</div>
		</s:if>
		<s:if test="guestbookDetail.msgKind==3 ">
			<div id="actionList">
			<div class="text" onclick="showDesc(this.id)"
				id="te_<s:property value="guestbookDetail.contactId" />">
				<div class="textOne">
					<img src="<s:property value="guestbookDetail.msgInfo" />" />
				</div>
			</div>
			<!--  div class="submit">
				<input type="button" id="submit" data-role="none" data-inline="true"
					value="忽略该条留言" data-ajax="false" onclick="deleteMsg();" />
			</div>-->
			</div>
		</s:if>
		<div id="msglist" style="display: block;">
			<div class="message" id="sending" style="display: none">
				<%-- <p><s:property value="msg"/></p> --%>
				<img src="<%=path%>/resouces/common/img/bundle/loading.gif" />
				<p id="messageLoading"> </p>
			</div>
			<div class="message" id="sendSuccess" style="display: none">
				<%-- <p><s:property value="msg"/></p> --%>
				<img src="<%=path%>/resouces/common/img/bundle/bundle_success.png" />
				<p id="messageSuccess">发送成功!</p>
			</div>
			<div class="message" id="sendFailed" style="display: none">
				<%-- <p><s:property value="msg"/></p> --%>
				<img src="<%=path%>/resouces/common/img/bundle/bundle_error.png" />
				<p id="messageErrorDesc">留言已失效，请忽略该条留言！</p>
			</div>
		</div>

	</div>
</body>
</html>