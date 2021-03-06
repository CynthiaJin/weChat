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

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>游戏列表</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;" />
<meta content="yes" name="apple-mobile-web-app-capable" />
<link href="<%=path%>/resouces/css/bootstrap.min.css" rel="stylesheet" />
<link href="<%=path%>/resouces/css/NewGlobal.css" rel="stylesheet" />
<script type="text/javascript" src="<%=path%>/resouces/js/zepto.js"></script>

</head>
<body>
 <div class="header">
 <%-- <a href="<%=basePath%>mall" class="home">
            <span class="header-icon header-icon-home"></span>
             <span class="header-name">主页</span>
</a> --%>
<div class="title" id="titleString">游戏列表</div>
<a href="javascript:history.go(-1);" class="back">
            <span class="header-icon header-icon-return"></span>
            <span class="header-name">返回</span>
        </a>
 </div>

        
    <div class="container">
    <ul class="giftlist unstyled">
         
        <li>
            <div class="imgbox">
   <a href="<%=basePath%>toTurnTable"><img src="<%=path%>/resouces/image/WheelIcon2.jpg"> </a> 
   </div>
    <div class="desc">
   <a href="<%=basePath%>toTurnTable">幸运大转盘</a> <br/>
  <!--    <a href="Gift.aspx@id=13"><em>9600 积分 </em></a>  -->
  </div>
        </li>
         
        <li>
            <div class="imgbox">
   <a href="<%=basePath%>toScratch"><img src="<%=path%>/resouces/image/guaguale.jpg"> </a> 
   </div>
    <div class="desc">
   <a href="<%=basePath%>toScratch">刮刮乐</a> <br/>

  </div>
        </li>
         
        <li>
            <div class="imgbox">
   <a href="#"><img src="<%=path%>/resouces/image/scratch.png"> </a> 
   </div>
    <div class="desc">
   <a href="#">砸金蛋</a> <br/>
  
  </div>
        </li>
         
        <li>
            <div class="imgbox">
   <a href="#"><img src="<%=path%>/resouces/image/weixinwall.jpg"> </a> 
   </div>
    <div class="desc">
   <a href="#">手机游戏</a> <br/>

  </div>
        </li>
         
 
         
     
    
         
      
         
      
         
      
     
   
         
   
         
    </ul>
    </div>
    <script type="text/javascript">
        $(document).ready(function () {
            $('.giftlist li img').each(function () {

                var width = $(this).width(); // 图片实际宽度
                var height = $(this).height(); // 图片实际高度

                // 检查图片是否超宽
                if (width != height) {
                 
                    $(this).css("height", width); // 设定等比例缩放后的高度
                }
            });
        });
    </script>


  <div class="footer">
  <div class="gezifooter">
  <!--     
      <a href="login.aspx" class="ui-link">立即登陆</a> <font color="#878787">|</font> 
       <a href="reg.aspx" class="ui-link">免费注册</a> <font color="#878787">|</font>                 
                  

       <a href="http://www.gridinn.com/@display=pc" class="ui-link">电脑版</a> -->
  </div>
  <div class="gezifooter">
    <p style="color:#bbb;"></p>
  </div>
  </div>

</body>
</html>
