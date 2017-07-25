<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="format-detection" content="telephone=no" />
    <title>扫码购票</title>
    <link rel="stylesheet" href="${ctx }/resource/css/style.css"/>
    <link rel="stylesheet" href="${ctx }/resource/css/main.css" />
    <link rel="stylesheet" href="${ctx }/resource/jquery-mobile/css/themes/default/jquery.mobile-1.4.5.min.css" />
    <link rel="stylesheet" href="${ctx }/resource/font-awesome-4.4.0/css/font-awesome.css" />
    <script type="text/javascript" src="${ctx }/resource/js/jquery-1.10.1.min.js" ></script>
    <script type="text/javascript" src="${ctx }/resource/jquery-mobile/js/jquery.mobile-1.4.5.min.js" ></script>
    <style>
    	 .cxrq{
	    	position:relative;
	    }
    	.ui-select,ui-btn ui-icon-carat-d ui-btn-icon-right ui-corner-all ui-shadow{
			border:0 !important;
			background:#fff !important;
			text-shadow:none !important;
		}
		.ui-page-theme-a .ui-btn{
			position:absolute;
			top:10px;
			right:0;
			margin-right:6px !important;
			font-size:1em !important;
			border:0 !important;
			border-radius:0;
			background:#fff !important;
			text-shadow:none !important;
			font-weight:normal !important;
			margin-top:-8px !important;
		}
		@media screen and (max-width: 320px) {
    	.ui-page-theme-a .ui-btn {
    			top:15px;
    		}
		}
		.ui-shadow {
	    -webkit-box-shadow:none !important;
	    -moz-box-shadow: none !important;
	    box-shadow: none !important;
		}
		.ui-input-text{
			width:100px !important;
			padding-right:10px !important;
		}
		#startTimeTomoStr,#startTimeTodayStr{
			margin-top:10px !important;
			padding-right:-20px !important;
		}
		.orderMessage li.input>div{
					width:190px !important;
					text-align:right !important;
					}
		.ui-input-text{
			width:120px !important;
		} 
		@media only screen and (min-device-width: 414px) and (max-device-width: 736px) and (orientation : portrait) { 
				.orderMessage li.input>div{
					width:270px !important;
					text-align:right !important;
					}
			}
    </style>
