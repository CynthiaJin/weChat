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
    <title>发布广告信息</title>
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
    	 a.yuyue {
			    width: 55px;
			    height:50px !important;
			    font-size: 12px;
			    line-height: 54px !important;
			    border: 1px solid #D2332C;
			    border-radius: 3px;
			    text-align: center;
			    padding:5px 4px;
			    color: #D2332C !important;
			}
			a.yuyue img{
				width:20px !important;
				margin:0 5px;
				vertical-align: middle;
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
     <div style="background:#35A8D7;height:5px;"></div>
<!--     <a class="topIcon" href="#userDetail"><i class="fa fa-user"></i></a> -->
    <!--页头结束-->
    <!--主体-->
    <div class="mainBox bottom0">
    	<div class="orderMessage">
    	<ul>   	
   			<li class="input">
   				<img class="busType img" src="${ctx }/resource/image/main/order.png"></img>
   				<span>姓&nbsp;&nbsp;名</span>
	    		<input type="text" name="sname" id="sname" value="" placeholder="姓名"  form="adForm" />
	    	</li>	   			
   			<%-- <li class="input">
   				<img class="busType img" src="${ctx }/resource/image/main/order.png"></img>
   				<span>发布形式</span>
	    		<input type="text" name="adStyle" id="adStyle" value="" placeholder="发布形式"  form="adForm" />
	    	</li>	
	    	<li class="input">
	    		<img class="rposition img" src="${ctx }/resource/image/main/time-green2.png"></img>
	    		<span>开始日期</span>
	    		<input placeholder="请选择开始日期"  type="date" name="beginTime" id="beginTime"  form="adForm"/>
	    	</li>
	    	
	    	<li class="input">
	    		<img class="rposition img" src="${ctx }/resource/image/main/time.png"></img>
	    		<span>结束日期</span>
	    		<input placeholder="请选择结束日期"  type="date" name="overTime" id="overTime" form="adForm"/>
	    	</li>	
	    	    		    		   	
    		<li class="input">
    			<img class="totalM img" src="${ctx }/resource/image/main/cash.png"></img>
 					<span>预估价格</span>  					
  					<input type="text" name="price" id="price" value="" placeholder="预估价格" form="adForm"/>
    		</li> --%>
	    		
		    	<li class="input">
		    		<img class="img" src="${ctx }/resource/image/main/phone.png"></img>
		    		<span>联系电话</span>
		    		<input type="text" name="mobile" id="mobile" value="" placeholder="联系电话" form="adForm" />
		    	</li>
		    <li class="input">
   				<img class="busType img" src="${ctx }/resource/image/main/cartype.png"></img>
   				<span>发布内容</span>
	    		<input type="text" name="adTypes" id="adTypes" value="" placeholder=""  disabled="disabled"/> 
	    		
	    	</li>	
	    		<textarea name="adType" id="adType" form="adForm" cols=""></textarea>
	    	</ul>
	    	
	    </div>
	    <form id="adForm" action="${ctx }/surround/addAd.do" method="post">
	    	<a class="btn blue"  onclick="finalSub();">提 交 订 单</a>
		</form>
			<p style="text-align:center;margin:10px 0;padding:10px 0;color:#D2332C;font-size:14px;background:#fff;">咨询电话:024—58217156/58217097
				<br />
				<a href="tel:024-58217156" class="yuyue">
	  			<span>点击拨打</span>
	  			<span><img src="${ctx }/resource/image/main/uphone.png"></span>
	  		</a>
			</p>
	   </div>
	   
     <div data-role="popup" id="adTypePop" class="ui-content seatPop" data-overlay-theme="b">
     	 	<span> </span>
     	 <div id="adTypeScroll" class="scroll">
     	 	<ul>
     	 		<li> </li>     	 		
     	 		<li class="active">食品类广告</li>
     	 		<li>服装类广告</li>
     	 		<li>房产类广告</li>
     	 		<li>餐饮类广告</li>
     	 		<li>汽车类广告</li>
     	 		<li>通信类广告</li>
     	 		<li>医疗类广告</li>
     	 		<li>其他</li>
     	 		<li></li>
     	 	</ul>
     	 </div>
    </div>
    
    <div data-role="popup" id="adStylePop" class="ui-content adPop" data-overlay-theme="b">
     	 	<span> </span>
     	 <div id="adStyleScroll" class="scroll" style="width:auto">
     	 	<ul>
     	 		<li> </li>     	 		
     	 		<li class="active">城际客运站户外LED广告显示屏</li>
     	 		<li>雷锋号车载电视</li>     	 		
     	 		<li>雷锋号（公交型）后座广告</li>     	 		
     	 		<li>雷锋号（长途型）套帽广告</li>     	 		
     	 		<li>雷锋号商务车车载电视、套帽广告</li>     	 		
     	 		<li>盘锦、阜新、本溪 —桃仙国际机场</li>     	 		
     	 		<li></li>
     	 	</ul>
     	 </div>
    </div>
    

    <div data-role="popup" class="ui-content" id="snameWarnning">
    	<div style="color:red;"><i class="fa fa-warning"></i><span>请填写联系人！</span></div>
    </div>
    <div data-role="popup" class="ui-content" id="adTypeWarnning">
    	<div style="color:red;"><i class="fa fa-warning"></i><span>请填写广告具体内容！</span></div>
    </div>
	<div data-role="popup" class="ui-content" id="adStyleWarnning">
    	<div style="color:red;"><i class="fa fa-warning"></i><span>请选择广告样式！</span></div>
    </div>
	<div data-role="popup" class="ui-content" id="mobileWarnning">
    	<div style="color:red;"><i class="fa fa-warning"></i><span>请填写正确的联系方式！</span></div>
    </div>
    <div data-role="popup" class="ui-content" id="beginTimeWarnning">
    	<div style="color:red;"><i class="fa fa-warning"></i><span>请选择开始日期！</span></div>
    </div>
    <div data-role="popup" class="ui-content" id="overTimeWarnning">
    	<div style="color:red;"><i class="fa fa-warning"></i><span>请选择结束日期！</span></div>
    </div>
    <div data-role="popup" class="ui-content" id="priceWarnning">
    	<div style="color:red;"><i class="fa fa-warning"></i><span>请填写预估价格！</span></div>
    </div>

    
  
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
    
    <script type="text/javascript">
    	 	
	    //滑动特效
		//chooseType('#adTypePop','#adType');	
		chooseType('#adStylePop','#adStyle');	
	
		/*货物种类弹框绑定事件*/
		/* $("#adType").bind('click',function(){
			$("#adTypePop").popup('open');			
		}); */
	
		/*送货方式弹框绑定事件*/
		$("#adStyle").bind('click',function(){
			$("#adStylePop").popup('open');			
		});
		
	    function chooseType(popId,valueId){
			/*绑定 click 选择事件*/
			$(popId+">div>ul>li.active").bind('click',function(){
	    		var value = $(this).text();
	    		$(valueId).attr("value",value);
	    		$(popId).popup('close');
	    	})
			/*计算active*/
			 $(popId+">.scroll").on('scrollstop',function(){
			 	var b =-$(this).children('ul').position().top;
			 	var i = Math.ceil(b/50)+1;
			 	$(this).children('ul').children('li').removeClass('active');
			 	$(this).children('ul').children('li').eq(i).addClass('active');
			 	$(popId+">div>ul>li.active").bind('click',function(){
		    		var value = $(this).text();
		    		$(valueId).attr("value",value);
		    		$(popId).popup('close');
		    	})
		 })
		}
	    
   		function finalSub(){  
   			var sname=$("#sname").val();
   			var adType=$("#adType").val();
   			/* var adStyle=$("#adStyle").val();
   			var beginTime=$("#beginTime").val();
   			var overTime=$("#overTime").val();
   			var price=$("#price").val(); */
   			var mobile=$("#mobile").val();
   			
   			if(sname==""){
   				$("#snameWarnning").popup("open");
   				setTimeout(function(){
   					$("#snameWarnning").popup("close");
   				},2000);
   				return null;
   			}   		
   			/* if(adStyle==""){
   				$("#adStyleWarnning").popup("open");
   				setTimeout(function(){
   					$("#adStyleWanning").popup("close");
   				}, 2000);
   				return null;
   			}
   			if(beginTime==""){
   				$("#beginTimeWarnning").popup("open");
   				setTimeout(function(){
   					$("#beginTimeWanning").popup("close");
   				}, 2000);
   				return null;
   			}
   			if(overTime==""){
   				$("#overTimeWarnning").popup("open");
   				setTimeout(function(){
   					$("#overTimeWanning").popup("close");
   				}, 2000);
   				return null;
   			}
   			if(price==""){
   				$("#priceWarnning").popup("open");
   				setTimeout(function(){
   					$("#priceWanning").popup("close");
   				}, 2000);
   				return null;
   			} */
   			
   			if(mobile==""){
   				$("#mobileWarnning").popup("open");
   				setTimeout(function(){
   					$("#mobileWanning").popup("close");
   				}, 2000);
   				return null;
   			}
   			if(adType==""){
   				$("#adTypeWarnning").popup("open");
   				setTimeout(function(){
   					$("#adTypeWarnning").popup("close");
   				},2000);
   				return null;
   			}
   			
   			var params = $("#adForm").serializeArray();
   			//alert(params);
   		    $.ajax({
   		    	url:"${ctx}/surround/addAd.do",
   		    	data:params,   		    	
   		    	dataType:"json",
   		    	success:function(data){   		  
   		    		if(data==1){
   		    			alert("添加成功");
   	   		    		back();
   		    		}else{
   		    			alert("添加失败,请稍后重试!");   
   		    		}
   		    	},
   		    	error:function(e){
   		    		alert("添加失败,请稍后重试!");   		    		
   		    	}
   		    })
   		   
   		}
   		function back(){
    		history.back();
    	}
	   
   	 	function chenckNum(num){				
			var reg=/^((0\d{2,3}-\d{7,8})|(1[3584]\d{9}))$/;
			if(!reg.test(num)){
				return false;
			}
			return true;
		}
	    
	   // 时间的placeholder
	   
	/*   var o = document.getElementById('beginTime');
        o.onfocus = function(){
            this.removeAttribute('placeholder');
        };
        o.onblur = function(){
            if(this.value == '') this.setAttribute('placeholder','请选择开始日期');
        };
        var k = document.getElementById('overTime');
        k.onfocus = function(){
            this.removeAttribute('placeholder');
        };
        k.onblur = function(){
            if(this.value == '') this.setAttribute('placeholder','请选择结束日期');
        };
	     */
	    
    </script>
</body>
</html>