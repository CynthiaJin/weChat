<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    <title>失物招领列表</title>
    <link rel="stylesheet" href="${ctx}/resource//css/style.css"/>
    <link rel="stylesheet" href="${ctx}/resource//css/main.css" />
    <link rel="stylesheet" href="${ctx}/resource//jquery-mobile/css/themes/default/jquery.mobile-1.4.5.min.css" />
    <link rel="stylesheet" href="${ctx}/resource//font-awesome-4.4.0/css/font-awesome.css" />
    <script type="text/javascript" src="${ctx}/resource//js/jquery-1.10.1.min.js" ></script>
    <script type="text/javascript" src="${ctx}/resource//jquery-mobile/js/jquery.mobile-1.4.5.min.js" ></script>
    <style>
    	/* .tips {
				width: 100%;
				height:40px;
				line-height: 40px;
				position: relative;
				background: #fdf8e2;
				border:1px solid #FDF8E6;
				border-radius: 3px;
				color: #8B7546;
			}
			.tips img{
				width: 24px;
				vertical-align: middle;
				margin-left: 10px;
			}
			.tips span{
				display: inline-block;
				height:100%;
				float: left;
			}
			.tips p{
				width: 80%;
				font-size:16px;
				white-space:nowrap;
				overflow-y: hidden;
				float: left;
				margin-left: 20px;
			}
			.info{
				width: 100%;
				border:1px solid #ddd;
				border-radius: 3px;
				margin: 10px 0;
				background:#fff;
			}
			.info p{
				padding: 10px 5px;
				font-size: 15px;
				color:#bbb;
				font-family: "微软雅黑";
			}
			.info p img{
				width: 24px;
				vertical-align: middle;
				margin-left: 10px;
				margin-right: 10px;
			}
			.mainBox .lostList {
    			top: 200px;
			} */
			.ui-page-theme-a .ui-btn{
				width:50%;
				margin:0 auto;
				border:none;
				box-shadow:none;
				color:#fff;
				outline:0;
				background:url(${ctx}/resource/image/main/u23.png) no-repeat center;
				background-size:cover;
			}
			.ui-page-theme-a .ui-btn:visited,.ui-page-theme-a .ui-btn:hover{
				color:#fff;
			}
			.ui-btn-icon-right {
    			 padding-right:1em; 
			}
			.mainBox .lostList>li{
				height:90px;
			}
			.mainBox .lostList>li>div>span:first-child {
			 	width:120px;
   				margin-bottom:25px;
   				font-size:16px;
   				white-space:nowrap;
   				overflow:hidden;
   				text-overflow:ellipsis;
			}
			.mainBox a.search{
				width:65%;
				margin-left:5px;
				background:#33A7D6;
				float:left;
				letter-spacing: 0px; 
				line-height:12px;
				background:#a6da8a !important;
			}
			.mainBox a.search p{
				width:100%;
				height:50%;
				line-height:25px;
			}
			.call{
				font-size:12px;
				padding:0;
				margin:0;
			}
			.mainBox a.fabu{
				width:30%;
				float:left;
				font-size:12px;
				margin-left:5px;
				letter-spacing: 0px; 
				background:#87cdca !important;
			}
			.mainBox a.fabu p{
				width:100%;
				height:50%;
				line-height:12px;
				margin:5px 0;
			}
			.mainBox a.fabu p img{
				width:20px;
				vertical-align:middle;
				
			}
			@media only screen and (min-width: 100px) and (max-width: 320px) {
				.mainBox a.bottom{
					font-size:10px;
				}
			}
			.mainBox{
				width:100%;
				top:0px;
				left:0px;
				background:#fff;
			}
			.main-fenlei{
				width:100%;
				
				min-height:100px;
				background:#000;
			}
			.main-fenlei .lists{
				clear:both;
			}
			.main-fenlei .lists li{
				width:20%;
				height:100%;
				padding:10px 0;
				float:left;
				text-align:center;
				background:#000;
			}
			.main-fenlei .lists li  span{
				display:block;
				margin-top:10px;
				color:#fff;
			}
			.main-fenlei .lists li img{
				width:50px;
			}
			.title{
				padding:15px 5px;
				margin-top:10px;
			}
			.title p{
				width:33%;
				float:left;
				text-align:center;
				font-size:16px;
			}
			.title p img{
				width:100%;
				height:1px;
				vertical-align:middle;
			}
			.details{
				padding:20px;
			}
			.details li p{
				width:100%;
				line-height:30px;
				float:left;
			}
			.details li p .uname{
				float:left;
				font-weight:bold;
			}
			.details li p .statuis{
				float:right;
				color: #D57C7B;
			}
			.tname{
				float:left;
				color:#33A7D6;
			}
			.details li p.tld{
				text-align:right;
			}
			.time{
				font-weight: 400;
    			color: #CCCCCC;
			}
			.rt{
				float:right;
			}
			.rt img{
				width:18px;
				vertical-align:middle;
			}
			.praise{
				color:#D82E18;
				font-weight: 700;
			}
			.line{
				height:1px;
				background:#ddd;
			}
			.button-sub{
				width:100%;
				height:60px;
				padding-bottom:5px;
				background:#fff;
				position:fixed;
				bottom:0;
			}
    </style>
