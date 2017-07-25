<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head lang="en">
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="format-detection" content="telephone=no" />
<title>订单评价</title>
<link rel="stylesheet" href="${ctx }/resource/css/style.css" />
<link rel="stylesheet" href="${ctx }/resource/css/main.css" />
<link rel="stylesheet"
	href="${ctx }/resource/font-awesome-4.4.0/css/font-awesome.css" />
<link rel="stylesheet"
	href="${ctx }/resource/jquery-mobile/css/themes/default/jquery.mobile-1.4.5.min.css" />
<%@ include file="../../common/common.jsp"%>
<script type="text/javascript"
	src="${ctx }/resource/jquery-mobile/js/jquery.mobile-1.4.5.min.js"></script>
<style>

/* .inputBox textarea{height:100px !important;}
    	.editLost .inputBox{width:100%;background:#fff;height:40px;line-height:40px;}
    	.editLost .inputBox.textBox{height:100px;}
    	.editLost .inputBox>span{float:left;width:25%;}
    	.editLost .inputBox>input{border:0px;outline:none;box-shadow:none;float:left;border-bottom:1px solid #dcdcdc;width:73%;height:98%;}
    	.editLost .inputBox>input:focus{border:0px;box-shadow:none;outline:none;border-bottom:1px solid #dcdcdc;}
    	 */
    	 .mainBox .orderMessage>ul>li.bigger>img{
    	 	width:40px !important;
    	 	height:40px !important;
    	 	margin-top:6px;
    	 }
