<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html >
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>PMC</title>

<meta name="viewport" content="width=device-width,height=device-height,inital-scale=1.0,maximum-scale=1.0,user-scalable=no;">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">

<!-- <link href="css/cate.css" rel="stylesheet" type="text/css" /> -->
<link rel="stylesheet" href="<%=path%>/resouces/css/mall2/cate.css">
<!-- <link href="css/iscroll.css" rel="stylesheet" type="text/css" /> -->
<link rel="stylesheet" href="<%=path%>/resouces/css/iscroll.css">

<!--幻灯片代码-->
<script type="text/javascript" src="<%=path%>/resouces/js/iscroll.js"></script>
<script type="text/javascript">
var myScroll;

function loaded() {
	myScroll = new iScroll('wrapper', {
		snap: true,
		momentum: false,
		hScrollbar: false,
		onScrollEnd: function () {
			document.querySelector('#indicator > li.active').className = '';
			document.querySelector('#indicator > li:nth-child(' + (this.currPageX+1) + ')').className = 'active';
		}
	});
}

document.addEventListener('DOMContentLoaded', loaded, false);
</script>
 
</head>

<body>

<style type="text/css">
/* banner */
.banner img {width: 100%;}
/* music */
.btn_music{display:inline-block;width:35px;height:35px;background:url('<%=path%>/resouces/image/mall2/play.png') no-repeat center center;background-size:100% auto;position:absolute;z-index:100;left:15px;top:340px;}
.btn_music.on{background-image:url("<%=path%>/resouces/image/mall2/stop.png");}	
/* top_menu */

