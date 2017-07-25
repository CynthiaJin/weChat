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
<title>发布快运信息</title>
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
				<li class="input telephone">
   						<a href="javascript:void(0)" onClick="phoneDetail()"><i class="fa fa-phone"></i><span>小件快递咨询电话：024-58217076</span></a>   	   										
    			</li>
    			<li class="input telephone detailPhone">
    				<a href="tel:024-58217076">咨询电话1：024-58217076</a>
    			</li>
    			<li class="input telephone detailPhone">
    				<a href="tel:024-58217172">咨询电话2：024-58217172</a>
    			</li>
    			<li class="input telephone detailPhone">
    				<a href="tel:024-58217131">咨询电话3：024-58217131</a>
    			</li>
    			<li class="input smallTelephone">
    				<span>法定工作日工作时间：8:00-17:00</span>	
    			</li>
    		
				<li class="input"><img class="rname img"
						src="${ctx }/resource/image/main/co-green.png"></img> <span>起始地</span>
						<select name="startPlace" id="startPlace" form="cargoForm"  onchange="handWrites('#startPlace')">
							<option value="沈阳站">沈阳站</option>
							<option value="五爱市场">五爱市场</option>
							<option value="沈阳站">沈阳北站</option>
							<option value="南塔市场">南塔市场</option>
							<option value="十二线">十二线</option>
							<option value="珠琳桥">珠琳桥</option>
							<option value="三好街">三好街</option>
							<option value="龙之梦">龙之梦</option>
							<option value="其他">其他</option>
					</select> 
					<select name="startCity" id="startCity"
						onchange="getArea(this.selectedIndex,document.getElementById('startPlace'));">
							<option value="0">沈阳</option>
							<option value="1">抚顺</option>														
					</select></li>

					<li class="input"><img class="rname img"
						src="${ctx }/resource/image/main/co-red.png"></img>
						<span>目的地</span>
						<select name="endPlace" id="endPlace" form="cargoForm" onchange="handWrites('#endPlace')">
							<option value="沈阳站">沈阳站</option>
							<option value="沈阳北站">沈阳北站</option>
							<option value="五爱市场">五爱市场</option>
							<option value="南塔市场">南塔市场</option>
							<option value="十二线">十二线</option>
							<option value="珠琳桥">珠琳桥</option>
							<option value="三好街">三好街</option>
							<option value="龙之梦">龙之梦</option>
							<option value="其他" >其他</option>
					</select> <select name="endCity" id="endCity"
						onchange="getArea(this.selectedIndex,document.getElementById('endPlace'));">													
							<option value="0">沈阳</option>
							<option value="1">抚顺</option>
					</select></li>
					
					<li class="input"><img class="busType img"
						src="${ctx }/resource/image/main/cartype.png"></img> <span>物品类别</span>
						<select name="cargoType" id="cargoType"  form="cargoForm" onchange="handWrites('#cargoType')">
							<option value="服装">服装</option>
							<option value="食品">食品</option>
							<option value="电子产品">电子产品</option>
							<option value="证件、信函">证件、信函</option>
							<option value="其他">其他</option>					
						</select>
					</li>

					<li class="input"><img class="img"
						src="${ctx }/resource/image/main/phone.png"></img> <span>联系电话</span>
						<input type="text" name="mobile" id="mobile" value=""
						placeholder="联系电话" form="cargoForm"  /></li>

					<li class="input"><img class="rposition img"
						src="${ctx }/resource/image/main/time-green2.png"></img> <span>发货时间</span>
						<input placeholder="请选择发货时间" type="datetime-local" name="sendTime"
						id="sendTime" form="cargoForm" /></li>

					<li class="input"><img class="rposition img"
						src="${ctx }/resource/image/main/time.png"></img> <span>预计到达</span>
						<input type="text" name="getTime" id="getTime" readonly="readonly"
						value="" placeholder="计划到达时间" form="cargoForm" /></li>
					<li class="input"><span>送货方式</span> <img class="img"
						src="${ctx }/resource/image/main/order.png"></img> <input
						type="text" name="deliver" id="deliver" value=""
						placeholder="送货方式" form="cargoForm" /></li>

					<li class="input"><img class="totalM img"
						src="${ctx }/resource/image/main/cash.png"></img> <span>预估价格</span>
						<input type="text" readonly="readonly" value="5元起/件"> <input
						type="hidden" name="price" id="price" value="5" placeholder="预估价格"
						form="cargoForm" /></li>
				</ul>
			</div>
			
			<div class="inputBtn" id="inputBtn" style="display:none">
	    		<input type="text" id="handWrite" placeholder="" />
	    		<span class="orange" id="comment">确认</span>
	    	</div>    	
	    	
			<form id="cargoForm" action="${ctx }/surround/addCargo.do"
				method="post">
				<a class="btn blue" onclick="finalSub();">提 交 订 单</a>
			</form>
		</div>
		
		
    	
    	<script>
    		var tempId;
    		function handWrites(id){
    			var result=$(id).val();
    			//alert(result);
    			if(result=="其他"){
    				//children('span')[0].
    				var content=$(id).parents('li').children('span').html();
        			//alert(content);
        			$("#handWrite").val("");
        			$("#handWrite").attr("placeholder","");
        			$("#handWrite").attr("placeholder","请输入"+content);
        			tempId=id;
        			$("#inputBtn").show();
    			}    			
    		}
    		
    		$("#comment").on("click",function(){
    			$("#inputBtn").hide();
    		 	var content=$("#handWrite").val();
    		 	//alert(content);
    		 	$(tempId).append("<option value='"+content+"' selected='selected'>"+content+"</option>");
    		 	$(tempId).prev().html(content);
    		})
    		
    	</script>
		<!-- <div data-role="popup" id="cargoPop" class="ui-content seatPop"
			data-overlay-theme="b">
			<span> </span>
			<div id="cargoScroll" class="scroll">
				<ul>
					<li></li>
					<li class="active">服装</li>
					<li>食品</li>
					<li>电子产品</li>
					<li>证件、信函</li>
					<li>其他</li>
					<li></li>
				</ul>
			</div> -->
		</div>

		<div data-role="popup" id="deliverTypePop" class="ui-content seatPop"
			data-overlay-theme="b">
			<span> </span>
			<div id="deliverTypeScroll" class="scroll">
				<ul>
					<li></li>
					<li class="active">送货上门</li>
					<li>上门自取</li>
					<li></li>
				</ul>
			</div>
		</div>




		<div data-role="popup" class="ui-content" id="cargoTypeWarnning">
			<div style="color: red;">
				<i class="fa fa-warning"></i><span>请选择物品类别！</span>
			</div>
		</div>
		<div data-role="popup" class="ui-content" id="startPlaceWarnning">
			<div style="color: red;">
				<i class="fa fa-warning"></i><span>请输入始发地！</span>
			</div>
		</div>
		<div data-role="popup" class="ui-content" id="endPlaceWarnning">
			<div style="color: red;">
				<i class="fa fa-warning"></i><span>请输入目的地！</span>
			</div>
		</div>
		<div data-role="popup" class="ui-content" id="mobileWarnning">
			<div style="color: red;">
				<i class="fa fa-warning"></i><span>请填写正确的联系方式！</span>
			</div>
		</div>
		<div data-role="popup" class="ui-content" id="sendTimeWarnning">
			<div style="color: red;">
				<i class="fa fa-warning"></i><span>请选择发货时间！</span>
			</div>
		</div>	
		<div data-role="popup" class="ui-content" id="deliverWarnning">
			<div style="color: red;">
				<i class="fa fa-warning"></i><span>请选择送货方式！</span>
			</div>
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
			//市区域,二级联动
			var places = [
					[ "沈阳站", "沈阳北站", "五爱市场", "南塔市场", "十二线", "珠琳桥", "三好街",
							"龙之梦","其他" ],
					[ "抚顺南站", "抚顺北站", "石化大学", "理工大学", "其他" ]];

			function getArea(cityIndex, place) {		
				place.innerHTML="";
				for(var i=0;i<places[cityIndex].length;i++){
					place.options[i]=new Option(places[cityIndex][i],places[cityIndex][i]);
				}
				place.options[0].selected=true;
			}

			//滑动特效
			//chooseType('#cargoPop', '#cargoType');
			chooseType('#deliverTypePop', '#deliver');

			/*货物种类弹框绑定事件*/
			$("#cargoType").bind('click', function() {
				$("#cargoPop").popup('open');
			});
			/*送货方式弹框绑定事件*/
			$("#deliver").bind('click', function() {
				$("#deliverTypePop").popup('open');
			});

			function chooseType(popId, valueId) {
				/*绑定 click 选择事件*/
				$(popId + ">div>ul>li.active").bind('click', function() {
					var value = $(this).text();
					$(valueId).attr("value", value);
					$(popId).popup('close');
				})
				/*计算active*/
				$(popId + ">.scroll").on(
						'scrollstop',
						function() {
							var b = -$(this).children('ul').position().top;
							var i = Math.ceil(b / 50) + 1;
							$(this).children('ul').children('li').removeClass(
									'active');
							$(this).children('ul').children('li').eq(i)
									.addClass('active');
							$(popId + ">div>ul>li.active").bind('click',
									function() {
										var value = $(this).text();
										$(valueId).attr("value", value);
										$(popId).popup('close');
									})
						})
			}
			
	
			function finalSub() {
				var cargoType=$("#cargoType").val();
				var startPlace=$("#startPlace").val();
				var endPlace=$("#endPlace").val();
				var mobile=$("#mobile").val().trim();
				var sendTime=$("#sendTime").val();
				var deliver=$("#deliver").val();
				if(cargoType==""){
					$("#cargoTypeWarnning").popup('open');
					setTimeout(function(){
						$("#cargoTypeWarnning").popup('close');
					},2000);
					return null;
				}
				if(startPlace==""){
					$("#startPlaceWarnning").popup('open');
					setTimeout(function(){
						$("#startPlaceWarnning").popup('close');
					},2000);
					return null;
				}
				if(endPlace==""){
					$("#endPlaceWarnning").popup('open');
					setTimeout(function(){
						$("#endPlaceWarnning").popup('close');
					},2000);
					return null;
				}		
				if(!chenckNum(mobile)){
					$("#mobileWarnning").popup('open');
					setTimeout(function(){
						$("#mobileWarnning").popup('close');
					},2000);
					return null;
				}		
				if(sendTime=="" || sendTime== null || sendTime == "undefined"){
					$("#sendTimeWarnning").popup('open');
					setTimeout(function(){
						$("#sendTimeWarnning").popup('close');
					},2000);
					return null;
				}		
				if(deliver==""){
					$("#deliverWarnning").popup('open');
					setTimeout(function(){
						$("#deliverWarnning").popup('close');
					},2000);
					return null;
				}				
				
				var params = $("#cargoForm").serializeArray();
				$.ajax({
					url : "${ctx}/surround/addCargo.do",
					data : params,
					dataType : "json",
					success : function(data) {
						if (data == 1) {
							alert("添加成功");
							back();
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

			/* $("#sendTime").on("click",function(){
				var $temp=$(this);   	
				$temp.attr("placeholder","");
				
			}) */

			$("#sendTime").blur(
					function() {
						var tempTime = $("#sendTime").val();
						if (tempTime != null && tempTime != ""
								&& tempTime != "undefined") {
							tempTime = tempTime.replace("T", " ").trim();
							var dt = new Date(tempTime.replace(/-/, "/"));
							var t = dt.getTime();
							t += 5400000;
							dt = new Date(t).Format("yyyy-MM-dd hh:mm");
							$("#getTime").val(dt);
						} else {
							$("#sendTime").attr("placeholder", "选择发货时间");
						}
					})

			//格式化时间
			Date.prototype.Format = function(fmt) { //author: meizz 
				var o = {
					"M+" : this.getMonth() + 1, //月份 
					"d+" : this.getDate(), //日 
					"h+" : this.getHours(), //小时 
					"m+" : this.getMinutes(), //分 
					"s+" : this.getSeconds(), //秒 
					"q+" : Math.floor((this.getMonth() + 3) / 3), //季度 
					"S" : this.getMilliseconds()
				//毫秒 
				};
				if (/(y+)/.test(fmt))
					fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "")
							.substr(4 - RegExp.$1.length));
				for ( var k in o)
					if (new RegExp("(" + k + ")").test(fmt))
						fmt = fmt.replace(RegExp.$1,
								(RegExp.$1.length == 1) ? (o[k])
										: (("00" + o[k])
												.substr(("" + o[k]).length)));
				return fmt;
			}
		</script>
</body>
</html>