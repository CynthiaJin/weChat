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
    <title>城际旅游-大连旅游景点</title>
    <link rel="stylesheet" href="${ctx }/resource/css/style.css"/>
    <link rel="stylesheet" href="${ctx }/resource/css/main.css" />
    <link rel="stylesheet" href="${ctx }/resource/jquery-mobile/css/themes/default/jquery.mobile-1.4.5.min.css" />
    <link rel="stylesheet" href="${ctx }/resource/font-awesome-4.4.0/css/font-awesome.css" />
    <script type="text/javascript" src="${ctx }/resource/js/jquery-1.10.1.min.js" ></script>
    <script type="text/javascript" src="${ctx }/resource/jquery-mobile/js/jquery.mobile-1.4.5.min.js" ></script>
    <style type="text/css">
	    #pic1,#pic2,#pic3,#pic4,#pic5{
	   			border: solid 3px #FFFFFF;
	    }
	    .banner img{
	    	width:100%;
	    	height:250px;
	    	display:block;
	    }
	    .tab-title{
	    	background:#35A8D7;
	    	color:#fff;
	    	padding:5px;
	    }
	    .tab-details{
	    	text-align:center;
	    	background:#fff;
	    	padding-bottom:10px;
	    }
	    .one-day,.two-day,.three-day,.zijia-day{
	    	text-align:center;
	    	border:1px solid #000;
	    	margin-bottom:5px;
	    }
	    .tab-details h4{
	    	padding:10px;
	    	background:#ffc000;
	    	color:#fff;
	    	font-size:14px;
	    	font-weight:900;
	    	border-bottom:1px solid #000;
	    }
	    .tab-details span{
	    	display:inline-block;
	    	text-align:center;
	    	background:yellow;
	    	border:1px solid #000;
	    	width:40%;
	    }
	    .tab-details span:first-child{
	    	width:25px;
	    }
	    .tab-details span:last-child{
	    	width:46%;
	    }
	    .content p{
	    	text-indent:0px;
	    	line-height:24px !important;
	    	background:yellow;
	    	padding:0;
	    }
	     .tel{
	    	display:inline-block;
	    	width:100%;
	    	height:50px;
	    	line-height:50px;
	    	color:#000 !important;
	    	background:#fff;
	    	text-align:center;
	    }
    </style>
</head>
<body data-role="page">
<div class="box">
    <!--页头-->
    <%-- <div class="topColor">
        <a class="topIcon" onclick="javascript:window.history.back();" data-transition="slide" data-direction="reverse"><img class="img" src="${ctx }/resource/image/main/backup.png"></a>
        <div class="topTitle">雷锋号</div>
        <a class="topIcon2" href="#userDetail"><img class="img" src="${ctx }/resource//image/main/user.png"></a>
    </div>
    <div class="clear"></div> --%>
     <div style="background:#35A8D7;height:5px;"></div>
