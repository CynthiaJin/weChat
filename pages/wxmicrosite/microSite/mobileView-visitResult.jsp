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
	<title>绑定手机号码</title>
	<head>
		<meta name="viewport"
			content="width=device-width, initial-scale=1.0, minimum-scale=0.5,user-scalable=0" />
		<link href="<%=path%>/resouces/common/css/jquery.mobile-1.3.2.min.css" 
			rel="stylesheet" type="text/css" />
		<link href="<%=path%>/resouces/demo/style.css" rel="stylesheet"
			type="text/css" />
		<link href="<%=path%>/resouces/common/wx_css/common.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="<%=path%>/resouces/js/jquery-2.1.1.min.js"></script>
		<script type="text/javascript" src="<%=path%>/resouces/js/jquery.mobile-1.3.2.min.js"></script>
		<style type="text/css">
		img {
	        position: absolute;
	        top: 50%;
	        margin-top: -12.5px;
	   		left: 5%;
	   		width: 26px;
	   		height: 25px;
        }
        .tip{
        	padding:20px;
        	height:20px;
        	line-height:20px;
        }
        .submit{
        	 
        	text-align:center;
        }
        .top {
        	background-color:#006400;
        	color:white;
        	margin-bottom:10px;
        	font-size:14px;
        }
        .font{
        	color:3300ff;
        }
        #warnDiv{
        	color:red;
        }
        #visitResultDiv{
        	font-size:14px;
        	color:#66B3FF;
        }
		</style>
		<script type="text/javascript">
			
			function mbundleView(type){
				var contWill = jQuery("#contWill").val();
				var visitContent = jQuery("#visitContent").val();
				visitContent = visitContent.replace(/[ ]/g,"");
				var holdPhone = jQuery("#holdPhone").val();
				var custNo = jQuery("#custNo").val();
				var staffId = jQuery("#staffId").val();
				 
		        if(contWill=="00"){ 
		        	$("#warnDiv").html("请选择续费意向！");
		        	return;
		        }else{
		        	$("#warnDiv").html("");
		        }
		        
		        $.ajax({
						type:"POST",
						url:"<%=path %>/mbundleView/mbundleVisit!detail.action",
						data:{'msg':type,'contWill':contWill,'visitContent':visitContent,'holdPhone':holdPhone,'custNo':custNo,'staffId':staffId},
						timeout:30000,
						success:function(data){
							var msg = data;
							var url = "<%=path %>/mbundleView/mbundleVisit!detail.action?msg=05&staffId="+staffId;
							window.location.href=url;
							//$("#visitResultDiv").html("表单提交成功！<br /><input type='button' value='返回！' onclick='javascript:history.go(-1);'/>");
						},
						error:function(xmlHttpRequest,error){
							$("#visitResultDiv").html("提交<br>系统繁忙，请稍后再试！");
						}
					});
		    }	      
		</script>
	</head>
	<body>
		<div data-role="page" id="pbundle" data-theme="d">
			<div data-role="header" data-theme="e">
		      	 <h1>
		      	 	回访记录填单
		      	 </h1>
		    </div>
		    <div class="top"> 
		      	  <s:iterator value="dataList" status="st">
		      	  	<s:if test="#st.index==0">
			    	  <table>
			              <tr>
				              <th> 
				                	客户名称：
				              </th>
				              <th align="left"> 
				                ${USER_NAME }<input type="hidden" name="custNo" id="custNo" value="${USER_NO}" />
				                <input type="hidden" name="staffId" id="staffId" value="${staffId}" />
				              </th>
				              <th>
				                	宽带号码：
				              </th>
				              <th> 
				                ${DEVICE_NUMBER }
				              </th>
			              </tr>
			          </table>
			        </s:if>
		          </s:iterator>
		    </div>
			<div data-role="content" >
				<form method="post" action="<%=path %>/mbundleView/mbundleView!mobileBundle.action">
				<div id="visitResultDiv">
					<div>
						<font>>>续费意向</font> ：
						<s:select list="contWillList" listKey="k" listValue="v" headerKey="00" headerValue="-请选择-" name="contWill" id="contWill"></s:select>
					</div>
					<div>
						<font>>>回访意见：</font>
						<textarea rows="3" cols="2" name="visitContent" id="visitContent">
						</textarea>
					</div>
					<!--  -->
					<div style="display:none;">
						<font>>>维系后联系电话：</font>
						<input type="text" name="holdPhone" id="holdPhone"  />
					</div>
					
					<div id="warnDiv" >
					</div>
					
					<div class="submit">
							<input type="button" id="submit" data-role="none" data-inline="true" value="提交表单"  
								data-ajax="false" onclick="mbundleView('04');"/>
					</div>			
				</div>
				</form>
			</div>		 
		</div>		
	</body>
</html>
