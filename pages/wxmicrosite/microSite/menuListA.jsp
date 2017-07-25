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
<!DOCTYPE HTML>
<html>
<head>
<title>微空间</title>
<script src="<%=path%>/resouces/js/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src="<%=path%>/resouces/js/manhuatoTop.1.0.js" type="text/javascript"></script>
<script src="<%=path%>/resouces/js/common.js" type="text/javascript"></script>
<link href="<%=path%>/resouces/css/m.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="<%=path%>/resouces/css/idangerous.swiper.css">
<link rel="stylesheet" href="<%=path%>/resouces/css/iscroll.css">
<link rel="stylesheet" href="<%=path%>/resouces/css/cate.css">
<link rel="stylesheet" href="<%=path%>/resouces/css/style.css">
<script src="<%=path%>/resouces/js/idangerous.swiper-1.9.1.min.js"></script>
<script src="<%=path%>/resouces/js/idangerous.swiper.scrollbar-1.2.js"></script>
<script src="<%=path%>/resouces/js/swiper.js"></script>
<style type="text/css">
		  body{background: url(<%=path%>/resouces/image/bg.gif) repeat;}
</style>
</head>
<body>
<div id="frame">	
	 <div id="top">
			<a id="logo" href="#" style="left:0px;"><img src="<%=path%>/resouces/image/bonclogo.png" align="top"></a>
			<a id="title" >微空间</a>
			<span id="list">
		    <a href="<%=basePath%>toLogin"><img src="<%=path%>/resouces/image/userlogin.png" align="top"></a> 
			</span>
	</div> 
	<div id="con">
		<div style="margin:0 auto;position:relative;width:100%;max-width:500px;height:auto;margin-top:10px;">
			<img src="<%=path%>/resouces/image/bg.png" width=100% style="vertical-align:top">
			<div class="home-device">
				<div class="swiper-main">
					<div class="swiper-container swiper1">
					<div class="swiper-wrapper">
					<div class="swiper-slide"><a href="<%=basePath%>toIntroduce"><img  id="pc_0" src="<%=path%>/resouces/uploadpic/AD/bonc01.jpg" width=100% /></a></div>
							<div class="swiper-slide"><a  href="<%=basePath%>toIntroduce"><img id="pc_1" src="<%=path%>/resouces/uploadpic/AD/bonc02.jpg" width=100% /></a></div>
							<div class="swiper-slide"><a href="<%=basePath%>toIntroduce"><img  id="pc_2" src="<%=path%>/resouces/uploadpic/AD/bonc03.jpg" width=100% /></a></div>
						</div>
					</div>
				</div>
				<div class="pagination pagination1"></div>
			</div>
		</div>

		<div id="menudiv" style="margin:0 auto;position:relative;width:100%;max-width:500px;height:auto;margin-top:0px;">
				
				<s:iterator  value="list" status="st" id="id" var="list" >		  
				    	<div class="tm_div" style="float:left;width:30.67%;height:auto;margin-left:2%;overflow:hidden;margin-top:10px;">
		
							 <a href="${URL}"><img src="<%=path%>/resouces/upload/m_pic/<s:property value='#st.index+1'/>.jpg" style="position:relative;width:100%;top:0px;left:0px;"></a> 
		
							 <a href="${URL}" style="position:absolute;width:100%;height:12px;line-height:12px;text-align:left;top:8px;left:8px;text-decoration:none;color:#ffffff;">${NAME}</a>
		
						</div>             	               
          			    	  <%--  <s:if   test="#list.NAME=='游戏'">
		          			   	 <div class="tm_div" style="float:left;width:30.67%;height:auto;margin-left:2%;overflow:hidden;margin-top:10px;">		
									 <a href="http://192.168.6.198/wxgw/toGame"><img src="<%=path%>/resouces/upload/m_pic/<s:property value='#st.index+1'/>.jpg" style="position:relative;width:100%;top:0px;left:0px;"></a> 		
									 <a href="http://192.168.6.198/wxgw/toGame" style="position:absolute;width:100%;height:12px;line-height:12px;text-align:left;top:8px;left:8px;text-decoration:none;color:#ffffff;">${NAME}</a>		
								</div> 	          			   	  
          			   	  </s:if>
          			   	   <s:if   test="#list.NAME=='抢红包'">
		          			   	 <div class="tm_div" style="float:left;width:30.67%;height:auto;margin-left:2%;overflow:hidden;margin-top:10px;">		
									 <a href="http://192.168.6.198/wxgw/table"><img src="<%=path%>/resouces/upload/m_pic/<s:property value='#st.index+1'/>.jpg" style="position:relative;width:100%;top:0px;left:0px;"></a> 		
									 <a href="http://192.168.6.198/wxgw/table" style="position:absolute;width:100%;height:12px;line-height:12px;text-align:left;top:8px;left:8px;text-decoration:none;color:#ffffff;">${NAME}</a>		
								</div> 	          			   	  
          			   	  </s:if>					
							 <s:if   test="#list.NAME=='我的套餐'">
		          			   	 <div class="tm_div" style="float:left;width:30.67%;height:auto;margin-left:2%;overflow:hidden;margin-top:10px;">		
									 <a href="http://192.168.6.198/wxgw/toPackage"><img src="<%=path%>/resouces/upload/m_pic/<s:property value='#st.index+1'/>.jpg" style="position:relative;width:100%;top:0px;left:0px;"></a> 		
									 <a href="http://192.168.6.198/wxgw/toPackage" style="position:absolute;width:100%;height:12px;line-height:12px;text-align:left;top:8px;left:8px;text-decoration:none;color:#ffffff;">${NAME}</a>		
								</div> 	          			   	  
          			   	  </s:if>	
          			   	   <s:if   test="#list.NAME=='近期活动'">
		          			   	 <div class="tm_div" style="float:left;width:30.67%;height:auto;margin-left:2%;overflow:hidden;margin-top:10px;">		
									 <a href="<%=basePath%>toActivity"><img src="<%=path%>/resouces/upload/m_pic/<s:property value='#st.index+1'/>.jpg" style="position:relative;width:100%;top:0px;left:0px;"></a> 		
									 <a href="<%=basePath%>toActivity" style="position:absolute;width:100%;height:12px;line-height:12px;text-align:left;top:8px;left:8px;text-decoration:none;color:#ffffff;">${NAME}</a>		
								</div> 	          			   	  
          			   	  </s:if>	
          			   	   <s:if   test="#list.NAME=='我的轨迹'">
		          			   	 <div class="tm_div" style="float:left;width:30.67%;height:auto;margin-left:2%;overflow:hidden;margin-top:10px;">		
									 <a href="http://192.168.6.198/wxgw/lbs"><img src="<%=path%>/resouces/upload/m_pic/<s:property value='#st.index+1'/>.jpg" style="position:relative;width:100%;top:0px;left:0px;"></a> 		
									 <a href="http://192.168.6.198/wxgw/lbs" style="position:absolute;width:100%;height:12px;line-height:12px;text-align:left;top:8px;left:8px;text-decoration:none;color:#ffffff;">${NAME}</a>		
								</div> 	          			   	  
          			   	  </s:if>
          			   	   <s:if   test="#list.NAME=='购买兑换'">
		          			   	 <div class="tm_div" style="float:left;width:30.67%;height:auto;margin-left:2%;overflow:hidden;margin-top:10px;">		
									 <a href="http://192.168.6.198/wxgw/toConvert"><img src="<%=path%>/resouces/upload/m_pic/<s:property value='#st.index+1'/>.jpg" style="position:relative;width:100%;top:0px;left:0px;"></a> 		
									 <a href="http://192.168.6.198/wxgw/toConvert" style="position:absolute;width:100%;height:12px;line-height:12px;text-align:left;top:8px;left:8px;text-decoration:none;color:#ffffff;">${NAME}</a>		
								</div> 	          			   	  
          			   	  </s:if>		
							 <s:if   test="#list.NAME=='行为分析'">
		          			   	 <div class="tm_div" style="float:left;width:30.67%;height:auto;margin-left:2%;overflow:hidden;margin-top:10px;">		
									 <a href="<%=basePath%>toBehavior"><img src="<%=path%>/resouces/upload/m_pic/<s:property value='#st.index+1'/>.jpg" style="position:relative;width:100%;top:0px;left:0px;"></a> 		
									 <a href="<%=basePath%>toBehavior" style="position:absolute;width:100%;height:12px;line-height:12px;text-align:left;top:8px;left:8px;text-decoration:none;color:#ffffff;">${NAME}</a>		
								</div> 	          			   	  
          			   	  </s:if>	
          			   	   <s:if   test="#list.NAME=='查询余额'">
		          			   	 <div class="tm_div" style="float:left;width:30.67%;height:auto;margin-left:2%;overflow:hidden;margin-top:10px;">		
									 <a href="http://192.168.6.198/wxgw/toBalance"><img src="<%=path%>/resouces/upload/m_pic/<s:property value='#st.index+1'/>.jpg" style="position:relative;width:100%;top:0px;left:0px;"></a> 		
									 <a href="http://192.168.6.198/wxgw/toBalance" style="position:absolute;width:100%;height:12px;line-height:12px;text-align:left;top:8px;left:8px;text-decoration:none;color:#ffffff;">${NAME}</a>		
								</div> 	          			   	  
          			   	  </s:if>	
          			   	   <s:if   test="#list.NAME=='业务办理'">
		          			   	 <div class="tm_div" style="float:left;width:30.67%;height:auto;margin-left:2%;overflow:hidden;margin-top:10px;">		
									 <a href="http://192.168.6.198/wxgw/toHandle"><img src="<%=path%>/resouces/upload/m_pic/<s:property value='#st.index+1'/>.jpg" style="position:relative;width:100%;top:0px;left:0px;"></a> 		
									 <a href="http://192.168.6.198/wxgw/toHandle" style="position:absolute;width:100%;height:12px;line-height:12px;text-align:left;top:8px;left:8px;text-decoration:none;color:#ffffff;">${NAME}</a>		
								</div> 	          			   	  
          			   	  </s:if>	    --%>
				</s:iterator>
		</div>
	</div>
