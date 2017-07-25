<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>quest.contextPath}"/>
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





<title>回款分布</title>

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
    	// Step:3 conifg ECharts's path, link to echarts.js from current page.
	    // Step:3 为模块加载器配置echarts的路径，从当前页面链接到echarts.js，定义所需图表路径
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
				'echarts/chart/scatter'
   	        ],
   	        function (ec) {
   	            //--- 初始化 ---
   	            var myChart = ec.init(document.getElementById('pms01'));
   	         var myobj= '${distributeList}' ; 
   	      var ddata=new Array();
   	         var ary = eval( myobj );
   	    
   	           
   	         for(var i=0;i<ary.length;i++){  
					var tmpar={name:ary[i].NA,value:eval(ary[i].NB.split(","))};
				ddata.push(tmpar);		
				}  
   	 
   	         	//-----option----
			
   	         	
   	         	
   	         	
   	       var  option = {
   	        	
   	         	grid:{x:30,
   	         			x2:30	
   	         	},
   	         			
			    title : {
			        text: '回款分布',		
			    },
			        tooltip : {
				        trigger: 'axis',
			                showDelay : 0,
			                axisPointer:{
			                    show: true,
			                    type : 'cross',
			                    lineStyle: {
			                        type : 'dashed',
			                        width : 1
			                    }
			               },
			          /*    formatter : function (params){
			            	  if (params.value.length > 1) {
					                return params.seriesName + ' :<br/>'
					                 + params.value[0] + '万元  ；'+ 
					                   + params.value[1] + '完成率';
					            }
					          
			             }  */
				    },
				    grid : {x:30,x2:30},
			
				xAxis : [
					        {
					            'type':'value','name':'万元'
					        }
					    ],
			
			    yAxis : [
					        {
					          'type':'value', 'name':'完成率'
					        }
					    ],
		
			    series : [
			                {
			                    'name':'回款',
			                    'type':'scatter',
			                    
			                    symbolSize : 5,
			                    itemStyle: {
			                        normal : {
			                            label : {
			                                show: true,
			                                formatter : '{b}'
			                            }
			                        }
			                    },
			                    'data': ddata
			                }
			            ]
};
   	         	//---加载option对象-----
		   	  	myChart.setOption(option);
		   
   	     });
   	})
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
			
			
			
			
			<div class="tr-div" style="margin:0 auto;width:100%;height:250px;max-width:500px;height:auto;margin-top:0px;overflow:hidden;position:relative;cursor:pointer;text-align:center;">
				<div style="height:10px;background-color:#DBEAF9;">			
				</div>
				<div id="pms01" style="height:300px;border:1px solid #ccc;padding:5px;"></div>
			</div>
		<!-- 	<div class="tr-div" style="margin:0 auto;width:93%;height:250px;max-width:500px;height:auto;margin-top:0px;overflow:hidden;position:relative;cursor:pointer;text-align:center;">
				<div style="height:10px;background-color:#DBEAF9;">
				</div>
				<div id="pms02" style="height:300px;border:1px solid #ccc;padding:5px;"></div>
			</div>
			<div class="tr-div" style="margin:0 auto;width:93%;height:250px;max-width:500px;height:auto;margin-top:0px;overflow:hidden;position:relative;cursor:pointer;text-align:center;">
				<div style="height:10px;background-color:#DBEAF9;">
					
				</div>
				<div id="pms03" style="height:300px;border:1px solid #ccc;padding:5px;"></div>
			</div> -->
		
			
		</div>
	

	</div>

	




<div id="footer" style="height:0px;"></div>

<div class="footer_front" style="position:fixed;width:100%;height:100%;top:0px;left:0px;z-index:888;display:none;"><img src="<%=path%>/resouces/image/front.png" width="100%" height="100%"></div>
</div>



</body>

</html>