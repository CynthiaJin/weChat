<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE >
<html>
<head>
<%@ include file="../../common/common.jsp"%>
</head>
<body>
	<h3>File Upload:</h3>
	Select a file to upload:
	<br />
	<form action="${ctx}/bwebCommon/upload.do?json" method="post" id="form"
		enctype="multipart/form-data">
		<input type="file" name="file" size="50" /> <br /> <input
			type="button" onclick="upload();"  value="Upload File" />
	</form>
	<img id="img" alt="" src="" width="100px;" height="100px">
	<script type="text/javascript">
	function upload(){
// 		$.ajax({
// 		    url: '${ctx}/bwebCommon/upload.do',
// 		    type: 'POST',
// 		    cache: false,
// 		    data: new FormData($('#form')[0]),
// 		    processData: false,
// 		    contentType: false
// 			,success:function(data){
// 				alert(data);
// 				alert($.toJSON(data));
// 			},error:function(e){
// 				alert(e);
// 			}});

		 var formData = new FormData($('#form')[0]);
		    $.ajax({
		    	url: '${ctx}/bwebCommon/upload.do?json',  //server script to process data
		        type: 'POST',
		        dataType:"json",
		        xhr: function() {  // custom xhr
		            myXhr = $.ajaxSettings.xhr();
		            if(myXhr.upload){ // check if upload property exists
		                myXhr.upload.addEventListener('progress',function(){}, false); // for handling the progress of the upload
		            }
		            return myXhr;
		        },
		        //Ajax事件
		        beforeSend: function(){
		        	
		        },
		        success: function(data){
		        	alert($.toJSON(data));
		        	$("#img").attr("src",data.webPath);
		        },
		        error: function(){
		        	
		        },
		        // Form数据
		        data: formData,
		        //Options to tell JQuery not to process data or worry about content-type
		        cache: false,
		        contentType: false,
		        processData: false
		    });
	}
	</script>
</body>
</html>