<div id="footer" style="height:0px;"></div>
	<div class="menwrap">
 	<div class="expan2" style="padding-top:3px;padding-left:3px;background:#fafafa;">
		 <div class="plug-div" >
		    <div class="plug-phone" > 
		     <div class="plug-menu themeStyle">
		      <span class="close" ></span>
		     </div>
		     <div class="themeStyle plug-btn plug-btn1 close">
		      <a href="<%=basePath%>mall"><span style="background-image: url(<%=path%>/resouces/image/ky_img/home.png);"></span></a>
		     </div>
		     <div class="themeStyle plug-btn plug-btn2 close">
		    <%--   <a href="tel:13888888888"><span style="background-image: url(<%=path%>/resouces/image/ky_img/tel.png);"></span></a> --%>
		      <a href="<%=basePath%>toTelephone"><span style="background-image: url(<%=path%>/resouces/image/ky_img/tel.png);"></span></a>
		     </div>
		     <div class="themeStyle plug-btn plug-btn3 close">
		      <a href="<%=basePath%>toContacts"><span style="background-image: url(<%=path%>/resouces/image/ky_img/aboutus.png);"></span></a>
		     </div>
		     <div class="themeStyle plug-btn plug-btn4 close">
		      <a href="<%=basePath%>toMessage"><span style="background-image: url(<%=path%>/resouces/image/ky_img/guestbook.png);"></span></a>
		     </div>
		     <div class="plug-btn plug-btn5 close"></div>
		    </div>
	 	 </div> 
 	</div> 
     <div class="btn3 clearfix" >
        <div class="menu">
            <div class="bt-name">沃看</div>
            <div class="sanjiao"></div>
             <ul class="new-sub margin10">
                <li class="pipe2"><a href="http://202.91.178.197/wxgw/toPanelChart">项目分析</a></li>
             	<li class="pipe1"><a href="http://202.91.178.197/wxgw/toLineChart">回款趋势</a></li>
                 <li class="pipe1"><a href="http://202.91.178.197/wxgw/toPaymentScatter">回款分布</a></li>  
                 <li class="pipe1"><a href="http://202.91.178.197/wxgw/toTransferBar">人员情况</a></li>              
                <li style="height:0px;"><img src="<%=path%>/resouces/image/arrow-down.png" width="16" height="16" style="position:absolute; bottom:-16px; text-align:center"></li>
            </ul>
        </div>
        <div class="menu">
            <div class="bt-name">沃查</div>
             <div class="sanjiao"></div>
             <ul class="new-sub margin10">
                <li class="pipe2"><a href="http://192.168.6.198/wxgw/table">回款考核表</a></li>          
                <li style="height:0px;"><img src="<%=path%>/resouces/image/arrow-down.png" width="16" height="16" style="position:absolute; bottom:-16px; text-align:center"></li>
            </ul>
        </div>
        <div class="menu" >
        	<div class="bt-name">沃联系</div>
        	<div class="sanjiao"></div>
            <ul class="new-sub margin10">
                <li class="pipe2"><a href="http://118.186.205.197/wxgw/interactAction">联系经理</a></li>
             <!--    <li class="pipe1"><a href="http://118.186.205.197/wxgw/guestbook">我的留言</a></li> -->
             	   <li class="pipe1"><a href="<%=basePath%>toLeavewords">我的留言</a></li>
                 <li class="pipe1"><a href="#">绑定界面</a></li>             
                <li style="height:0px;"><img src="<%=path%>/resouces/image/arrow-down.png" width="16" height="16" style="position:absolute; bottom:-16px; text-align:center"></li>
            </ul>
        </div>
	</div> 
