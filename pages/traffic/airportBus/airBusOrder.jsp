<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="format-detection" content="telephone=no" />
    <title>机场大巴预约订单</title>
    <link rel="stylesheet" href="${ctx }/resource/css/style.css"/>
    <link rel="stylesheet" href="${ctx }/resource/css/main.css" />
    <link rel="stylesheet" href="${ctx }/resource/jquery-mobile/css/themes/default/jquery.mobile-1.4.5.min.css" />
    <link rel="stylesheet" href="${ctx }/resource/font-awesome-4.4.0/css/font-awesome.css" />
    <script type="text/javascript" src="${ctx }/resource/js/jquery-1.10.1.min.js" ></script>
    <script type="text/javascript" src="${ctx }/resource/jquery-mobile/js/jquery.mobile-1.4.5.min.js" ></script>
    <style>
     
    </style>
</head>
<body class="fade in " data-role="page">
<div class="box airportOrder">
    <!--页头-->
   <!--  <div class="topColor">
        <a class="topIcon slide in"><img class="img" src="${ctx }/resource/image/main/backup.png"></a>
        <div class="topTitle">我的预约</div>
        <a class="topIcon2" href="#userDetail"><img class="img" src="${ctx }/resource/image/main/user.png"></a>
    </div>
    <div class="clear"></div> 
    <div style="background:#35A8D7;height:5px;"></div>
    <span class="topIcon"><i class="fa fa-user"></i></span>
    <div class="clear"></div> -->
    <div style="background:#35A8D7;height:5px;"></div>
    <!-- <a class="topIcon" href="#userDetail"><i class="fa fa-user"></i></a> -->
    <!--页头结束-->
    <!--主体-->
    <div class="mainBox bottom0">
    	<div class="orderMessage">
    		<ul>
	    		<li>
	    			<img class="rname img" src="${ctx }/resource/image/main/co-green.png" ></img>
	    			<span>出发地</span>
	    			<span>${startSite }<input type="hidden" id="startSite" name="startSite" value="${startSite }" form="busForm" /></span>	    			
	    		</li>
	    		<li>
	    			<img class="rnum img" src="${ctx }/resource/image/main/co-red.png"></img>
	    			<span>目的地</span>
	    			<span>${endSite }<input type="hidden" id="endSite" name="endSite" value="${endSite }" form="busForm" /></span>
	    		</li>
	    
	    			
	  
	    		 <li class="input">
	    			<img class="rposition img" src="${ctx }/resource/image/main/time.png"></img>
	    			<span>出行时间</span>
    				<input placeholder="请选择出行时间" type="datetime-local" id="startTimeStr"  name="startTimeStr" form="busForm" />
	    		</li> 
	    		<li class="input">
	    			<img class="seperate img" src="${ctx }/resource/image/main/full.png"></img>
	    			<span>联系人</span>
	    			<!-- <input type="text" id="passenger"></input> -->
	    			<input type="text" id="passenger" name="passenger" placeholder="请输入联系人" style="text-align: right" form="busForm" ></input>
	    		</li>
	    		<li class="input">
	    			<img class="img" src="${ctx }/resource/image/main/phone.png"></img>
	    			<span>联系电话</span>
	    			<input type="text" id="mobile" name="mobile" value="${mobile }" form="busForm" />
	    		</li>
	    		<li class="input">
	    			<img class="img" src="${ctx }/resource/image/main/half.png"></img>
	    			<span>身份证号</span>
	    			<input type="text" id="idCardNum"  onblur = "javascript:checkCard();" name="idCardNum" placeholder="请输入乘车人真实信息" style="text-align: right" form="busForm" ></input>
	    		</li>
	    		<li>
	    			<img class="img" src="${ctx }/resource/image/main/order.png"></img>
	    			<span>在线选座</span>
	    			<input type="hidden" id="bookSeat" name="bookSeat" form="busForm" >
	    			<a id="seat"  href="#busSeatPop" data-rel="popup" data-position-to="window">请选择</a>
	    		</li>
	    		<li class="busType">
	    			<img class="busType img" src="${ctx }/resource/image/main/cartype.png"></img>
	    			<span>车型</span>
	    			<img class="img busTypeImg" src="${ctx }/resource/image/main/airbus.png" alt="" height="50" />
	    		</li>
	    		<li>
	    			<img class="totalM img" src="${ctx }/resource/image/main/cash.png"></img>
	    			<span>票价合计</span>
	    			<span class="red price"  id="price" >${price }元</span>
	    			<input type="hidden" name="price" value="${price }" form="busForm" />
	    			
	    		</li>
	    	</ul>
    	</div>
    	<form id="busForm" action="${ctx }/airportbus/submitBusOrder.do" method="post">
	    	<a class="btn blue"  onclick="submitOrder();">提 交 订 单</a>
		</form>
    	<!-- <a class="btn judge blue" onclick="submitOrder()">提 交 订 单</a> -->
    
    </div>
     <div data-role="popup" id="busSeatPop" class="ui-content seatPop" data-overlay-theme="b">
     	 <div class="selectSite">
	        <div class="left">
	        	 <div class="default selected"></div>
	        	 <div class="default selected"></div>
	        	 <div class="default selected"></div>
	        	 <div class="default selected"></div>
	        	 <div class="default selected"></div>
	        	 <div class="default selected"></div>
	        	 <div class="default selected"></div>
	        	 <div class="default selected"></div>
	        	 <div class="default selected"></div>
	        	 <div class="default selected"></div>
	        	 <div class="default selected"></div>
	        	 <div class="default selected"></div>
	        	 <div class="default selected"></div>
	        	 <div class="default selected"></div>
	        	 <div class="default selected"></div>
	        	 <div class="default selected"></div>
	        	 <div class="default selected"></div>
	        	 <div class="default selected"></div>
	        	 <div class="default selected"></div>
	        	 <div class="default selected"></div>
	        </div>
	        <div class="right-top">
	        	<div class="default selected"></div>
	        	 <div class="default selected"></div>
	        	 <div class="default selected"></div>
	        	 <div class="default selected"></div>
	        </div>
	        <div class="right-bottom">
	        	<div class="default selected"></div>
	        	 <div class="default selected"></div>
	        	 <div class="default selected"></div>
	        	 <div class="default selected"></div>
	        </div>
	        <div class="bottom">
	        	<div class="default selected"></div>
	        	 <div class="default selected"></div>
	        	 <div class="default selected"></div>
	        	 <div class="default selected"></div>
	        </div>
	        
	        <div class="notes1"><span class="notes-site selected"></span><span class="notes">不可选</span></div>
	        <div class="notes2"><span class="notes-site optional"></span><span class="notes">可选择</span></div>
	        <div class="notes3"><span class="notes-site choose"></span><span class="notes">已选中</span></div>
	        <img class="img" src="${ctx }/resource/image/main/select-site.png">
	        <a class="btn blue" id="next" onclick='setNum();'>下一步</a>
    </div>
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
    <!--页脚-->
   <%--  <div class="footer">
    <div class="iconBox">
        <div class="icon"><img src="${ctx }/resource/image/main/icon8.png"></div>
        <p>我的积分</p>
    </div>
    <div class="iconBox">
        <div class="icon"><img src="${ctx }/resource/image/main/icon9.png"></div>
        <p>我的预定</p>
    </div>
    <div class="iconBox">
        <div class="icon"><img src="${ctx }/resource/image/main/icon10.png"></div>
        <p>我的建议</p>
    </div>
    </div> --%>
    <!--页脚结束-->
