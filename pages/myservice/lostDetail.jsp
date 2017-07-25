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
    <title>失物招领详情</title>
    <link rel="stylesheet" href="${ctx }/resource/css/style.css"/>
    <link rel="stylesheet" href="${ctx }/resource/css/main.css" />
    <link rel="stylesheet" href="${ctx }/resource/jquery-mobile/css/themes/default/jquery.mobile-1.4.5.min.css" />
    <link rel="stylesheet" href="${ctx }/resource/font-awesome-4.4.0/css/font-awesome.css" />
    <script type="text/javascript" src="${ctx }/resource/js/jquery-1.10.1.min.js" ></script>
    <script type="text/javascript" src="${ctx }/resource/jquery-mobile/js/jquery.mobile-1.4.5.min.js" ></script>
    <style>
    .discussBox{
    	background:#fff;
    }
   		.dPiece h5 span{
   			color:#000 !important;
   		}
   		.apptime{
   			width:100%;
		    line-height: 1.8em;
		    font-size: 14px !important;
		    color: #C8C8C8;
   			text-align:left !important;
   		}
    </style>
</head>
<body data-role="page">
<div class="box lostDetail">
    <!--页头-->
   <%--  <div class="topColor">
        <a class="topIcon" ><img class="img" src="${ctx }/resource//image/main/backup.png"></a>
        <div class="topTitle">雷锋号</div>
        <a class="topIcon2" href="#userDetail"><img class="img" src="${ctx }/resource//image/main/user.png"></a>
    </div>
    <div class="clear"></div> --%>
     <div style="background:#35A8D7;height:5px;"></div>
<!--     <a class="topIcon" href="#userDetail"><i class="fa fa-user"></i></a> -->
   
    <div class="mainBox bottom0">
    	<div class="centerBox">
    		<div class="titleBox">
	    		<h2>${loseThings.thing.loseName }</h2>
	    		<span>
	    			<small>${loseThings.thing.issTimeString}</small>
	    			<small>${loseThings.thing.loseName}</small>
	    			<!-- <small>浏览1600次</small> -->
	    		</span>
	    	</div>
	    	<div class="lostDetail">
	    		<div>
	    			<span class="left">物品名称：</span>
	    			<span class="right">${loseThings.thing.loseName}</span>
	    		</div>
	    		<div>
	    			<span class="left">物品类别：</span>
	    			<span class="right">${loseThings.loseType}</span>
	    		</div>
	    		<c:if test="${! empty loseThings.thing.loseTime }">
	    			<div>
		    			<span class="left">发生时间：</span>
		    			<span class="right"><fmt:formatDate value="${loseThings.thing.loseTime }" type='both'/></span>
		    		</div>
	    		</c:if>
	    		
	    		<c:if test="${! empty loseThings.thing.losePlace }">
	    		<div>
	    			<span class="left">发生地点：</span>
	    			<span class="right">${loseThings.thing.losePlace}</span>
	    		</div>	    	
	    		</c:if>	
	    		<div>
	    			<span class="left">联系电话：</span>
	    			<span class="right">${loseThings.thing.mobile}</span>
	    		</div>	    		
	    		<div>
	    			<span class="left">认领状态：</span>
	    			<c:choose>
                	<c:when test="${loseThing.thing.ifClaim=='1'}">
                		<span class="right">已认领</span>
                	</c:when>
                	<c:otherwise>
                		<span class="right">未认领</span>
                	</c:otherwise>
                </c:choose>           
	    		</div>
	    		<div>
	    			<span class="left">物品描述：</span>
	    			<span class="right">${loseThings.thing.loseDescribe}</span>
	    		</div>
	    	
		    		<div class="imgBox">
		    			<c:if test="${! empty loseThings.picList }">
		    			<span>相关图片:</span>	    			
		    			<div class="">
			    			<c:forEach items="${loseThings.picList }" var="pic">
			    				<img src="${pic.linkAddress}" />	
			    			</c:forEach>   		
		    			</div>
		    			</c:if>	  
		    		</div>
	    		  
	    	
	      </div>	
	    	
	    	<div class="discussBox" id="discussBox">
	    		<c:forEach items="${loseThings.replys }" var="reply">
	    			<div class="dPiece">
		    		<h5>
		    			<span>${reply.mobile }</span>
		    			<%-- <span class="praise">
			    			<i class="fa fa-heart gray" >${reply.praise }</i>
			    			<input type="hidden" value="${reply.replyId }"/> 
		    			</span> --%>
		    		</h5>
		    		<p>${reply.content }</p>
		    		<div class="apptime">发表时间：<fmt:formatDate value="${reply.addTime }" type='both'/></div>
	    		</div>
	    		</c:forEach>   	    	
    	</div>

  </div>
    	<div class="inputAbtn">
    		<input type="text" id="talk" placeholder="我想说" />
    		<input type="hidden" id="upNo" name="upNo" value="${loseThings.thing.serialNo }" />
    		<span class="orange" id="comment">评论</span>
    	</div>    	
  </div>
    <!--主体结束-->
   <%--  <!--页脚-->
    <div class="footer">
    <div class="iconBox1">
        <div class="icon"><img src="${ctx }/resource//image/main/icon4.png"></div>
        <p role="mid">雷锋号</p>
    </div>
    <div class="iconBox1">
        <div class="icon"><img src="${ctx }/resource//image/main/icon5.png"></div>
        <p>城际旅游</p>
    </div>
    <div class="iconBox1">
        <div class="icon"><img src="${ctx }/resource//image/main/icon6.png"></div>
        <p>周边服务</p>
    </div>
    <div class="iconBox1">
        <div class="icon"><img src="${ctx }/resource//image/main/icon7.png"></div>
        <p>失物招领</p>
    </div>
    </div>
    <!--页脚结束--> --%>
    <!-- 
    		<div class="inputAbtn">
    		<input type="text" id="talk" placeholder="我想说" />
    		<span class="orange" id="comment">评论</span>
    	</div>
     -->
    <script type="text/javascript">
    	//触发点赞功能
    	$(".praise").find("i").on("click",function(){
    		$this=$(this);
    		var oldCount=$this.html();
    		var replyId=$this.next("input").val();
    		$.ajax({
    			url:"${ctx}/MySer/praiseReply.do?json",
    			data:{replyId:replyId},
    			dataType:"json",
    			success:function(data){
    				//alert(data);
    				var newCount=data;
    			//	alert(oldCount);
    				//alert(newCount);
    				if(newCount>oldCount){
    					$this.html(data);
    					if($this.hasClass('gray')){
    	    				$this.removeClass('gray').addClass('red');
        				}		
    				}else{
    					//alert("您已经为该回复点赞~")
    					$this.html(data);
    					if($this.hasClass('red')){
        					$this.removeClass('red').addClass('gray');
        				}    		
    				}
    						
    			},
    			error:function(e){
    				console.log(e);
    			}
    		})
    	});
    	$("#comment").on("click",comment);
    	
    	function changeColor(){
    		
    	}
    	
    	function comment(){
    		var serialNo=$("#upNo").val();
    		var content=$("#talk").val();
    		$.ajax({
    			url:"${ctx }/MySer/addReply.do",
    			data:{serialNo:serialNo,content:content},
    			dataType:"json",
    			type:'post',
    			success:function(data){
    				if(data==1){
    					//alert("回复成功!")
    					//重新加载页面
	    				location.reload();
    				}else{
    					alert("请输入内容~")
    				}
    			},
    			error:function(e){
    				alert(e);
    			}
    		})
    	}
    </script>
</div>
</body>
</html>