</head>
<body data-role="page">
<div class="box">
    <!--页头结束-->
    <!--主体-->
    <div class="mainBox bottom0">
    	
    	<div class="main-fenlei">
    		<ul class="lists">
    			<li onclick="doSearch('0',this);">
    				<span><img src="${ctx}/resource/image/inside/u20.png"></span>
    				<span>全部</span>
    			</li>
    			<li onclick="doSearch('01',this);">
    				<span><img src="${ctx}/resource/image/inside/u22.png"></span>
    				<span>生活用品</span>
    			</li>
    			<li onclick="doSearch('02',this);">
    				<span><img src="${ctx}/resource/image/inside/u24.png"></span>
    				<span>数码产品</span>
    			</li>
    			<li onclick="doSearch('03',this);">
    				<span><img src="${ctx}/resource/image/inside/u26.png"></span>
    				<span>证件</span>
    			</li>
    			<li onclick="doSearch('04',this);">
    				<span><img src="${ctx}/resource/image/inside/u28.png"></span>
    				<span>其它</span>
    			</li>
    		</ul>
    	</div>
    	<div class="title">
    		<p><img src="${ctx}/resource/image/inside/u42.png"></p>
    		<p id="titleName">全部</p>
    		<p><img src="${ctx}/resource/image/inside/u42.png"></p>
    	</div>
    	<div id="lostList">    	
	    	<c:forEach items="${loseList }" var="loseThing">
	    		<div class="details" onclick="detail('${loseThing.thing.serialNo}');">
		    		<ul>
		    			<li>
		    				<p>
		    					<span class="uname">${loseThing.thing.linkMan}</span>
		    					<c:choose>
			    					<c:when test="${loseThing.thing.ifClaim=='2' }">
			    						<span class="statuis">已认领</span>
			    					</c:when>
			    					<c:when test="${loseThing.thing.ifClaim=='1' }">
	    								<span class="statuis">未认领</span>
	    							</c:when>
	    						</c:choose>	    			
		    				</p>
		    				<p class="tname" >${loseThing.thing.loseName}</p>
		    				<p class="tld">
		    					<span class="time">${loseThing.thing.issTimeString}</span>
		    					<%-- <span class="rt" onclick="doPraise(this);">
		    						<span>
		    							<img src="${ctx}/resource/image/inside/u50.png">
		    						</span>
		    						&nbsp;&nbsp;
		    						<span class="praise" >
		    							<c:choose>
				    						<c:when test="${loseThing.thing.praise<0 }">
				    							0
				    						</c:when>
				    						<c:otherwise>
				    							${loseThing.thing.praise}
				    						</c:otherwise>
	    								</c:choose>
	    							</span>	    
	    							<input type="hidden" value="${loseThing.thing.serialNo }"/>
		    					</span> --%>
		    				</p>	    				
		    				<p class="line"></p>
		    			</li>
		    		</ul>
	    		</div>
	    	</c:forEach>  	
		</div>
    	<div class="button-sub">
    		<a class="btn blue fabu" href="${ctx }/MySer/toAddLoseThing.do" data-ajax="false" >
    			<p><img src="${ctx}/resource/image/inside/u68.png"></p>
    			<p>发 布 失 物 招 领</p>
    		</a>
    		<a href="tel:024-52799299" class="btn blue search">
    			<p>024-52799299</p>
    			<p class="call">咨询电话（法定工作日8:00-17:00）</p>
    		</a>
    	</div>
    </div>    
   </div>
    <!--主体结束-->
    <!--用户信息panel-->
	<!-- <div data-role="panel" id="userDetail" class="userDetail" data-display="overlay" data-position="right"  data-position-fixed="true"  >
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
    <%-- <div class="footer">
    <div class="iconBox1">
        <div class="icon"><img src="${ctx}/resource//image/main/icon4.png"></div>
        <p role="mid">雷锋号</p>
    </div>
    <div class="iconBox1">
        <div class="icon"><img src="${ctx}/resource//image/main/icon5.png"></div>
        <p>城际旅游</p>
    </div>
    <div class="iconBox1">
        <div class="icon"><img src="${ctx}/resource//image/main/icon6.png"></div>
        <p>周边服务</p>
    </div>
    <div class="iconBox1">
        <div class="icon"><img src="${ctx}/resource//image/main/icon7.png"></div>
        <p>失物招领</p>
    </div>
    </div> --%>
    <!--页脚结束-->
