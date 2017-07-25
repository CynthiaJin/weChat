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
<title>留言清单</title>
<link href="<%=path%>/resouces/common/css/jquery.mobile-1.3.2.min.css" rel="stylesheet" type="text/css" />
<link href="<%=path%>/resouces/common/wx_css/progress-bar.css" rel="stylesheet" type="text/css" />
<link href="<%=path%>/resouces/common/wx_css/common.css" rel="stylesheet" type="text/css" />
<link href="<%=path%>/resouces/common/wx_css/scrollbar-2.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=path%>/resouces/js/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="<%=path%>/resouces/js/jquery.mobile-1.3.2.min.js"></script>
<script type="text/javascript" src="<%=path%>/resouces/common/wx_js/iscroll.js"></script>
<script type="text/javascript" src="<%=path%>/resouces/common/wx_js/page.js"></script>
<script type="text/javascript" src="<%=path%>/resouces/common/wx_js/common.js"></script>
<script type="text/javascript" src="<%=path%>/resouces/common/wx_js/ichart.1.2.min.js"></script>
<script>
$(document).ready(function(){
    $("#thelist").on("tap",function(e){
    	var value = e.target.title;
    	var index = value.indexOf("_");
    	var contentId = value.substring(index+1);
    	if(contentId==""||contentId==null||contentId==undefined){
    		return;
    	}
    	window.location.href="<%=path %>/guestbook!showGuestDesc.action?contentId="+contentId;
    });
});
function getResult() {
	$("#loading").show();
	var pageNo = parseInt($("#pageNo").val())+1;
	var path = "<%=path%>/guestbook!guestbooklistAsyn.action?pageNo="+pageNo;
	$.ajax({
		type: "GET",
		url: path,
		dataType: "json",
		success: function(data) {
			$("#loading").hide();
			$("#thelist").empty();
			$("#pullUp").empty();
			$("#pullUp").html('<span class="pullUpIcon"></span><span class="pullUpLabel">上拉加载更多...</span>');
			if(data==""||data==null){
				var html='<div class="ui-bar ui-bar-u-2 ui-font-2" style="text-align: center;"><span>没有客户数据...</span></div>';
				$("#thelist").html(html);
				myScroll.scrollTo(0,0,0);
				myScroll.refresh();
				return;
			}
			showResult(data);
			$("#pageNo").val(pageNo);
			$("#pullUp").show();
			myScroll.scrollTo(0,0,0);
			myScroll.refresh();
		}
	});
}
//展示数据
function showResult(data) {
	var html = '';
	$.each(data,function(i,n){
		html+='<form action="" method="post"  id="fm'+n["contactId"]+'" name="fm'+n["contactId"]+'" data-ajax="false" style="margin:0px;padding:0px">';
		html+='<div class="tasktwo ui-bar ui-bar-u-2 customerView_'+n["contactId"]+'" title="customerView_'+n["contactId"]+'">';
		html+='<input type="hidden" id="deviceNumber_'+n["contactId"]+'" value="'+n["contactId"]+'">';
		html+='<div class="ui-bar-2-1 ui-font-2-9" title="customerView_'+n["contactId"]+'">'+n["userName"]+'</div>';
		html+='<div class="ui-bar-2-1" title="customerView_'+n["contactId"]+'">';
		html+='<span class="ui-font-2-1" title="customerView_'+n["contactId"]+'">'+n["userNum"]+'</span>';
		html+='<span title="customerView_'+n["contactId"]+'">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>';
		html+='<span class="ui-font-3" title="customerView_'+n["contactId"]+'">'+n["endTime"]+'</span>';
		html+='</div>';
		html+='<div class="right-center-5 img-arrow01_'+n["contactId"]+'" title="customerView_'+n["contactId"]+'" style="display: none;">';
		html+='<img title="customerView_'+n["contactId"]+'" align="middle" src="<%=path%>/resouces/common/wx_img/arrow_01.png" height="15px">';
		html+='</div>';
		html+='<div class="right-center-5 img-arrow02_'+n["deviceNumber"]+'" title="customerView_'+n["deviceNumber"]+'" style="display: block;">';
		html+='<img title="customerView_'+n["contactId"]+'" align="middle" src="<%=path%>/resouces/common/wx_img/arrow_02.png" height="15px">';
		html+='</div></div></form>';
	});
	$("#thelist").append(html);
}
/**
 * 滚动翻页 （自定义实现此方法）
 * myScroll.refresh();// 数据加载完成后，调用界面更新方法
 */
