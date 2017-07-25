<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
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

<meta charset="UTF-8">

<meta name="keywords" content="" />

<meta name="description" content="" />

<meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0'/>

<meta name="author" content=""/>

<meta name="copyright" content=""/>





<title>人员情况</title>

<script src="<%=path%>/resouces/js/jquery-2.1.1.min.js" type="text/javascript"></script>

<script src="<%=path%>/resouces/js/manhuatoTop.1.0.js" type="text/javascript"></script>

<script src="<%=path%>/resouces/js/common.js" type="text/javascript"></script>

<link rel="stylesheet" href="<%=path%>/resouces/css/idangerous.swiper.css">
<link rel="stylesheet" href="<%=path%>/resouces/css/iscroll.css">
<link rel="stylesheet" href="<%=path%>/resouces/css/cate.css">
<link rel="stylesheet" href="<%=path%>/resouces/css/style.css">
<link href="<%=path%>/resouces/css/m.css" rel="stylesheet" type="text/css" />
<script src="<%=path%>/resouces/js/idangerous.swiper-1.9.1.min.js"></script>

<script src="<%=path%>/resouces/js/idangerous.swiper.scrollbar-1.2.js"></script>

<script src="<%=path%>/resouces/js/swiper.js"></script>
  <script src="${ctx }/resouces/echarts/www/js/echarts.js"></script>
		<style type="text/css">
	body{background: url(<%=path%>/resouces/image/bg.gif) repeat;}
		
		.detail-list { width:100%; margin:0 auto; position: relative; z-index:999;}
	</style>
		<style type="text/css">
		.shoplist{ float:left; margin-left:2.5%; width:95%; position: relative; z-index:9; background:#FFF; padding-top:1%;}
		.shoplist li { float:left; margin-left:2.5%; margin-top:2.5%; width:95%; padding-bottom:10px; border-bottom:1px dotted #ccc; }
		.shoplist li .leftimg{ text-align:center; display:block; float:left; width:25%; overflow:hidden}
		.shoplist li .righttxt{ display:block; color:#ff5400; text-align:left; overflow:hidden; float:right; width:71%}
		.shoplist li .shopname{ float:left; clear:both; display:block; line-height:80px; font-size:30px; width:100%; text-align:left; overflow:hidden; text-overflow:ellipsis; white-space:nowrap; }
		.shoplist li .shopadd{ float:left; clear:both; display:block; color:#333333; line-height:25px; font-size:13px; width:100%; text-align:left; overflow:hidden; text-overflow:ellipsis; white-space:nowrap; }
		.img-responsive { display: block;  max-width: 100%; height:100%; }
		.shoplist li .shopname{ font-size:24px; line-height:50px;}
		.shoplist li .leftimg{ text-align:center; display:block; float:left;  width:130px; height:130px overflow:hidden}
		.shoplist li .shopname{ font-size:17px; line-height:30px;}
		.shoplist li .leftimg{ text-align:center; display:block; float:left;  width:80px; height:80px overflow:hidden}
		.toptitle{float:left; margin-left:2.5%; margin-top:2.5%; width:95%;position: relative; z-index: 10; background:#ec5248; border-bottom:3px solid #d71f13; height:58px ;
 border-top-left-radius:3px; border-top-right-radius:3px;}
 -moz-border-top-left-radius:3px; -moz-border-top-right-radius:3px;
 -webkit-border-top-left-radius:3px; -webkit-border-top-right-radius:3px;}
 .shopclass{float:left;width:40%;position: relative; z-index: 1; line-height:58px; font-size:18px; text-align:center ;  }
.shopclass2{float:left;width:100%;position: relative; z-index: 1; line-height:58px; font-size:18px; text-align:center ;}
		
		
		</style>
		
		   <script type="text/javascript">
 
   	$(function(){ 
	    require.config({
	        paths: {
	            echarts: '${ctx }/resouces/echarts/www/js'
	        }
	    });
   	    // Step:4 require echarts and use it in the callback.
   	    // Step:4 动态加载echarts然后在回调函数中开始使用，注意保持按需加载结构定义图表路径
   	    require(
   	        [
   	      		'echarts',
				'echarts/chart/bar'
   	        ],
   	        function (ec) {
   	            //--- 初始化 ---
   	            var myChart = ec.init(document.getElementById('main'));
 			
				var option = {
						  grid : {x:30,x2:20},
					    title : {
					        text: '公司人员情况',
					        subtext: '目前总人数834'
					    },
					    tooltip : {
					        trigger: 'axis'
					    },
					    legend: {
					    	x:'right',
					        data:['离职人员','入职人员']
					    },
					    calculable : true,
					    xAxis : [
					        {
					            type : 'category',
					            data : ['1月','2月','3月','4月','5月','6月','7月','8月','9月','10月','11月','12月']
					        }
					    ],
					    yAxis : [
					        {
					            type : 'value'
					        }
					    ],
					    series : [
					        {
					            name:'离职人员',
					            type:'bar',
					            data:[2.0, 4.9, 7.0, 23.2, 25.6, 76.7, 135.6, 162.2, 32.6, 20.0, 6.4, 3.3],
					      /*       markPoint : {
					                data : [
					                    {type : 'max', name: '最大值'},
					                    {type : 'min', name: '最小值'}
					                ]
					            }, */
					         /*    markLine : {
					                data : [
					                    {type : 'average', name: '平均值'}
					                ]
					            } */
					        },
					        {
					            name:'入职人员',
					            type:'bar',
					            data:[2.6, 5.9, 9.0, 26.4, 28.7, 70.7, 175.6, 182.2, 48.7, 18.8, 6.0, 2.3],
					        /*     markPoint : {
					                data : [
					                    {name : '年最高', value : 182.2, xAxis: 7, yAxis: 183, symbolSize:18},
					                    {name : '年最低', value : 2.3, xAxis: 11, yAxis: 3}
					                ]
					            }, */
					       /*      markLine : {
					                data : [
					                    {type : 'average', name : '平均值'}
					                ]
					            } */
					        }
					    ]
					};
	   	   		// 为echarts对象加载数据
	  			myChart.setOption(option);
   	     });
   
   	});
   	

    </script>
 
   	

</head>



<body>

<div id="frame">

	<div id="top">


		

		<span id="list">

		
			<a href="javascript:window.history.back();"><img src="<%=path%>/resouces/image/goback.png" align="top"></a>
		    <a href="<%=basePath%>toLogin"><img src="<%=path%>/resouces/image/userlogin.png" align="top"></a> 

		</span>

	</div>

	<div id="con">

		<div class="detail-list;" style="background-color:#FFF;width:95%;margin-left:2.5%;margin-top:10px;">
		<!-- 	<div style="height:10px;width:100%"></div> -->
			
			
			
			
			<div class="tr-div" style="margin:0 auto;width:100%;max-width:500px;height:auto;margin-top:0px;overflow:hidden;position:relative;cursor:pointer;text-align:center;">
				<div style="height:10px;background-color:#DBEAF9;">			
				</div>
				 <div id="main" style="height:500px;border:1px solid #ccc;"></div>
			</div>
		
			
		</div>
	

	</div>

	




<div id="footer" style="height:0px;"></div>

 

 
 
<div class="footer_front" style="position:fixed;width:100%;height:100%;top:0px;left:0px;z-index:888;display:none;"><img src="<%=path%>/resouces/image/front.png" width="100%" height="100%"></div>




</div>



</body>

</html>