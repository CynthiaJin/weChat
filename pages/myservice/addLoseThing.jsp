<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="format-detection" content="telephone=no" />
    <title>发布失物招领</title>
    <link rel="stylesheet" href="${ctx }/resource/css/style.css"/>
    <link rel="stylesheet" href="${ctx }/resource/css/main.css" />
    <link rel="stylesheet" href="${ctx }/resource/font-awesome-4.4.0/css/font-awesome.css" />
    <link rel="stylesheet" href="${ctx }/resource/jquery-mobile/css/themes/default/jquery.mobile-1.4.5.min.css" />
    <%@ include file="../../common/common.jsp"%>
    <script type="text/javascript" src="${ctx }/resource/jquery-mobile/js/jquery.mobile-1.4.5.min.js" ></script>
    <style>
    	
    	/* .inputBox textarea{height:100px !important;}
    	.editLost .inputBox{width:100%;background:#fff;height:40px;line-height:40px;}
    	.editLost .inputBox.textBox{height:100px;}
    	.editLost .inputBox>span{float:left;width:25%;}
    	.editLost .inputBox>input{border:0px;outline:none;box-shadow:none;float:left;border-bottom:1px solid #dcdcdc;width:73%;height:98%;}
    	.editLost .inputBox>input:focus{border:0px;box-shadow:none;outline:none;border-bottom:1px solid #dcdcdc;}
    	 */
    </style>
</head>
<body data-role="page">
<div class="box">
    <!--页头-->
    <%-- <div class="topColor">
        <a class="topIcon" onclick="javascript:window.history.back();" data-transition="slide" data-direction="reverse"><img class="img" src="${ctx }/resource/image/main/backup.png"></a>
        <div class="topTitle">发布失物招领</div>
        <a class="topIcon2" href="#userDetail1" data-position="right" data-overlay-theme="b" ><img class="img" src="${ctx }/resource/image/main/user.png"></a>
    </div>
    <div class="clear"></div> --%>
     <div style="background:#35A8D7;height:5px;"></div>