<!--     <a class="topIcon" href="#userDetail"><i class="fa fa-user"></i></a> -->
    <!--页头结束-->
    <!--主体-->
    <div class="mainBox bottom0">
        <div class="content">
          
            <div style="background: #0099FF; height: 50px;" >
            	<h3 style="text-align: center; line-height:50px; color: white; " >省内旅游</h3>
            </div>
             <div class="banner">
             	<img src="${ctx }/resource/image/citytour/travel_province.jpg">
             </div>
             <div class="tab-details">
             	<h2 class="tab-title">省内旅游及报价</h2>
             	<div class="one-day">
             		<h4>省内一日游 </h4>
             		<p><span>1.</span><span>沈阳方特 </span><span>220</span></p>
             		<p><span>2.</span><span>热高温泉 </span><span>105</span></p>
             		<p><span>3.</span><span>热高丛林 </span><span>165</span></p>
             		<p><span>4.</span><span>皇家极地海洋 </span><span>套180    单海洋/冲浪160</span></p>
             		<p><span>5.</span><span>沈阳美国郡 </span><span>平时75/周末95</span></p>
             		<p><span>6.</span><span>沈阳格林天沐 </span><span>平时120/周末150 </span></p>
             		<p><span>7.</span><span>鞍山绿中海 </span><span>单温泉140    套190</span></p>
             		<p><span>8.</span><span>天源吉布世 </span><span>140</span></p>
             		<p><span>9.</span><span>天籁谷 </span><span>100</span></p>
             		<p><span>10.</span><span>喜运来 </span><span>60</span></p>
             		<p><span>11.</span><span>沈阳野生动物园</span><span>95</span></p>
             		<p><span>12.</span><span>沈阳世博园 </span><span>65</span></p>
             		<p><span>13.</span><span>沈阳科技馆 </span><span>25</span></p>
             		<p><span>14.</span><span>本溪水洞 </span><span>98</span></p>
             		<p><span>15.</span><span>本溪龙溪园 </span><span>98</span></p>
             		<p><span>16.</span><span>鞍山千山 </span><span>118</span></p>
             		<p><span>17.</span><span>丹东市内 </span><span>65</span></p>
             		<p><span>18.</span><span>丹东凤凰山</span><span>138</span></p>
             		<p><span>19.</span><span>丹东天华山 </span><span>98</span></p>
             		<p><span>20.</span><span>医巫闾山 </span><span>115</span></p>
             		<p><span>21.</span><span>沈阳鸟岛 </span><span>50</span></p>
             		<p><span>22.</span><span>新宾和睦公园  </span><span>68</span></p>
             		<p><span>23.</span><span>赫图阿拉城 </span><span>78</span></p>
             		<p><span>24.</span><span>永陵+老城 </span><span>115</span></p>
             		<p><span>25.</span><span>辽沈战役 </span><span>98</span></p>
             		<p><span>26.</span><span>上年草莓采摘 </span><span>25</span></p>
             		<p><span>27.</span><span>猴石 </span><span>75</span></p>
             		<p><span>28.</span><span>三块石 </span><span>75</span></p>
             		<p><span>29.</span><span>大梨树 </span><span>140</span></p>
             	</div>
             	<div class="two-day">
             		<h4>省内二日游 </h4>
             		<p><span>1.</span><span>大连发现王国 </span><span>375</span></p>
             		<p><span>2.</span><span>大连香洲温泉  </span><span>285</span></p>
             		<p><span>3.</span><span>冰峪沟+鲅鱼圈 </span><span>230</span></p>
             		<p class="four"><span>4.</span><span>凤凰山+五龙背温泉 </span><span>220</span></p>
             		<p><span>5.</span><span>丹东青山沟 </span><span>265</span></p>
             		<p><span>6.</span><span>内蒙大青沟 </span><span>220</span></p>
             		<p><span>7.</span><span>千山+天籁谷温泉 </span><span>298</span></p>
             	</div>
             	<div class="three-day">
             		<h4>省内三日游 </h4>
             		<p><span>1.</span><span>承德小布达拉宫 </span><span>680</span></p>
             		<p><span>2.</span><span>大连发现王国+市内  </span><span>468</span></p>
             	</div>
             	<div class="zijia-day">
             		<h4>省内自驾游 </h4>
             		<p><span>1.</span><span>沈阳方特现票 </span><span>195</span></p>
             		<p><span>2.</span><span>美国郡温泉  </span><span>平时45/周末60</span></p>
             		<p><span>3.</span><span>沈阳格林天沐 </span><span>平时108/周末128</span></p>
             		<p><span>4.</span><span>热高温泉电子票 </span><span>125</span></p>
             		<p><span>5.</span><span>辽阳碧湖温泉 </span><span>平时110/周末130</span></p>
             		<p><span>6.</span><span>沈阳世博园现票 </span><span>45</span></p>
             	</div>
             </div>
             <p><strong><a href="tel:024-58217677" class="tel">城际旅游电话:024-58217677   58217688</a></strong></p>
         </div>   
		</div>
        </div>
        </div>
    <!--主体结束-->

</body>
</html>
