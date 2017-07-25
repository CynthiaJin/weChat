<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <title>小件快运</title>
     <link rel="stylesheet" href="${ctx }/resource/css/style.css"/>
    <link rel="stylesheet" href="${ctx }/resource/css/main.css" />
    <link rel="stylesheet" href="${ctx }/resource/jquery-mobile/css/themes/default/jquery.mobile-1.4.5.min.css" />
    <link rel="stylesheet" href="${ctx }/resource/font-awesome-4.4.0/css/font-awesome.css" />
    <script type="text/javascript" src="${ctx }/resource/js/jquery-1.10.1.min.js" ></script>
    <script type="text/javascript" src="${ctx }/resource/jquery-mobile/js/jquery.mobile-1.4.5.min.js" ></script>
</head>
<body data-role="page">
<div class="box">
    <!--页头-->
   <!--   <div class="topColor">
        <a class="topIcon" onclick="javascript:window.history.back();" data-transition="slide" data-direction="reverse"><img class="img" src="${ctx }/resource/image/main/backup.png"></a>
        <div class="topTitle">雷锋号</div>
        <a class="topIcon2" href="#userDetail"><img class="img" src="${ctx }/resource/image/main/user.png"></a>
    </div>-->
   
     <div style="background:#35A8D7;height:5px;"></div>
<!--     <a class="topIcon" href="#userDetail"><i class="fa fa-user"></i></a> -->
    <!--页头结束-->
    <!--主体-->
    <div class="mainBox bottom0">
        <div class="content">
             <h1>【小件快递服务】</h1>
             <blockquote>2016年2月29日 雷锋号</blockquote>
             <img src="${ctx }/resource/image/ems/kuaidi1.jpg" height="100%" width="100%">
             <p>一、服务宗旨：信誉第一、诚信服务、高效快捷、实现双赢</P>
				<p>二、服务理念：“受人之托”“忠人之事”</p>
				<p><span>
					<a href="tel:024-58217076" class="tel">
		  				三、客服电话：024-58217076  58217172  58217131		
		  			</a></span>
				</p>
             <img src="${ctx }/resource/image/ems/kuaidi2.jpg" height="100%" width="100%">
             <p>四、服务优势：</p>
<p>1、覆盖面广：小件快递共11处网点，其中沈阳区域7处，五爱、南塔、三好街、
沈阳站、沈阳北站、珠林桥、龙之梦。抚顺区域4处，抚顺南站、抚顺北站、
石化大学、理工大学。</p>
<p>2、高效快捷：抚顺南站发车时间：5:10－20:30
          抚顺北站发车时间：6:40－17:00
          沈阳站发车时间：5:40－22:40
          沈阳北站发车时间：5:15－22:50
          五爱市场发车时间：7:30－16:50
（发车间隔5－10分钟，沈抚两地2小时左右送货上门）</p>
<p>3、价格优惠：每件货物5元起价，大件物品按市场价格执行，大客户实行优惠服务，可与我公司签订承运协议。</p>
<p>4、服务上门：公司采取取送货上门的服务方式，小件货物3元起价，大件物品按市场价格执行。</p>
<p>5、返款安全：本公司信誉第一、资金雄厚，货物返款及时可靠。</p>        	      	 
		</div>
		<%-- <a class="btn blue" href="${ctx }/surround/goNewCargo.do">添加订单</a> --%>
        </div>

</div>
</body>
</html>