</div>
<script type="text/javascript"> 
	//点赞功能去掉;
		function doPraise(index){
			$this=$(index);    		
    		//var oldCount=$this.children(".praise").html();
    		var $target=$this.children(".praise");
    		var serialNo=$target.next("input").val();
    		$.ajax({
    			url:"${ctx}/MySer/praise.do?json",
    			data:{serialNo:serialNo},
    			dataType:"json",
    			success:function(data){
    				var newCount=data;
    				$target.html(data);
    				/* if(newCount>oldCount){
    					$this.html(data);
    					if($this.hasClass('gray')){
    	    				$this.removeClass('gray').addClass('red');
        				}else{
        					
        				}		
    				}else{
    					$this.html(data);
    					if($this.hasClass('red')){
        					$this.removeClass('red').addClass('gray');
        				}else{
        					
        				}    		
    				} */
    						
    			},
    			error:function(e){
    				console.log(e);
    			}
    		}) 
		}
    	/* $(".rt").on("click",function(){
    		$this=$(this);    		
    		//var oldCount=$this.children(".praise").html();
    		var $target=$this.children(".praise");
    		var serialNo=$target.next("input").val();
    		$.ajax({
    			url:"${ctx}/MySer/praise.do?json",
    			data:{serialNo:serialNo},
    			dataType:"json",
    			success:function(data){
    				var newCount=data;
    				$target.html(data);
    				
    						
    			},
    			error:function(e){
    				console.log(e);
    			}
    		}) 
    	}); */
    	
    
   		function detail(serialNo){       		
       		window.location.href="${ctx}/MySer/lostDetail.do?serialNo="+serialNo;
       	}
    	
    	
    	
    	
    	function doSearch(index,temp){
    		$temp=$(temp);
    		//alert($temp.html());
    		var titleName=$temp.children().eq(1).html();;
    		//alert(titleName);
       		
       		$("#titleName").html(titleName);
    		//alert(123);
    		//var loseType=$("#loseType").val();
    		//var loseTypeText=$("#loseType").find("option:selected").text();
    		var loseType=index;
    		var url="${ctx}/MySer/getList.do";
    		var loseList;
    		var $loseList=$("#lostList");
    		//console.log($loseList.html());
    		//var $total=$("#total");
    		var urlHead="${ctx}";	
    		//alert("urlHead======"+urlHead);
    		$.ajax({
    			url:url,
    			type:"GET",
    			data:{loseType:loseType},
    			dataType:"json",
    			success:function(data){
    				//$total.html("截止当前："+loseTypeText+"有"+data[0]+"个失物未认领");
    				loseList=data[1];
    				//console.log(loseList);
    				var str="";
    				for(var i=0;i<loseList.length;i++){
    					//var picList=loseList[i].picList;
    					//console.log(picList.length);
    					//console.log(picList);    
    					var praiseNum=loseList[i].thing.praise;
    					var temp="this";    					
    					if(praiseNum<0){
    						praiseNum=0;
    					}    					
    					
    					str+='<div class="details" onclick=detail("'+loseList[i].thing.serialNo+'");><ul><li><p>	<span class="uname">'+loseList[i].thing.linkMan+'</span>';
    					if(loseList[i].thing.ifClaim==2){
        						str+='<span class="statuis">已认领</span>';
        				}else if(loseList[i].thing.ifClaim==1){
        						str+='<span class="statuis">未认领</span>';
        				}
    				    str+='</p><p class="tname">'+loseList[i].thing.loseName+'</p><p><span class="time">';    		    					
    			    	str+=loseList[i].thing.issTimeString;		
    			    	str+='</span>';
    			    	//隐藏掉点赞功能
    			    	/* str+='<span class="rt" onclick="doPraise('+temp+');"><span><img src="${ctx}/resource/image/inside/u50.png"></span>&nbsp;&nbsp;<span class="praise" >';			
    			    	str+=praiseNum;   
    			    	str+='</span><input type="hidden" value="'+loseList[i].thing.serialNo+'"/></span>' */
    			    	str+='</p><p class="line"></p></li></ul></div>';   			    	
    				}
    				$loseList.html(str);
    			},
    			erros:function(){
    				
    			}
    		})
    	}
</script>
</body>
</html>