</head>
<body class=" " data-role="page">
<div class="box businessBusOrder">
  
    <div class="mainBox bottom0">
    	<%-- <input type="hidden" id="sRouId" name="sRouId" value="${sRouId }" form="ticketForm" />
	    <input type="hidden" id="rouId" name="rouId" value="${rouId }" form="ticketForm" />	  --%>
    	<div class="orderMessage">    
    		<ul>
   				<li class="input">	    			
	    			<img class="seperate img" src="${ctx }/resource/image/main/6bnZ6jCy-0.png"></img>
	    			<span>路线名称</span>		    			
	    			<input type="text" id="rouName" name="rouName" value="${result[0].rouName }" />   
	    		</li> 	    		
		    	 
		    	  <li class="input cxrq">	    			
		    			<img class="seperate img" src="${ctx }/resource/image/main/cash.png"></img>
		    			<span>选择票价</span>	
		    			<select name="carPrice" id="carPrice" onchange="changePrice();" >
		    					<!-- <option value="">请选择票价</option> -->
			    				<c:forEach items="${result }" var="temp">
			    					<option value="${temp.price }">
			    						${temp.price }元&#40;${temp.contentDesc }&#41;					    								    							    					
			    					</option>		
			    				</c:forEach>			    				
		    			</select>				    		
				  </li> 	 
				
	    		<li class="input">	    			
		    			<img class="seperate img" src="${ctx }/resource/image/main/bus.png"></img>
		    			<span>车辆牌号</span>
		    			<input type="text" id="carNo" name="carNo" value="${carNo }" form="ticketForm" readonly="readonly"/>   
		    	</li> 	
	    		<li class="input">
	    			<img class="seperate img"  src="${ctx }/resource/image/main/full.png"></img>
	    			<span>购票总数</span>
	    			<span class="orderNum" id="orderNum">
	    			<i class="fa fa-minus"></i>
	    				<input type="text" id="bookSeat" name="bookSeat" form="ticketForm" style="" data-role="none" readonly value="1" ><small>张</small>
	    			<i class="fa fa-plus"></i></span>
	    		
	    		</li>
	    		
	    		<li class="textBox">
	    			<div class="">
	    				<span>全程票价约</span>	    				
	    				<strong class="red" id="showPrice">${result[0].price }</strong><small>元</small>
	    				<input type="hidden" name="price" id="price" value="${result[0].price }" form="ticketForm" />
	    			</div>
	    			
	    		</li>
	    	</ul>
    	</div>
    	<div id="forRouId">
    			<c:forEach items="${result }" var="temp2">			    				
			    		<input type="hidden" name="tempRouId" value="${temp2.rouId }" />		
			    </c:forEach>
    	</div>
    	<form id="ticketForm" action="${ctx }/ticketBook/tobuyticket.do" method="post">
    		<input type="hidden" name="sRouId" id="sRouId" value="${sRouId }" form="ticketForm"/>    	
    		<input type="hidden" name="businessType" id="businessType" value="${result[0].businessType }" form="ticketForm"/>
    		<input type="hidden" name="rouId" id="rouId" value="" form="ticketForm"/>
	    	<a class="btn blue"  onclick="orderBus();">购票</a>
    	</form>
    
    </div>
    <!--主体结束-->
    <!--用户信息panel-->
	<!-- <div data-role="panel" id="userDetail" class="userDetail" data-display="overlay" data-position="right"  data-position-fixed="true"  >
		<ul>
			<li>
				<span class="logo"><img class="img" src="../../../resource/image/main/icon7.png" /></span>
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

    <script type="text/javascript">    	
		 var start;
		 var index=0;
		 //var time;
		 var type;
		 
		 var $carPrice=$("#carPrice");
		 var $showPrice=$("#showPrice");
		 var $price=$("#price");
		 
		 var num=1;//票数
		 var carPrice='${result[0].price }';//单价
		 var cost = carPrice;//总价
		 var bookNo;
		 var ticketId;
		 
		 
		function changePrice(){

			index = $carPrice.prop('selectedIndex');	
			
			carPrice = $carPrice.val();	
			commonPriceChange();			
		}
		 
		 
		//console.log('${result}')
		 
		 $("#orderNum>i").bind('click',function(){
				num = parseInt($(this).parent().children('input').val());
				if($(this).hasClass('fa-minus')){
					if(num>1){
						$(this).parent().children('input').val(--num);
					}
				}else{
					if(num<7){
						$(this).parent().children('input').val(++num);
					}
				}
				commonPriceChange();				
			})
		
    	function commonPriceChange(){
			var temp=parseFloat(carPrice)*num;
			cost=onePoint(temp);
			
			$showPrice.text(cost);
			$price.val(cost);
		}
    	
		 //取一位小数点:
 		function onePoint(num){
 		 var temp=num.toString();
 		 if(temp.indexOf(".")<0){
 			 temp+=".0";    			 
 		 }
 		 return temp;
 	 }
    	
    	function orderBus(){   		
    		$("#price").val(carPrice);
    		var $tempRouId=$("#forRouId").children().eq(index);
    		var rouId=$tempRouId.val();//1
    		
    		$("#rouId").val(rouId);    	
    		

    		var sRouId=$("#sRouId").val();//2
    		var businessType=$("#businessType").val();
    		var carNo='${carNo}';
    		$.ajax({
    			type:"post",
    			url:"${ctx }/ticketBook/tobuyticket.do?",
    			data:{sRouId:sRouId,rouId:rouId,businessType:businessType,carNo:carNo,price:cost,bookSeat:num},
    			dataType:"json",
    			success:function(e){
    				bookNo=e.bookNo;
    				ticketId=e.ticketId;
    				weChatPaySbm();
    			},error:function(e){
    				alert("提交失败,请稍后再试!");
    			}
    		})	    		 
    	 }
    	
    	//微信支付
    	var weChatPayClicked = false;//防止重复点击flag
    	function weChatPaySbm(){
    		
    		if(weChatPayClicked){
    			
    			//alert("不要重复点击微信支付按钮");
    			return;
    		}
    		weChatPayClicked = true;
    		setTimeout(function (){weChatPay();}, 200);
    	}
    	
	 	function weChatPay(){
	 		weChatPayClicked = false;
	 		//var bookNo = '${tk.bookNo }';
	 		//var price = '${tk.price }';
	 		var price = "1";
	 		
	 	//	var ticketId='${tk.ticketId}';
	 	//	alert(ticketId);
	 		//var price = "1";
    		alert("您好,微信支付功能还未正式开放,仅为测试用,点击支付会收取相应费用");
	 		//alert("订单号"+bookNo);
	 		$.ajax({  
	            url:"${ctx }/weChatPay/payment.do",
	            type: "post",
				data:{"bookNo":bookNo,
					  "price":price},
				dataType: "json",
				success: function(data){
					alert("统一下单接口调用成功,再调微信支付接口");
					WeixinJSBridge.invoke(
			 			       'getBrandWCPayRequest',data,
			 			       function(res){     
			 			   		 	  if(res.err_msg == "get_brand_wcpay_request:ok" ) {
// 			 			   		 		setTimeout("successCall()",3000); 
			 			   		 		window.location.href="${ctx}/ticketBook/edetail.do?ticketId="+ticketId;
			 			   		 	  }else{
			 			   		 		alert(res.err_msg);
			 			   		 	  }
			 			       }
			 			   ); 
				}
	        });
	 		
	 	}
	 
    </script>
</div>
</body>
</html>