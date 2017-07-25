<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head lang="en">
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="format-detection" content="telephone=no" />
<title>机场快线选择出行</title>
<link rel="stylesheet" href="${ctx }/resource/css/style.css" />
<link rel="stylesheet" type="text/css"
	href="${ctx }/resource/css/main.css" />
<link rel="stylesheet" href="${ctx }/resource/font-awesome-4.4.0/css/font-awesome.css" />
<link rel="stylesheet"
	href="${ctx }/resource/jquery-mobile/css/themes/default/jquery.mobile-1.4.5.min.css" />
<script src="${ctx }/resource/js/jquery-1.10.1.min.js"
	type="text/javascript"></script>
<script type="text/javascript" src="${ctx }/resource/js/main.js"></script>
<script type="text/javascript"
	src="${ctx }/resource/jquery-mobile/js/jquery.mobile-1.4.5.min.js"></script>
	 <script type="text/javascript" src="${ctx }/resource/js/flow.js"></script>
<style>
	.mainBox .editChosen>li>.editBox
	{
	
		overflow-x:hidden;
	}
	.infodeta ul li{
		width:50%;
		float:left;
		text-align:center;
		padding:10px 0;
	}
	.infodeta ul li a{
		display:inline-block;
		height:100%;
	}
	.infodeta ul li a img{
		width:28px;
		margin:3px 0;
	}
	.sel-opt{
		border:0 !important;
		background:#fff !important;
		text-align:center !important;
	}
	.sel-opt option{
		text-align:center;
	}
	.ui-select,ui-btn ui-icon-carat-d ui-btn-icon-right ui-corner-all ui-shadow{
		border:0 !important;
		background:#fff !important;
		text-shadow:none !important;
	}
	.ui-page-theme-a .ui-btn{
		width:60px !important;
		float:right !important;
		margin-right:6px !important;
		font-size:1em !important;
		border:0 !important;
		border-radius:0;
		background:#fff !important;
		text-shadow:none !important;
		font-weight:normal !important;
		margin-top:-8px !important;
	}
	.ui-shadow {
    -webkit-box-shadow:none !important;
    -moz-box-shadow: none !important;
    box-shadow: none !important;
}
.hideBtn{
	display:none !important;
}
.showBtn{
	display:block !important;
}
</style>
</head>
<body data-role="page">
	<div class="box airportBusList">
	<div style="background:#35A8D7;height:5px;"></div>
		<div class="mainBox bottom0 top5">
			<div class="brandBox">
	       		<div class="scrollImg">
					<ul id="imgContainer" style="display: none;" class="airbusimg">
						<li><img class="img" src="${ctx }/resource/image/main/u38.jpg" alt=""/></li>
						<li><img class="img" src="${ctx }/resource/image/main/u40.jpg" alt=""/></li>
						<li><img class="img" src="${ctx }/resource/image/main/u42.jpg" alt=""/></li>
					</ul>
					<ul id="imgContainer" class="mpvimg">
						<li><img class="img" src="${ctx }/resource/image/main/u97.jpg" alt=""/></li>
						<li><img class="img" src="${ctx }/resource/image/main/banner1.png" alt=""/></li>
						<li><img class="img" src="${ctx }/resource/image/main/banner01.png" alt=""/></li>
						<li><img class="img" src="${ctx }/resource/image/main/banner02.png" alt=""/></li>
					</ul>
				</div>
	       </div>
			<ul class="editChosen">
	    		<li class="active">
	    			<span class="mpv">商务车</span>
	    			<div class="editBox list">
	    				<div class="searchArea business" id="mpv">
		    				 <div class="iconInputBox">
		    				 	<small>出发地</small>
		    				 	<input type="text" name="businessStart" readonly="readonly"  id="businessStart" class="no start" data-role="none"  value="沈阳桃仙国际机场" >
		    				 	<div class="hidepage" style="display:none;">
			    				 	<select class="sel-opt" id="businessEnd1" >
			    				 		<c:forEach items="${businessList }" var="business" varStatus="status">     	 				
							     	 			<c:choose>
							     	 				<c:when test="${status.first==true}">
							     	 					<option value="${business.startSite}">${business.startSite }</option>
							     	 				</c:when>   
							     	 				<c:otherwise>
							     	 					<option value="${business.startSite}">${business.startSite }</option>
							     	 				</c:otherwise>   
							     	 			</c:choose>    	 				     	 					
						     	 			</c:forEach>  
			    				 	</select>
		    				 	</div>
		    				 </div>
		    				 <!-- <i class="fa fa-exchange" id="businessExchangeBtn"></i> -->
		    				 <i class="fa fa-exchange" id="bchange"></i>
		    				 <div class="iconInputBox">
		    				 	<small>目的地</small>
		    				 	<!-- <input type="text" name="businessEnd" readonly="readonly" id="businessEnd" class="no cityChoose" data-role="none" value="请点击选择" /> -->
		    				 	<input type="text" name="businessStart" readonly="readonly"  id="businessEnd" class="no start" data-role="none"  value="沈阳桃仙国际机场" style="display:none;">
			    				 	<div class="showpage">
				    				 	<select class="sel-opt" id="businessEnd2">
				    				 		<c:forEach items="${businessList }" var="business" varStatus="status">     	 				
							     	 			<c:choose>
							     	 				<c:when test="${status.first==true}">
							     	 					<option value="${business.startSite}">${business.startSite }</option>
							     	 				</c:when>   
							     	 				<c:otherwise>
							     	 					<option value="${business.startSite}">${business.startSite }</option>
							     	 				</c:otherwise>   
							     	 			</c:choose>    	 				     	 					
						     	 			</c:forEach>     	 		
				    				 	</select>
			    				 	</div>
		    				 </div>
	    				</div>
	    				 <a class="btn blue" onClick="businessSubmit();"><span><img src="${ctx }/resource/image/main/u94.png" style="width:20px;margin-right:10px;vertical-align: middle;"></span>开始搜索</a>
	    				 <div class="infodeta">
	    				 	<ul>
	    				 		<li>
	    				 			<a href="tel:024-23890555">
	    				 				<span><img src="${ctx }/resource/image/main/u707.png"></span><br />
	    				 				<span>咨询电话</span>
	    				 			</a>
	    				 		</li>
	    				 		<li onclick="toFrequent()">
	    				 			<a href="">
	    				 				<span><img src="${ctx }/resource/image/main/u688.png"></span><br />
	    				 				<span>全部时刻表</span>
	    				 			</a>
	    				 		</li>
	    				 	</ul>
	    				 </div>
	    				 <h4 style="background:#f9f9f9;padding:10px;font-size:16px;">产品介绍</h4>
					       	<div class="tagedBox"  style="background:#f9f9f9;">
					       		 <img class="img" src="${ctx }/resource/image/main/1111.jpg" style="margin:10px 0;">
					       	</div>
	    			</div>			
	    		</li>
	    		<li>
	    			<span class="airbus">机场大巴</span>
	    			<div class="editBox">
	    				<div class="searchArea bus" id="airbus">
		    				 <div class="iconInputBox">
		    				 	<small>出发地</small>
		    				 	<input type="text" name="busStart" id="busStart" class="no start" data-role="none"  readonly="readonly"  value="沈阳桃仙国际机场" >
		    				 	<div class="hidepage" style="display:none;">
			    				 	<select class="sel-opt" id="businessEnd3" >
				    				 	<c:forEach items="${busList }" var="bus" varStatus="status">     	 				
							     	 			<c:choose>
							     	 				<c:when test="${status.first==true}">
							     	 					<option value="${bus.startSite}">${bus.startSite }</option>
							     	 				</c:when>   
							     	 				<c:otherwise>
							     	 					<option value="${bus.startSite}">${bus.startSite }</option>
							     	 				</c:otherwise>   
							     	 			</c:choose>    	 				     	 					
						     	 			</c:forEach>     	 	
			    				 		
			    				 		<!-- <option value="葫芦岛市">葫芦岛市</option> -->
			    				 	</select>
		    				 	</div>
		    				 </div>
		    				 <!-- <i class="fa fa-exchange" id="busExchangeBtn"></i> -->
		    				 <i class="fa fa-exchange" id="bchange1"></i>
		    				 <div class="iconInputBox">
		    				 	<small>目的地</small>
		    				 	<small style="position:absolute;right:2px;top:0px;width:54px;">(客运站)</small>		    				 	
		    				 	<!-- <input type="text" name="busEnd" id="busEnd" class="no cityChoose" data-role="none" readonly="readonly"  value="请点击选择" /> -->
		    				 	<input type="text" name="businessStart" readonly="readonly"  id="businessEnd11" class="no start" data-role="none"  value="沈阳桃仙国际机场" style="display:none;">
			    				 	<div class="showpage">
				    				 	<select class="sel-opt" id="businessEnd4">
				    				 		<c:forEach items="${busList }" var="bus" varStatus="status">     	 				
							     	 			<c:choose>
							     	 				<c:when test="${status.first==true}">
							     	 					<option value="${bus.startSite}">${bus.startSite }</option>
							     	 				</c:when>   
							     	 				<c:otherwise>
							     	 					<option value="${bus.startSite}">${bus.startSite }</option>
							     	 				</c:otherwise>   
							     	 			</c:choose>    	 				     	 					
						     	 			</c:forEach>     	 	
				    				 		<!-- <option value="葫芦岛市">葫芦岛市</option> -->
				    				 	</select>
			    				 	</div>
		    				 </div>
	    				</div>
	    				 <a class="btn blue" onClick="busSubmit();">开始搜索<span><img src="${ctx }/resource/image/main/u94.png" style="width:20px;margin-right:10px;vertical-align: middle;"></span></a>
	    				 <div class="infodeta">
	    				 	<ul>
	    				 		<li>
	    				 			<a href="tel:024-23890555">
	    				 				<span><img src="${ctx }/resource/image/main/u707.png"></span><br />
	    				 				<span>咨询电话</span>
	    				 			</a>
	    				 		</li>
	    				 		<li onclick="toFrequent();">
	    				 			<a>
	    				 				<span><img src="${ctx }/resource/image/main/u688.png"></span><br />
	    				 				<span>全部时刻表</span>
	    				 			</a>
	    				 		</li>
	    				 	</ul>
	    				 </div>
	    				 <h4 style="background:#f9f9f9;;padding:10px;">产品介绍</h4>
					       	<div class="tagedBox"  style="background:#f9f9f9;">
					       		 <img class="img" src="${ctx }/resource/image/main/uintro.png"  style="margin:10px 0;">
					       	</div>
	    			</div>				
	    		</li>
	    		
	    	</ul>
	    	
		</div>
	
	</div>

	<script type="text/javascript">
	
	//index 为0 商务车  左为机场,右为城市; index=1 相反;
	//index2=2 机场巴士  左为机场,右为城市; index=3 相反;
	var index = 0;
	var index2 = 2;
	
	
	$(function(){
		
		
		//更换图片
		$(".mpvimg").scrollImage();
		$("#imgContainer").scrollImage();
		$('.airbus').click(function(){
			$('.mpvimg').css('display','none');
			$('.airbusimg').css('display','block');
		})
		$('.mpv').click(function(){
			$('.mpvimg').css('display','block');
			$('.airbusimg').css('display','none');
		})
		
		//交换1
		$('#bchange').click(function(){
			if(index == 0){
				var city1 = $('.showpage #businessEnd2').val();
				$('#mpv .iconInputBox #businessStart').toggleClass('hideBtn');
				$('#mpv .iconInputBox .hidepage').toggleClass('showBtn');
				$('#mpv .iconInputBox .showpage').toggleClass('hideBtn');
				$('#mpv .iconInputBox #businessEnd').toggleClass('showBtn');
				$('#businessEnd1').val(city1);
				$('#businessEnd1').prev().html(city1);
				index = 1;
				return;
			}
			if(index == 1){
				var city2 = $('#businessEnd1').val();
				$('#mpv .iconInputBox #businessStart').toggleClass('hideBtn');
				$('#mpv .iconInputBox .hidepage').toggleClass('showBtn');
				$('#mpv .iconInputBox .showpage').toggleClass('hideBtn');
				$('#mpv .iconInputBox #businessEnd').toggleClass('showBtn');
				$('#businessEnd2').val(city2);
				$('#businessEnd2').prev().html(city2);
				index = 0;
			}
		})
	
		$('#bchange1').click(function(){
			if(index2 == 2){
				var city4 = $('.showpage #businessEnd4').val();
				$('#airbus .iconInputBox #busStart').toggleClass('hideBtn');
				$('#airbus .iconInputBox .hidepage').toggleClass('showBtn');
				$('#airbus .iconInputBox .showpage').toggleClass('hideBtn');
				$('#airbus .iconInputBox #businessEnd11').toggleClass('showBtn');
				$('#businessEnd3').val(city4);
				$('#businessEnd3').prev().html(city4);
				index2 = 3;
				return;
			}
			if(index2 == 3){
				var city3 = $('#businessEnd3').val();
				$('#airbus .iconInputBox #busStart').toggleClass('hideBtn');
				$('#airbus .iconInputBox .hidepage').toggleClass('showBtn');
				$('#airbus .iconInputBox .showpage').toggleClass('hideBtn');
				$('#airbus .iconInputBox #businessEnd11').toggleClass('showBtn');
				$('#businessEnd4').val(city3);
				$('#businessEnd4').prev().html(city3);
				index2 = 2;
			}
			
		})
	})
		$(".editChosen>li>span").bind('click',function(){
			$(".editChosen>li").removeClass('active');
			$(this).parent().addClass('active');
		}) 
		
	
		//更换数值
		
		var $businessStart=$("#businessStart");
		var $businessEnd=$("#businessEnd");
		var $busStart=$("#busStart");
		var $busEnd=$("#busEnd");
		$businessEnd.bind("click",businessEndBind);
		$busEnd.bind("click",busEndBind);
		
		function exchangeBusiness(){		
			
			var start  =$businessStart.val();//沈阳
			var end =$businessEnd.val();//其他  绑
			$businessStart.val(end);//其他
			$businessEnd.val(start);	//	沈阳
			var startTemp=end;//其他	
		
			if(startTemp.indexOf("沈阳")>-1){
				$businessStart.unbind("click",businessStartBind);
				$businessEnd.bind("click",businessEndBind);
			}else{
				$businessStart.bind("click",businessStartBind);
				$businessEnd.unbind("click",businessEndBind);
			}
			
		}
		function exchangeBus(){		
			
			var start  =$busStart.val();//沈阳
			var end =$busEnd.val();//其他  绑
			$busStart.val(end);//其他
			$busEnd.val(start);	//	沈阳
			var startTemp=end;//其他	
		
			if(startTemp.indexOf("沈阳")>-1){
				$busStart.unbind("click",busStartBind);
				$busEnd.bind("click",busEndBind);
			}else{
				$busStart.bind("click",busStartBind);
				$busEnd.unbind("click",busEndBind);
			}
			
		}
		
		
		function businessStartBind(){			
			$("#businessStartPop").popup('open');
			selectCity('#businessStartPop','#businessStart');
		}
		function businessEndBind(){			
			$("#businessEndPop").popup('open');
			selectCity('#businessEndPop','#businessEnd');
		}
		function busStartBind(){			
			$("#busStartPop").popup('open');
			selectCity('#busStartPop','#busStart');
		}
		function busEndBind(){			
			$("#busEndPop").popup('open');
			selectCity('#busEndPop','#busEnd');
		}
		
		/*商务车  交换出发地目的地 绑定事件*/
		$("#businessExchangeBtn").bind('click',function(){
			exchangeBusiness();
		})
		/*大巴车  交换出发地目的地 绑定事件*/
		$("#busExchangeBtn").bind('click',function(){
			exchangeBus();
		})
		
		
		/*商务车弹框绑定事件*/
		/*  $("#businessCityChoose").bind('click',function(){
			$("#businessPop").popup('open');			
		}); 
		 */
		
		
		
		/*大巴车 弹框绑定事件*/
		/* $("#busCityChoose").bind('click',function(){
			$("#busPop").popup('open');
		}); */
		
		function selectCity(popId,valueId){
			/*绑定 click 选择事件*/
			/* $(popId+">div>ul>li.active").bind('click',function(){
	    		var value = $(this).text();
	    		$(valueId).val(value);
	    		$(popId).popup('close');
	    		alert($(valueId.val()))
	    	}) */
			/*计算active*/
			 $(popId+">.scroll").on('scrollstop',function(){
			 	var b =-$(this).children('ul').position().top;
			 	var i = Math.ceil(b/50)+1;
			 	$(this).children('ul').children('li').removeClass('active');
			 	$(this).children('ul').children('li').eq(i).addClass('active');
			 	$(popId+">div>ul>li.active").bind('click',function(){
		    		var value = $(this).text();
		    		$(valueId).val(value);
		    		$(popId).popup('close');
		    	})  
		 })
		}
		
		
	
		
		function toFrequent(){
				window.location.href="${ctx}/airportbus/tofrequent.do";
		}		
	
	
  			function busSubmit(){
  				//alert(index2);
  				$busStart=$("#businessEnd3");
  				busStart=$busStart.val();
  			
	  			$busEnd=$("#businessEnd4");
	  			busEnd=$busEnd.val();
	  			if(index2 == 2){
	  				busStart="沈阳桃仙国际机场";
	  			}else{
	  				busEnd="沈阳桃仙国际机场";
	  			}
	  			
	  			window.location.href="${ctx}/airportbus/searchBusRouteMap.do?startSite="+busStart+"&endSite="+busEnd;
	  			/* if(busStart =="" || busStart=="undefined"){
	  				alert("请选择城市!")
	  			}else if(busEnd =="" || busEnd=="undefined"){
	  				alert("请选择城市!")
	  			}else{
	  				
	  			} */
  			}
  			
  			function businessSubmit(){
  				//alert(index);
  				$businessStart=$("#businessEnd1");
  				businessStart=$businessStart.val();
  				//one=$businessStart.attr("name");		  				
	  			//alert(businessStart);
	  			
	  			$businessEnd=$("#businessEnd2");
	  			businessEnd=$businessEnd.val();
	  			if(index == 0){
	  				businessStart="沈阳桃仙国际机场";
	  			}else{
	  				businessEnd="沈阳桃仙国际机场";
	  			}
	  			window.location.href="${ctx}/airportbus/in/chooseInMap.do?startSite="+businessStart+"&endSite="+businessEnd;
	  			//two=$businessCityChoose.attr("name");
	  			//alert(businessEnd);	
	  			/* if(businessStart =="请点击选择" || businessStart=="undefined"){
	  				alert("请选择城市!")
	  			}else if(businessEnd =="请点击选择" || businessEnd=="undefined"){
	  				alert("请选择城市!")
	  			}else{
	  				window.location.href="${ctx}/airportbus/in/chooseInMap.do?startSite="+businessStart+"&endSite="+businessEnd;
	  			} */
  			}

	
	</script>
	
		

</body>
</html>