</div>
<script type="text/javascript">
var count=0;
		function setNum(){
			$("#seat").text(count+' 位');
			$("#busSeatPop").popup('close');
		}
    	$(document).ready(function(){
    		/*解决 时间placeholder 不显示的问题*/
    		var o = document.getElementById("startTimeStr");
        	o.onfocus = function(){
        	    this.removeAttribute('placeholder');
        	};
        	o.onblur = function(){
        	    if(this.value == '') this.setAttribute('placeholder','请选择出行时间');
        	}; 
        	
        	
		    $('.selectSite div.default').addClass('optional').removeClass('choose').removeClass('selected');
		    $('.selectSite div.default').bind('click',function(){
		        if(count<5){
		            count++;
		            if($(this).hasClass('choose')){
		                $(this).removeClass('choose').addClass('optional');
		                count-=2;
		            }else{
		                $(this).addClass('choose').removeClass('optional');
		            }
		        }else if(count==5){
		            if($(this).hasClass('choose')){
		                $(this).removeClass('choose').addClass('optional');
		                count-=1;
		            }else{
		                alert('最多选择五个座位');
		            }
		        }
		      //add by mi.
		        var priceDoMath = '${price}';
		        var cost = Math.round(count*parseFloat(priceDoMath)*100)/100.0;
		        var temp=onePoint(cost);
	    		$("#price").text(temp+"元");
	    		$("#price").next().val(temp);
		    });

    	 $("#seatScroll").on('scrollstop',function(){
    	 	var b = -$(this).children('ul').position().top;
    	 	//var i = Math.ceil(b/50)+1;
    	 	$(this).children('ul').children('li').removeClass('active');
    	 	$(this).children('ul').children('li').eq(b).addClass('active');
    	 	$("#seatScroll>ul>li.active").bind('click',function(){
	    		var value = $(this).text();
	    		$("#seat").text(value);
	    		$("#busSeatPop").popup('close');
	    		//add by mi.
	    		var priceDoMath = '${price}';
	    		var temp = Math.round(parseFloat($("#seat").text())*parseFloat(price)*100)/100;
	    		var cost=onePoint(temp);
	    		$("#price").text(cost+"元");
	    		$("#price").next().val(cost);
	    	})
    		
    	}); 
    	
    	 //取一位小数点:
    		function onePoint(num){
    		 var temp=num.toString();
    		 if(temp.indexOf(".")<0){
    			 temp+=".0";    			 
    		 }
    		 return temp;
    	 }
    	 
    	 
   }); 
    	
    	function submitOrder(){
        	var $bookSeat=$("#bookSeat");
        	$bookSeat.val(count);
       		 var price = '${price}';
       		 var startTimeStr = $("#startTimeStr").val();   		
       		 var passenger = $("#passenger").val();
       		 var sitText =$("#seat").text();
       		 var sitnum = count;
       		 //alert("count: "+count);
       		 var idCardNum = $("#idCardNum").val();
       		  if(startTimeStr==null||startTimeStr==""||startTimeStr==undefined){
       			 alert("请输入出行的时间！");
       			 return;
       		 } 
       		 if(passenger==null||passenger==""||passenger==undefined){
       			 alert("请输入乘车联系人的姓名！");
       			 return;
       		 }
       		   		 
       		 
       		 if(sitnum==0){
          			 alert("请选择乘车人数！");
          			 return;
          		 }
      
    		
    		//window.location.href="${ctx}/airportbus/submitBusOrder.do?startTimeStr="+startTimeStr+"&bookType="+bookType+"&totalCost="+totalCost+"&mobile="+mobile+"&passenger="+passenger+"&sitnum="+sitnum;
    		 document.getElementById('busForm').submit();   	
    	}
    	
    	var vcity = {
				11: "北京",
				12: "天津",
				13: "河北",
				14: "山西",
				15: "内蒙古",
				21: "辽宁",
				22: "吉林",
				23: "黑龙江",
				31: "上海",
				32: "江苏",
				33: "浙江",
				34: "安徽",
				35: "福建",
				36: "江西",
				37: "山东",
				41: "河南",
				42: "湖北",
				43: "湖南",
				44: "广东",
				45: "广西",
				46: "海南",
				50: "重庆",
				51: "四川",
				52: "贵州",
				53: "云南",
				54: "西藏",
				61: "陕西",
				62: "甘肃",
				63: "青海",
				64: "宁夏",
				65: "新疆",
				71: "台湾",
				81: "香港",
				82: "澳门",
				91: "国外"
			};
			checkCard = function() {
				var card = document.getElementById('idCardNum').value;
				//是否为空  
				/* if (card === '') {
					alert('请输入身份证号，身份证号不能为空');
					document.getElementById('idCardNum').focus;
					return false;
				} */
				//校验长度，类型  
				if (isCardNo(card) === false) {
					alert('您输入的身份证号码不正确，请重新输入');
					document.getElementById('idCardNum').focus;
					return false;
				}
				//检查省份  
				if (checkProvince(card) === false) {
					alert('您输入的身份证号码不正确,请重新输入');
					document.getElementById('idCardNum').focus;
					return false;
				}
				//校验生日  
				if (checkBirthday(card) === false) {
					alert('您输入的身份证号码生日不正确,请重新输入');
					document.getElementById('idCardNum').focus();
					return false;
				}
				//检验位的检测  
				if (checkParity(card) === false) {
					alert('您的身份证校验位不正确,请重新输入');
					document.getElementById('idCardNum').focus();
					return false;
				}
				alert('输入成功');
				return true;
			};
			//检查号码是否符合规范，包括长度，类型  
			isCardNo = function(card) {
				//身份证号码为15位或者18位，15位时全为数字，18位前17位为数字，最后一位是校验位，可能为数字或字符X  
				var reg = /(^\d{15}$)|(^\d{17}(\d|X)$)/;
				if (reg.test(card) === false) {
					return false;
				}
				return true;
			};
			//取身份证前两位,校验省份  
			checkProvince = function(card) {
				var province = card.substr(0, 2);
				if (vcity[province] == undefined) {
					return false;
				}
				return true;
			};
			//检查生日是否正确  
			checkBirthday = function(card) {
				var len = card.length;
				//身份证15位时，次序为省（3位）市（3位）年（2位）月（2位）日（2位）校验位（3位），皆为数字  
				if (len == '15') {
					var re_fifteen = /^(\d{6})(\d{2})(\d{2})(\d{2})(\d{3})$/;
					var arr_data = card.match(re_fifteen);
					var year = arr_data[2];
					var month = arr_data[3];
					var day = arr_data[4];
					var birthday = new Date('19' + year + '/' + month + '/' + day);
					return verifyBirthday('19' + year, month, day, birthday);
				}
				//身份证18位时，次序为省（3位）市（3位）年（4位）月（2位）日（2位）校验位（4位），校验位末尾可能为X  
				if (len == '18') {
					var re_eighteen = /^(\d{6})(\d{4})(\d{2})(\d{2})(\d{3})([0-9]|X)$/;
					var arr_data = card.match(re_eighteen);
					var year = arr_data[2];
					var month = arr_data[3];
					var day = arr_data[4];
					var birthday = new Date(year + '/' + month + '/' + day);
					return verifyBirthday(year, month, day, birthday);
				}
				return false;
			};
			//校验日期  
			verifyBirthday = function(year, month, day, birthday) {
				var now = new Date();
				var now_year = now.getFullYear();
				//年月日是否合理  
				if (birthday.getFullYear() == year && (birthday.getMonth() + 1) == month && birthday.getDate() == day) {
					//判断年份的范围（3岁到100岁之间)  
					var time = now_year - year;
					if (time >= 3 && time <= 100) {
						return true;
					}
					return false;
				}
				return false;
			};
			//校验位的检测  
			checkParity = function(card) {
				//15位转18位  
				card = changeFivteenToEighteen(card);
				var len = card.length;
				if (len == '18') {
					var arrInt = new Array(7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2);
					var arrCh = new Array('1', '0', 'X', '9', '8', '7', '6', '5', '4', '3', '2');
					var cardTemp = 0,
						i, valnum;
					for (i = 0; i < 17; i++) {
						cardTemp += card.substr(i, 1) * arrInt[i];
					}
					valnum = arrCh[cardTemp % 11];
					if (valnum == card.substr(17, 1)) {
						return true;
					}
					return false;
				}
				return false;
			};
			//15位转18位身份证号  
			changeFivteenToEighteen = function(card) {
				if (card.length == '15') {
					var arrInt = new Array(7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2);
					var arrCh = new Array('1', '0', 'X', '9', '8', '7', '6', '5', '4', '3', '2');
					var cardTemp = 0,
						i;
					card = card.substr(0, 6) + '19' + card.substr(6, card.length - 6);
					for (i = 0; i < 17; i++) {
						cardTemp += card.substr(i, 1) * arrInt[i];
					}
					card += arrCh[cardTemp % 11];
					return card;
				}
				return card;
			};
    	
</script>
</body>
</html>