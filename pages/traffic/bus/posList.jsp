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
    <title>地址选择</title>
    <link rel="stylesheet" href="${ctx }/resource/font-awesome-4.4.0/css/font-awesome.css" />
    <link rel="stylesheet" href="${ctx }/resource/css/style.css"/>
    <link rel="stylesheet" type="text/css" href="${ctx }/resource/css/main.css"/>
    <link rel="stylesheet" href="${ctx }/resource/jquery-mobile/css/themes/default/jquery.mobile-1.4.5.min.css" />
    <script src="${ctx }/resource/js/jquery-1.10.1.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="${ctx }/resource/js/main.js" ></script>
     <script type="text/javascript" src="${ctx }/resource/js/angular.min.js" ></script>
    <script type="text/javascript" src="${ctx }/resource/jquery-mobile/js/jquery.mobile-1.4.5.min.js" ></script>
</head>
<body data-role="page">
<div class="box allBus">
    <!--页头-->
   <%--  <div class="topColor">
        <a class="topIcon" onclick="javascript:window.history.back();" data-transition="slide" data-direction="reverse"><img class="img" src="${ctx }/resource/image/main/backup.png"></a>
        <div class="topTitle">城际巴士-选择地址</div>
        <a class="topIcon2" href="#userDetail"><img class="img" src="${ctx }/resource/image/main/user.png"></a>
    </div>
    <div class="clear"></div> --%>
    <div style="background:#35A8D7;height:5px;"></div>
    <span class="topIcon"><i class="fa fa-user"></i></span>
    <!--页头结束-->
    <!--主体-->
    <div class="mainBox  bottom0" id="mainBox">
       <div class="piece">
					<span>A</span>
					<div class="">
						<span>阿金钩</span>
						<span>阿金钩空</span>
						<span>奥林匹克公园</span>
					</div>
				</div>
				<div class="piece">
					<span>B</span>
					<div class="">
						<span>保利花园</span>
						<span>北四马路</span>
						<span>北正街</span>
						<span>北正街北</span>
						<span>伯官</span>
					</div>
				</div>
				<div class="piece">
					<span>C</span>
					<div>
						<span>出口加工厂</span>
					</div>
				</div>
				<div class="piece">
					<span>D</span>
					<div>
						<span>大官屯</span>
						<span>东北冷鲜港</span>
						<span>东陵公园</span>
						<span>东亚国际城</span>
						<span>东洲</span>
						<span>东洲大街</span>
					</div>
				</div>
				<div class="piece">
					<span>E</span>
					<div>
						<span>二0五</span>
						<span>二0一</span>
					</div>
				</div>
				<div class="piece">
					<span>F</span>
					<div>
						<span>方晓</span>
						<span>抚顺北站</span>
						<span>抚顺大学</span>
						<span>抚顺南站</span>
						<span>抚顺四院</span>
						<span>抚顺客运中心</span>
					</div>
				</div>
				<div class="piece">
					<span>G</span>
					<div>
						<span>高尔山公园</span>
						<span>高坎</span>
						<span>高湾</span>
						<span>高湾管委会</span>
						<span>工学院</span>
						<span>国际新城</span>
					</div>
				</div>
				<div class="piece">
					<span>H</span>
					<div>
						<span>高尔山公园</span>
						<span>高坎</span>
						<span>高湾</span>
						<span>高湾管委会</span>
						<span>工学院</span>
						<span>国际新城</span>
					</div>
				</div>
				<div class="piece">
					<span>I</span>
					<div>
						<span>高尔山公园</span>
						<span>高坎</span>
						<span>高湾</span>
						<span>高湾管委会</span>
						<span>工学院</span>
						<span>国际新城</span>
					</div>
				</div>
				<div class="piece">
					<span>J</span>
					<div>
						<span>高尔山公园</span>
						<span>高坎</span>
						<span>高湾</span>
						<span>高湾管委会</span>
						<span>工学院</span>
						<span>国际新城</span>
					</div>
					</div>
				<div class="piece">
					<span>K</span>
					<div>
						<span>高尔山公园</span>
						<span>高坎</span>
						<span>高湾</span>
						<span>高湾管委会</span>
						<span>工学院</span>
						<span>国际新城</span>
					</div>
				</div> 
    </div>
    <!--主体结束-->
    <!--用户信息panel-->
	<div data-role="panel" id="userDetail" class="userDetail" data-display="overlay" data-position="right"  data-position-fixed="true"  >
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
	</div>
    <!--页脚-->
   <%--  <div class="footer">
    <div class="iconBox">
        <div class="icon"><img src="${ctx }/resource/image/main/icon1.png"></div>
        <p>城际巴士</p>
    </div>
    <div class="iconBox">
        <div class="icon"><img src="${ctx }/resource/image/main/icon2.png"></div>
        <p role="mid">商务车</p>
    </div>
    <div class="iconBox">
        <div class="icon"><img src="${ctx }/resource/image/main/icon3.png"></div>
        <p>机场快线</p>
    </div>
    </div> --%>
    <!--页脚结束-->
</div>
	<script type="text/javascript">
		var id;
		id='${id}';
		
		$(function(){
		
			 $.ajax({url:"${ctx}/bus/getposlist.do?json",async: false,
					type: "POST",dataType:'json',error:function(){top.jAlert("服务器异常");},
					success:function(result){	
						console.info(result);
						var upload="";
						for(var name in result){
							console.info(name);
							 upload+= '<div class="piece">';
				   	  		 upload+='<span>'+name+'</span><div class="">'; 
			
				   	  		for(j=0;j<result[name].length;j++){
				   	  			upload+='<span  onclick="selectSite(this)" >'+result[name][j]+'</span>'
				   	  		}				   	  			
				   	  			upload+='</div></div>';
		
				   	  		
						}
						
						console.info(upload);
		
						 $('#mainBox').html(upload);	 
				}}); 	
		})
		/* $(document).on('pagecreate',function(){
			
		 	 $.ajax({url:"${ctx}/bus/getposlist.do?json",async: false,
					type: "POST",dataType:'json',error:function(){top.jAlert("服务器异常");},
					success:function(result){
						var upload;
						for(var name in result){
							 upload+= '<div class="piece">';
				   	  		 upload+='<span>'+name+'</span><div class="">'; 
			
				   	  		for(j=0;j<result[name].length;j++){
				   	  			upload+='<span  onclick="selectSite(this)" >'+result[name][j]+'</span>'
				   	  		}				   	  			
				   	  			upload+='</div></div>';
		
				   	  			 
						}
						 $('#mainBox').ht(upload);	
 				}}); 	
		}) */
			
	    function selectSite(site){
			var sitename=site.innerText;
		 	window.location.href="${ctx }/bus/setsite.do?site="+sitename+"&id="+id; 
			
		}
	
	</script>
</body>
</html>