</style>
</head>
<body data-role="page">
	<div class="box airportOrder">
		<!--页头-->
		<%-- <div class="topColor">
        <a class="topIcon" onclick="javascript:window.history.back();" data-transition="slide" data-direction="reverse"><img class="img" src="${ctx }/resource/image/main/backup.png"></a>
        <div class="topTitle">发布失物招领</div>
        <a class="topIcon2" href="#userDetail1" data-position="right" data-overlay-theme="b" ><img class="img" src="${ctx }/resource/image/main/user.png"></a>
    </div>
    <div class="clear"></div> --%>
		<div style="background: #35A8D7; height: 5px;"></div>
		<!--     <a class="topIcon" href="#userDetail"><i class="fa fa-user"></i></a> -->
		<!--页头结束-->
		<!--主体-->		
		<div class="mainBox bottom0">			
			<div class="orderMessage">				
				<ul>	    		
					
    				<li class="input"><img class="img"
						src="${ctx }/resource/image/main/6bnZ6jCy-0.png"></img> <span>订单号</span>
						<span>${carComment.corrIdVarchar }</span>						

					
				<li class="input"><img class="rname img"
						src="${ctx }/resource/image/main/6ZNk5thp-1.png"></img> <span>服务态度</span>
						<span>${carComment.serviceScore }分</span>
						
				</li>
				<li class="input"><img class="rname img"
						src="${ctx }/resource/image/main/6ZNk5thp-2.png"></img> <span>车内卫生</span>
						<span>${carComment.cleanScore }分</span>
						
				</li>
				
				<li class="input"><img class="rname img"
						src="${ctx }/resource/image/main/6ZNk5thp-3.png"></img> <span>舒适程度</span>
						<span>${carComment.comfortScore }分</span>
					
				</li>
					<li class="input"><img class="img"
						src="${ctx }/resource/image/main/6ZNk5thp-4.png"></img> <span>评价</span>
						<span>${carComment.content }</span>
					</li>
					<li class="bigger">
						<c:choose>
    						<c:when test="${!empty pic.linkAddress}">
    							<img src="${pic.linkAddress}"/>  
    						</c:when>
    						<c:otherwise>
    							<img class="big" src="${ctx}/resource/image/main/nopic.jpg"/ style="">  
    						</c:otherwise>
    					</c:choose>					
					</li>
				</ul>
			</div>
		</div>
	</div>
	
	<script type="text/javascript">
	
	</script>
				<%-- <input type="hidden" id="picUrl" value="图片地址" name="picUrl" form="commentForm"  />
			
			<div class="picUpload">
			    		<span>上传图片</span>
			    		<div id="picUp">
				    		<a href="#upload1" data-rel="popup" data-position-to="window">
				    			<i class="fa fa-plus"></i>
							</a>				    		
			    		</div>
			   </div>
		
		<div data-role="popup" data-overlay-theme="b" id="upload1" class="ui-content fileUp">
	    	<form method="post" id="form0" enctype="multipart/form-data" >
				<input type="text" name="pic0" id="pic0" size="50" form="commentForm"/>	
				<input type="file" name="file" size="50" id="file" data-role="none"/> <br />
				<a class="btn blue" onclick="upload('#form0','#upload1');">上传</a>
			</form>
	    </div>
			
			
			<div class="inputBtn" id="inputBtn" style="display:none">
	    		<input type="text" id="handWrite" placeholder="" />
	    		<span class="orange" id="comment">确认</span>
	    	</div>    	
	    	
	    	
	    	
	    	
	    	
			<form id="commentForm" action="${ctx }/surround/addCargo.do"
				method="post">
				<a class="btn blue" onclick="finalSub();">提 交 订 单</a>
			</form>
		</div> --%>
		

		<!--主体结束-->

		<!--用户信息panel-->
		<!-- <div data-role="panel" id="userDetail1" class="userDetail" data-display="overlay" data-position="right" data-transition="slide" data-direction="reverse"  data-position-fixed="true"  >
		<ul>
			<li>
				<span class="logo"><img class="img" src="../../resource/image/main/icon7.png" /></span>
				<span>136****8982</span>
				<a class="btn blue" href="#">退出</a>
			</li>
			<li class="li">
				<a href="../my/integration.html" data-transition="slide" data-direction="reverse"><i class="fa fa-money"></i>我的积分</a>
			</li>
			<li class="li">
				<a href="../my/myOrderList.html" data-transition="slide" data-direction="reverse"><i class="fa fa-newspaper-o"></i>我的订单</a>
			</li>
			<li class="li">
				<a href="../my/advice.html" data-transition="slide" data-direction="reverse"><i class="fa fa-commenting-o"></i>我的建议</a>
			</li>
			<li class="li">
				<a href="../service/lostList.html" data-transition="slide" data-direction="reverse"><i class="fa fa-tty"></i>失物招领</a>
			</li>
			
		</ul>
		
	</div> -->
		<!--页脚-->
		<%--  <div class="footer">
    <div class="iconBox">
        <div class="icon"><img class="img" src="${ctx }/resource/image/main/icon8.png"></div>
        <p>我的积分</p>
    </div>
    <div class="iconBox">
        <div class="icon"><img class="img" src="${ctx }/resource/image/main/icon9.png"></div>
        <p>我的预定</p>
    </div>
    <div class="iconBox">
        <div class="icon"><img class="img" src="${ctx }/resource/image/main/icon10.png"></div>
        <p>我的建议</p>
    </div>
    </div> --%>
		<!--页脚结束-->
	 <!--   图片上传 -->
   <!--  <script type="text/javascript">    
	    function upload(name,popId){
	    	var $temp=$(name).find("input").eq(0);
	    	temp=$temp.val();
	    	if(temp != "" && temp != "undefined" ){
	    		if(confirm("是否要重新上传图片？")){
	    			$("#picUp>a[href="+popId+"]").html("<i class='fa fa-plus'></i>");
	    			$temp.val("");	    			
	    		}else{
	    			$(popId).popup('close');
	    			return ;	    			
	    		}
	    		
	    	} 
			var formData = new FormData($(name)[0]);
			var file = $(name).children('input[type="file"]').val();
			if(file==""){
			   alert("请选择图片，再点击上传！");
			}else{
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
				        	$(name).find("input").eq(0).val(data.webPath);
				        	$("#picUrl").val(data.webPath);
				        	$(popId).popup('close');
				        	$("#picUp>a[href="+popId+"]>i").remove();
				        	$("#picUp>a[href="+popId+"]").append('<img class="img" style="width:100%;height:100% !important;" src="'+data.webPath+'" />');
				        },
				        error: function(){
				        	
				        },
				        // Form数据
				        data: formData,
				        cache: false,
				        contentType: false,
				        processData: false
				    }); 
			}
		}
	</script>


		<script type="text/javascript">
		
	
			function finalSub() {
				var bookId=$("#bookId").val();
				var serviceScore=$("#serviceScore").val();
				var cleanScore=$("#cleanScore").val();
				var comfortScore=$("#comfortScore").val();
				var content=$("#content").val().trim();
			
				if(cargoType==""){
					$("#cargoTypeWarnning").popup('open');
					setTimeout(function(){
						$("#cargoTypeWarnning").popup('close');
					},2000);
					return null;
				} 
					
				
				var params = $("#commentForm").serializeArray();
				$.ajax({
					url : "${ctx}/comment/docomment.do",
					data : params,
					dataType : "json",
					success : function(data) {
						if (data == 1) {
							alert("添加成功");
							goCommentDetail(bookId);
						} else {
							alert("添加失败,请稍后重试!");
						}
					},
					error : function(e) {
						alert("添加失败,请稍后重试!");
					}
				})

			}
			
			function back() {
				history.back();
			}
			function goCommentDetail(id){
				window.location.href="${ctx}/comment/godetail.do?bookNo="+id;
			}
			//显示多个电话号码:				
				function phoneDetail(){				
					$temp=$(".mainBox>.orderMessage>ul>.detailPhone");
					if($temp.is(":hidden")){
						$temp.show();
					}else{
						$temp.hide();
					}
				}
			
				//检查手机号
			 function chenckNum(num){				
				var reg=/^((0\d{2,3}-\d{7,8})|(1[3584]\d{9}))$/;
				if(!reg.test(num)){
					return false;
				}
				return true;
			}

			$("#sendTime").focus(function() {
				var $temp = $(this);
				$temp.removeAttr("placeholder");
				this.focus();
			});

		
			
		</script> -->
		
		
</body>
</html>