function pullUpAction() {
	var pageNo = parseInt($("#pageNo").val())+1;
	//var taskName = $("#taskName").val();
	var path = "<%=path%>/guestbook!guestbooklistAsyn.action?pageNo="+pageNo;
	$.ajax({
		type: "GET",
		url: path,
		dataType: "json",
		success: function(data) {
			if(data==""){
				document.getElementById('pullUp').className = "";
				document.getElementById('pullUp').querySelector('.pullUpLabel').innerHTML = '没有更多数据了...';
				return;
			}
			 
			showResult(data);
			$("#pageNo").val(pageNo);
			myScroll.refresh();
		}
	});
}
 
/**
 * 下拉刷新 （自定义实现此方法）
 */
function pullDownAction() {
	$("#pageNo").val(0);
	getResult();
}
</script>
</head>
<body>
	<div data-role="page" id="pageOne" data-theme="d">
        <div>
			<div class="ui-div-7-2 ui-font-2-8" style="float: left; width: 100%;"
				id="cust1">
				<span>留言清单</span>
			</div>
		</div>
        <div data-role="content" id="wrapper">
            <div id="scroller">
			    <div id="pullDown">
				    <span class="pullDownIcon"></span><span class="pullDownLabel">下拉刷新...</span>
			    </div>
			    <div id="thelist">
			        <s:if test="guestList.size()==0">
                        <div class="ui-bar ui-bar-u-2 ui-font-2" style="text-align: center;">
			                <span>没有消息数据...</span>
			            </div>
			        </s:if>
			        <s:else>
	                <s:iterator value="guestList" status="st" id="guset">
	                <form action="" method="post" id="" name="" data-ajax="false" style="margin:0px;padding:0px">
	                    <div class="tasktwo ui-bar ui-bar-u-2 customerView_<s:property value="#guset.contactId"/>" title="customerView_<s:property value="#guset.contactId"/>">
			                <div class="ui-bar-2-1 ui-font-2" title="customerView_<s:property value="#guset.contactId"/>"><s:property value="userName"/></div>
			                <div class="ui-bar-2-1" title="customerView_<s:property value="#guset.contactId"/>">
				                <span class="ui-font-2-1" title="customerView_<s:property value="#guset.contactId"/>"><s:property value="userNum"/></span>
				                <span title="customerView_<s:property value="#guset.contactId"/>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span> 
				                <span class="ui-font-3" title="customerView_<s:property value="#guset.contactId"/>"><s:property value="endTime"/></span>
			                </div>
			                <div class="right-center-5 img-arrow01_<s:property value="#guset.contactId"/>"  title="customerView_<s:property value="#guset.contactId"/>" style="display: none;">
				                <img title="customerView_<s:property value="#guset.contactId"/>" align="middle" src="<%=path%>/resouces/common/wx_img/arrow_01.png" height="15px">
			                </div>
			                <div class="right-center-5 img-arrow02_<s:property value="#guset.contactId"/>" title="customerView_<s:property value="#guset.contactId"/>" style="display: block;">
				                <img title="customerView_<s:property value="#guset.contactId"/>" align="middle" src="<%=path%>/resouces/common/wx_img/arrow_02.png" height="15px">
			                </div>
		                </div>
		            </form>
	                </s:iterator>
	                </s:else>
			    </div>

			    <div id="pullUp">
				    <span class="pullUpIcon"></span><span class="pullUpLabel">上拉加载更多...</span>
			    </div>
		    </div>
        </div>
    </div>
	<input type="hidden" id="pageNo" name="pageNo" value="${pageNo }">
	<input type="hidden" id="flag" name="flag" value='${flag}' />
</body>
</html>