<!--     <a class="topIcon" href="#userDetail"><i class="fa fa-user"></i></a> -->
    <!--页头结束-->
    <!--主体-->
    <div class="mainBox bottom0 editLost">
   		<form>
   			<div class="inputBox">
   				<select name="loseType" id="loseType">   					
   					<option value="">请选择物品种类</option>
   					<c:forEach items="${loseTypeList }" var="lostType">
   						<option value="${lostType.code }">${lostType.name }</option>
   					</c:forEach>   					
   				</select>	    		
	    	</div>
   			<div class="inputBox">
	    		<input type="text" name="loseName" id="loseName" value="" placeholder="物品名称"  />
	    	</div>
	    	<div class="inputBox">
	    		<input type="text" name="linkMan" id="linkName" value="" placeholder="联系人"/>
	    	</div>
	    	<div class="inputBox">
	    		<input type="text" name="mobile" id="mobile" value="${phone}" placeholder="电话号码"/>
	    	</div>
	    	<div class="inputBox">
	    		<input placeholder="请选择发生时间" type="datetime-local" name="loseTime" id="loseTime" />
	    	</div>
	    	<div class="inputBox">
	    		<input type="text" name="losePlace" id="losePlace" value="" placeholder="发生地点"/>
	    	</div>
	    	<div class="inputBox textBox">
	    		<textarea id="loseDescribe" style="height:100px;" placeholder="请详细描述丢失物品的时间地点等信息"></textarea>
	    	</div>
	    	<div class="picUpload">
	    		<span>上传图片</span>
	    		<div id="picUp">
		    		<a href="#upload1" data-rel="popup" data-position-to="window">
		    			<i class="fa fa-plus"></i>
					</a>
		    		<a href="#upload2" data-rel="popup" data-position-to="window">
		    			<i class="fa fa-plus"></i>
					</a>
		    		<a href="#upload3" data-rel="popup" data-position-to="window">
		    			<i class="fa fa-plus"></i>
					</a>
		    		<a href="#upload4" data-rel="popup" data-position-to="window">
		    			<i class="fa fa-plus"></i>
					</a>
	    		</div>
	    	</div>
   		</form>
	    	
	    	<a class="btn blue"  onclick="finalSub()">提 交 信 息</a>
	    </div>
    </div>
    <!--主体结束-->
    <div data-role="popup" data-overlay-theme="b" id="upload1" class="ui-content fileUp">
    	<form method="post" id="form0" enctype="multipart/form-data" >
			<input type="text" name="pic0" id="pic0" size="50" />	
			<input type="file" name="file" size="50" id="file" data-role="none"/> <br />
			<a class="btn blue" onclick="preUpload('#form0','#upload1');">上传</a>
		</form>
    </div>
    <div data-role="popup" data-overlay-theme="b" id="upload2" class="ui-content fileUp">
    	<form method="post" id="form1" enctype="multipart/form-data" >
			<input type="text" name="pic1" id="pic1" size="50" />	
			<input type="file" name="file" size="50" id="file" data-role="none"/> <br />
			<a class="btn blue" onclick="preUpload('#form1','#upload2');">上传</a>
		</form>
    </div>
    <div data-role="popup" data-overlay-theme="b" id="upload3" class="ui-content fileUp">
    	<form method="post" id="form2" enctype="multipart/form-data" >
			<input type="text" name="pic2" id="pic2" size="50" />	
			<input type="file" name="file" size="50" id="file" data-role="none"/> <br />
			<a class="btn blue" onclick="preUpload('#form2','#upload3');">上传</a>
		</form>
    </div>
    <div data-role="popup" data-overlay-theme="b" id="upload4" class="ui-content fileUp">
    	<form method="post" id="form3" enctype="multipart/form-data" >
			<input type="text" name="pic3" id="pic3" size="50" />	
			<input type="file" name="file" size="50" id="file" data-role="none"/> <br />
			<a class="btn blue" onclick="preUpload('#form3','#upload4');">上传</a>
		</form>
    </div>
    
    
    <div data-role="popup" class="ui-content" id="loseTypeWarnning">
			<div style="color: red;">
				<i class="fa fa-warning"></i><span>请选择物品种类！</span>
			</div>
	</div>
    <div data-role="popup" class="ui-content" id="loseNameWarnning">
			<div style="color: red;">
				<i class="fa fa-warning"></i><span>请正确填写物品名称(必须有汉字)！</span>
			</div>
	</div>
    <div data-role="popup" class="ui-content" id="linkManWarnning">
			<div style="color: red;">
				<i class="fa fa-warning"></i><span>请填写联系人！</span>
			</div>
	</div>
    <div data-role="popup" class="ui-content" id="mobileWarnning">
			<div style="color: red;">
				<i class="fa fa-warning"></i><span>请填写正确的联系方式！</span>
			</div>
	</div>
    <div data-role="popup" class="ui-content" id="loseDescribeWarnning">
			<div style="color: red;">
				<i class="fa fa-warning"></i><span>请正确填写描述信息(必须填写且小于100字)！</span>
			</div>
	</div>
	
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
    
    <script type="text/javascript">  
   
    /* 	$(".editChosen>li>span").bind('click',function(){
    		$(".editChosen>li").removeClass('active');
    		$(this).parent().addClass('active');
    	})  */
    	
    	
    </script>
    <!--  -->
  <!--   图片上传 -->
    <script type="text/javascript"> 
    var o = document.getElementById("loseTime");
	o.onfocus = function(){
	    this.removeAttribute('placeholder');
	};
	o.onblur = function(){
	    if(this.value == '') this.setAttribute('placeholder','请选择日期');
	};
    	
		
		
		//防止重复提交
		var form0=false;
		var form1=false;
		var form2=false;
		var form3=false;
		
		function preUpload(name,popId){
			//upload('#form1','#upload2');
			if(name == '#form0'){
				if(form0){
					return ;
				}
				form0=true;
				
				setTimeout(function (){upload(name,popId);}, 200);
			}
			if(name == '#form1'){
				if(form1){
					return ;
				}
				form1=true;
				
				setTimeout(function (){upload(name,popId);}, 200);
			}
			if(name == '#form2'){
				if(form2){
					return ;
				}
				form2=true;
				
				setTimeout(function (){upload(name,popId);}, 200);
			}
			if(name == '#form3'){
				if(form3){
					return ;
				}
				form3=true;
				
				setTimeout(function (){upload(name,popId);}, 200);
			}
			
		}
	
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
				$(".btn blue").attr("disabled","disabled");
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
				        	$(popId).popup('close');
				        	$("#picUp>a[href="+popId+"]>i").remove();
				        	$("#picUp>a[href="+popId+"]").append('<img class="img" style="width:100%;height:100% !important;" src="'+data.webPath+'" />');
				        	//防止重复提交
				        	if(name == '#form0'){
								form0=false;
							}
							if(name == '#form1'){
								form1=false;
							}
							if(name == '#form2'){
								form2=false;
							}
							if(name == '#form3'){
								form3=false;
							}
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
		}
	    //	loseName	 linkMan  loseTime	losePlace	loseDescribe mobile
	    function finalSub(){	
	    	var loseType=$("#loseType").val();
	    	var loseName=$("#loseName").val();
	    	var linkMan=$("#linkName").val();
	    	var mobile=$("#mobile").val().trim();
	    	var loseTime=$("#loseTime").val();
	    	var losePlace=$("#losePlace").val();
	    	var loseDescribe=$("#loseDescribe").val();
	    	var pic0=$("#pic0").val();
	    	var pic1=$("#pic1").val();
	    	var pic2=$("#pic2").val();
	    	var pic3=$("#pic3").val();
	    	if(loseType==""){
	    		$("#loseTypeWarnning").popup("open");
	    		setTimeout(
	    				function(){
	    					$("#loseTypeWarnning").popup("close");
	    				}, 
	    				2000);
	    		return null;
	    	};
	    	if(!checkName(loseName)){
	    		$("#loseNameWarnning").popup("open");
	    		setTimeout(
	    				function(){
	    					$("#loseNameWarnning").popup("close");
	    				}, 
	    				2000);
	    		return null;
	    	};
	    	if(linkMan==""){
	    		$("#linkManWarnning").popup("open");
	    		setTimeout(
	    				function(){
	    					$("#linkManWarnning").popup("close");
	    				}, 
	    				2000);
	    		return null;
	    	};
	    	if(!checkNum(mobile)){
	    		$("#mobileWarnning").popup("open");
	    		setTimeout(
	    				function(){
	    					$("#mobileWarnning").popup("close");
	    				}, 
	    				2000);
	    		return null;
	    	};
	    	 if(!checkContent(loseDescribe)){
	    		$("#loseDescribeWarnning").popup("open");
	    		setTimeout(
	    				function(){
	    					$("#loseDescribeWarnning").popup("close");
	    				}, 
	    				2000);
	    		return null;
	    	}; 
	    	
	    	 var data={'loseType':loseType,'loseName':loseName,'linkMan':linkMan,'loseTime':loseTime,
	    			'losePlace':losePlace,'loseDescribe':loseDescribe,'mobile':mobile,
	    			'pic0':pic0,'pic1':pic1,'pic2':pic2,'pic3':pic3}; 
	    	
	    	 $.ajax({
    			url:'${ctx}/MySer/addLoseThing.do?json',
    			 type: 'POST',
    			data:data,
	    		dataType:"json",
	    		success:function(data){
	    			if(data==1){
	    				alert("发布成功!");
	    				//重新加载页面
	    				window.location.href="${ctx}/MySer/in/lostList.do";
	    			}else{
	    				alert("发布失败,请稍后再操作~");
	    			}
	    		},error:function(){
	    			alert("发布失败,请稍后再操作~");
	    		}
	    	}); 
	    }
	    
	   
	    
	    
	    function checkName(name){	    	
	    	var reg1=/^(\w*[\u4E00-\u9FFF]+\w*)$/;
	    	//var reg2=/^[a-zA-Z0-9_\u4e00-\u9fa5]{5,21}$/;
	    	if(!reg1.test(name)){
	    		return false;
	    	}
	    	return true;
	    }
	    function checkContent(content){	    	
	    	if(content == ""){
	    		return false;
	    	}
	    	 if(content.replace(/[^\x00-\xff]/g, 'AA').length>parseInt(200)){
	    		   return false;
	    	 }
	    	return true;
	    }
	    function checkNum(num){	    	
	    	var reg=/^((0\d{2,3}-\d{7,8})|(1[3584]\d{9}))$/;
	    	if(!reg.test(num)){
	    		return false;
	    	}
	    	return true;
	    }
    </script>
    
</body>
</html>