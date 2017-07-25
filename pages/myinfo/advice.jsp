<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
    <title>我的建议</title>
    <link rel="stylesheet" href="${ctx }/resource/css/style.css"/>
    <link rel="stylesheet" href="${ctx }/resource/css/main.css" />
    <link rel="stylesheet" href="${ctx }/resource/font-awesome-4.4.0/css/font-awesome.css" />
    <link rel="stylesheet" href="${ctx }/resource/jquery-mobile/css/themes/default/jquery.mobile-1.4.5.min.css" />
    <%@ include file="../../common/common.jsp"%>
    <script type="text/javascript" src="${ctx }/resource/jquery-mobile/js/jquery.mobile-1.4.5.min.js" ></script>
  
</head>
<body data-role="page">
<div class="box">
    <!--页头-->
   <!--  <div class="topColor">
        <a class="topIcon" onclick="javascript:window.history.back();" data-transition="slide" data-direction="reverse"><img class="img" src="${ctx }/resource/image/main/backup.png"></a>
        <div class="topTitle">我的建议</div>
        <a class="topIcon2" href="#userDetail" data-position="right" data-overlay-theme="b" ><img class="img" src="${ctx }/resource/image/main/user.png"></a>
    </div>
    <div class="clear"></div> -->
     <div style="background:#35A8D7;height:5px;"></div>
<!--     <span class="topIcon"><i class="fa fa-user"></i></span> -->
    <!--页头结束-->
    <!--主体-->
    <div class="mainBox bottom0">
    	<ul class="editChosen">
    		<li class="active">
    			<span>我的建议</span>
    			<div class="editBox list">
    				<c:forEach items="${suggestions }" var="suggestion" varStatus="status">
    					<div class="advicePiece">
	    					<div class="advice"  onclick="judgeShow(this);">
	    						<p>${suggestion.child.content }</p>
	    						<input type="hidden" name="sugId" id="sugId" value="${suggestion.child.sugId }" />
	    						 <span>${suggestion.child.addTimeString}/></span>
	    					</div>
	    					<div>
	    					<p>
	    					<c:choose>
    						<c:when test="${!empty suggestion.linkAddress }">
    							<img style="height: 50px;width: 50px;" src="${suggestion.linkAddress }">
    						</c:when>
    						<c:otherwise>
    							<img style="height: 50px;width: 50px;" src="${ctx}/resource/image/main/nopic.jpg"/>  
    						</c:otherwise>
    					</c:choose>
	    					
	    					</p>
	    					</div>
	    					
    						<div class="answer" style="display:none">
    						</div>
    					</div>
    				</c:forEach>    	
    			</div>			
    		</li>
    		<li>
    			<span>提建议</span>
    			<div class="editBox">
    				<textarea id="texts"></textarea>
    				<div class="phoneNum">
			    		<span>联系电话</span>
			    		<input type="text" name="phoneNum" id="phoneNum" value="${phone }" placeholder="请输入您的联系方式"/>
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
			    	<a class="btn publish" onclick="finalSub()">发 布 建 议</a>
			  		
    			</div>
    		</li>
    	</ul>
    	
    
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
    
    <div data-role="popup" class="ui-content" id="textsWarnning">
			<div style="color: red;">
				<i class="fa fa-warning"></i><span>请填写建议详情！</span>
			</div>
	</div>
    <div data-role="popup" class="ui-content" id="phoneNumWarnning">
			<div style="color: red;">
				<i class="fa fa-warning"></i><span>请填写正确的联系方式！</span>
			</div>
	</div>
    
    <!--用户信息panel-->
	<!-- <div data-role="panel" id="userDetail" class="userDetail" data-display="overlay" data-position="right"   data-position-fixed="true" >
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
   
    	$(".editChosen>li>span").bind('click',function(){
    		$(".editChosen>li").removeClass('active');
    		$(this).parent().addClass('active');
    	}) 
    	
    	
    </script>
    <script type="text/javascript">
    	function judgeShow(obj){
    		var id=$(obj).find("input").eq(0).val();
    		var $answer = $(obj).siblings('.answer');
    		$.ajax({
    			url:"${ctx}/myinfo/replyList.do?json",
    			data:{sugId:id},
    			type:"GET",
    			dataType:"json",
    			success:function(data){
    				console.log(data);
    				var children=data.children;
    				var detail="";
    				for(var i=0;i<children.length;i++){
    					detail+="<div class='answer'>";
			    		detail+="<p>"+children[i].content+"</p>";
			    		detail+="<span>"+children[i].addTime+"</span></div>";
    				}     				
		    		if($answer.css('display')=='none'){
		    			$answer.html(detail);			    		
			    		$answer.show();
		    		}else{
		    			$answer.hide();
		    		}
    			}
    		})
    	}
    </script>
  <!--   图片上传 -->
    <script type="text/javascript">    
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
				        cache: false,
				        contentType: false,
				        processData: false
				    }); 
			}
		}
	    
	    function finalSub(){
	    	var sugId=$("#sugId").val();
	    	var texts=$("#texts").val();
	    	var phoneNum=$("#phoneNum").val();
	    	var pic0=$("#pic0").val();
	    	var pic1=$("#pic1").val();
	    	var pic2=$("#pic2").val();
	    	var pic3=$("#pic3").val();
	    	if(texts.length==0){
	    		$("#textsWarnning").popup("open");
	    		setTimeout(function(){
	    			$("#textsWarnning").popup("close");
	    		}, 2000);
	    		return null
	    	}
	    	if(! checkNum(phoneNum)){
	    		$("#phoneNumWarnning").popup("open");
	    		setTimeout(function(){
	    			$("#phoneNumWarnning").popup("close");
	    		}, 2000);
	    		return null
	    	}
	    	$.ajax({
    			url:"${ctx}/myinfo/addsug.do?json",
    			data:{texts:texts,phoneNum:phoneNum,pic0:pic0,pic1:pic1,pic2:pic2,pic3:pic3},
	    		dataType:"json",
	    		 type: 'POST',
	    		success:function(data){
	    			if(data==1){
	    				alert("发布成功!");
	    				//重新加载页面
	    				location.reload();
	    			}
	    		},error:function(){
	    		}
	    	});
	    }
	    
	    function checkNum(num){	    	
	    	var reg=/^((0\d{2,3}-\d{7,8})|(1[3584]\d{9}))$/;
	    	if(!reg.test(num)){
	    		return false;
	    	}
	    	return true;
	    }
	    
	    $(function(){
	    	judgeShow($(".advicePiece").find(".advice").get(0));
	    });
	    
	    var phoneTemp=$("#phoneNum").val();
	    //点击联系电话,清空之前的
	    $("#phoneNum").on("click",function(){
	    	$("#phoneNum").val("");
	    })
	    $("#phoneNum").on("blur",function(){
	    	if($("#phoneNum").val==""){
	    		 $("#phoneNum").val(phoneTemp);
	    	}
	    })
    </script>
</div>
</body>
</html>