</div>
 <script>
		$(".menu").click(function() {
		    if ($(this).hasClass("cura")) {
		        $(this).children(".new-sub").hide(); //当前菜单下的二级菜单隐藏
		        $(".menu").removeClass("cura"); //同一级的菜单项
		    } else {
		        $(".menu").removeClass("cura"); //移除所有的样式
		        $(this).addClass("cura"); //给当前菜单添加特定样式
		        $(".new-sub").hide(); //隐藏所有的二级菜单
		        $(this).children(".new-sub").show(); //展示当前的二级菜单
		    }
		});
</script>
<div class="footer_front" style="position:fixed;width:100%;height:100%;top:0px;left:0px;z-index:888;display:none;"><img src="<%=path%>/resouces/image/front.png" width="100%" height="100%"></div>
<script>

function beginTalk() {
	var t = window.location.toString();
	var newT = t.replace(new RegExp("&", "gm"), "<and>"); 
	window.open("italk/index_m.jsp@fs_AccessAddress=" + newT, "talk");
}
</script>
</div>
<script>
$('.tm_div').each(function(i){
	$('.tm_div').eq(i).css({'height': $('.tm_div').eq(0).width()});
});
$(function(){
    $(".plug-menu").click(function(){
    var span = $(this).find("span");
    if(span.attr("class") == "open"){
            span.removeClass("open");
            span.addClass("close");
            $(".plug-btn").removeClass("open");
            $(".plug-btn").addClass("close");
    }else{
            span.removeClass("close");
            span.addClass("open");
            $(".plug-btn").removeClass("close");
            $(".plug-btn").addClass("open");
    }
    });
    $(".plug-menu").on('touchmove',function(event){event.preventDefault();});

});

</script>
</body>
</html>