.top_bar{position:fixed;z-index:900;bottom:0;left:0;right:0;margin:auto;font-family:Helvetica,Tahoma, Arial, Microsoft YaHei, sans-serif;}

	.top_menu{display:-webkit-box;border-top:1px solid #b3b3b3;display:block;width:100%;background:rgba(255, 255, 255, 0.7);height:40px;display:-webkit-box;display:box;margin:0;padding:0;-webkit-box-orient:horizontal;background:-webkit-gradient(linear, 0 0, 0 100%, from(#e7e4e7), to(#b9b9b9));}
	.top_menu li{-webkit-box-flex:1;background:-webkit-gradient(linear, 0 0, 0 100%, from(rgba(0, 0, 0, 0.1)), color-stop(50%, rgba(0, 0, 0, 0.2)), to(rgba(0, 0, 0, 0.2))), -webkit-gradient(linear, 0 0, 0 100%, from(rgba(255, 255, 255, 0.1)), color-stop(50%, rgba(255, 255, 255, 0.3)), to(rgba(255, 255, 255, 0.1)));-webkit-background-size:1px 100%, 1px 100%;background-size:1px 100%, 1px 100%;background-position:1px center, 2px center;background-repeat:no-repeat;position:relative;text-align:center;display:inline-block;width:25%;float:left;}
	.top_menu li a label{padding:3px 0 0 3px;font-size:12px;overflow:hidden;}
	.top_menu li a{height:40px;line-height:40px;display:block;text-align:center;color:#4f4d4f;text-shadow:0 1px rgba(255, 255, 255, 0.3);text-decoration:none;border-top:1px solid #f9f9f9;-webkit-box-flex:1;}
	.top_menu li a p{overflow:hidden;margin:0 0 0 0;font-size:12px;display:block!important;line-height:18px;text-align:center;}
	.top_menu li a img{padding:0;height:20px;width:20px;color:#fff;line-height:40px;vertical-align:middle;}
	.top_menu li a:hover,.top_menu li a:active{background-color:#CCCCCC;}	
</style>

<!--音乐播放代码-->
<script src="<%=path%>/resouces/js/jquery-2.1.1.min.js" type="text/javascript"></script>
<script type="text/javascript">
var playbox = (function(){
	//author:eric_wu
	var _playbox = function(){
		var that = this;
		that.box = null;
		that.player = null;
		that.src = null;
		that.on = false;
		//
		that.autoPlayFix = {
			on: true,
			//evtName: ("ontouchstart" in window)?"touchend":"click"
			evtName: ("ontouchstart" in window)?"touchstart":"mouseover"
			
		}

	}
	_playbox.prototype = {
		init: function(box_ele){
			this.box = "string" === typeof(box_ele)?document.getElementById(box_ele):box_ele;
			this.player = this.box.querySelectorAll("audio")[0];
			this.src = this.player.src;
			this.init = function(){return this;}
			this.autoPlayEvt(true);
			return this;
		},
		play: function(){
			if(this.autoPlayFix.on){
				this.autoPlayFix.on = false;
				this.autoPlayEvt(false);
			}
			this.on = !this.on;
			if(true == this.on){
				this.player.src = this.src;
				this.player.play();
			}else{
				this.player.pause();
				this.player.src = null;
			}
			if("function" == typeof(this.play_fn)){
				this.play_fn.call(this);
			}
		},
		handleEvent: function(evt){
			this.play();
		},
		autoPlayEvt: function(important){
			if(important || this.autoPlayFix.on){
				document.body.addEventListener(this.autoPlayFix.evtName, this, false);
			}else{
				document.body.removeEventListener(this.autoPlayFix.evtName, this, false);
			}
		}
	}
	//
	return new _playbox();
})();

playbox.play_fn = function(){
	this.box.className = this.on?"btn_music on":"btn_music";
}
</script>

<script type="text/javascript">
$(document).ready(function(){
	playbox.init("playbox");
	/*
	setTimeout(function() {
		// IE
		if(document.all) {
			document.getElementById("playbox").click();
		}
		// 其它浏览器
		else {
			var e = document.createEvent("MouseEvents");
			e.initEvent("click", true, true);
			document.getElementById("playbox").dispatchEvent(e);
		}
	}, 2000);
	*/
});

</script>
<%-- <span id="playbox" class="btn_music" onclick="playbox.init(this).play();" style="">
	<audio id="audio" loop src="<%=path%>/resouces/mall2/image/mall2/4.mp3"></audio>
</span> --%>



<ul class="mainmenu">
		<s:iterator  value="list" status="st" id="id" var="list" >

		 		<li><a href="${URL}"><img src="<%=path%>/resouces/image/menulist2/<s:property value='#st.index+1'/>.png" /><p>${NAME}</p></a></li> 
				<%-- <s:if   test="#list.NAME=='游戏'">
		          			<li><a href="<%=basePath%>toGame"><img src="<%=path%>/resouces/image/menulist2/<s:property value='#st.index+1'/>.png" /><p>${NAME}</p></a></li>         			   	  
          		</s:if>
          		<s:if   test="#list.NAME=='抢红包'">
		          		<li><a href="#"><img src="<%=path%>/resouces/image/menulist2/<s:property value='#st.index+1'/>.png" /><p>${NAME}</p></a></li>	          			   	  
          		</s:if>
          		<s:if   test="#list.NAME=='我的套餐'">
		          		<li><a href="<%=basePath%>toPackage"><img src="<%=path%>/resouces/image/menulist2/<s:property value='#st.index+1'/>.png" /><p>${NAME}</p></a></li>	         			   	  
          		</s:if>	
          		<s:if   test="#list.NAME=='近期活动'">
		          		<li><a href="<%=basePath%>toActivity"><img src="<%=path%>/resouces/image/menulist2/<s:property value='#st.index+1'/>.png" /><p>${NAME}</p></a></li>	            			   	  
          		</s:if>
          		<s:if   test="#list.NAME=='我的轨迹'">
		          		<li><a href="${URL}"><img src="<%=path%>/resouces/image/menulist2/<s:property value='#st.index+1'/>.png" /><p>${NAME}</p></a></li>        			   	  
          		</s:if>
          		<s:if   test="#list.NAME=='购买兑换'">
		          		<li><a href="<%=basePath%>toConvert"><img src="<%=path%>/resouces/image/menulist2/<s:property value='#st.index+1'/>.png" /><p>${NAME}</p></a></li>         			   	  
          		</s:if>
          		 <s:if   test="#list.NAME=='行为分析'">
		          		<li><a href="<%=basePath%>toBehavior"><img src="<%=path%>/resouces/image/menulist2/<s:property value='#st.index+1'/>.png" /><p>${NAME}</p></a></li> 	          			   	  
          		</s:if>
          		<s:if   test="#list.NAME=='查询余额'">
		          		<li><a href="#"><img src="<%=path%>/resouces/image/menulist2/<s:property value='#st.index+1'/>.png" /><p>${NAME}</p></a></li>        			   	  
          		</s:if>	
          		<s:if   test="#list.NAME=='业务办理'">
		          		<li><a href="<%=basePath%>toHandle"><img src="<%=path%>/resouces/image/menulist2/<s:property value='#st.index+1'/>.png" /><p>${NAME}</p></a></li>         			   	  
          		</s:if>		 --%>				
		</s:iterator>

</ul>
<%-- <div class="banner">
	<div id="wrapper">
		<div id="scroller">
			<ul id="thelist">
				<li><p>BONC01</p><a href="javascript:void(0)"><img src="<%=path%>/resouces/image/mall2/boncdemo3.jpg" /></a></li>
				<li><p>BONC02</p><a href="javascript:void(0)"><img src="<%=path%>/resouces/image/mall2/boncdemo4.jpg" /></a></li>
				<li><p>BONC03</p><a href="javascript:void(0)"><img src="<%=path%>/resouces/image/mall2/boncdemo2.jpg" /></a></li>
				<li><p>BONC04</p><a href="javascript:void(0)"><img src="<%=path%>/resouces/image/mall2/boncdemo1.jpg" /></a></li>
			</ul>
		</div>
	</div>
	<div id="nav">
		<ul id="indicator">
			<li class="active"></li>
			<li></li>
			<li></li>
			<li></li>
		</ul>
	</div>

</div> --%>
<script type="text/javascript">
var count = document.getElementById("thelist").getElementsByTagName("img").length;	

var count2 = document.getElementsByClassName("menuimg").length;

for(i=0;i<count;i++){
 document.getElementById("thelist").getElementsByTagName("img").item(i).style.cssText = " width:"+document.body.clientWidth+"px";
}

document.getElementById("scroller").style.cssText = " width:"+document.body.clientWidth*count+"px";

setInterval(function(){
	myScroll.scrollToPage('next', 0,400,count);
},3500 );

window.onresize = function(){ 
	for(i=0;i<count;i++){
		document.getElementById("thelist").getElementsByTagName("img").item(i).style.cssText = " width:"+document.body.clientWidth+"px";
	}
 document.getElementById("scroller").style.cssText = " width:"+document.body.clientWidth*count+"px";
}
</script>
		
<div class="copyright"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><br><br>

<div class="top_bar">
	<ul id="top_menu" class="top_menu">
	
		
		<li><a href="#"><img src="<%=path%>/resouces/image/mall2/plugmenu6.png"><label>首页</label></a></li><li><a href="#"><img src="<%=path%>/resouces/image/mall2/plugmenu5.png"><label>分享</label></a></li><li><a href="#"><img src="<%=path%>/resouces/image/mall2/plugmenu1.png"><label>拨号</label></a></li><li><a href="#"><img src="<%=path%>/resouces/image/mall2/plugmenu8.png"><label>短信</label></a></li>  
	</ul>
</div>

</body>
</html>