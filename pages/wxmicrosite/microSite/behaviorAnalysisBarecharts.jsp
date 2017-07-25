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
<title>行为分析</title>
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
 				//----option----
 				/* var option = {
				    tooltip : {
				        trigger: 'axis',
				        axisPointer : {            // 坐标轴指示器，坐标轴触发有效
				            type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
				        }
				    },
				    legend: {
				        data:['直接访问', '邮件营销','联盟广告','视频广告','搜索引擎']
				    },
				    calculable : true,
				    yAxis : [
				        {
				            type : 'value'
				        }
				    ],
				    xAxis : [
				        {
				            type : 'category',
				            data : ['周一','周二','周三','周四','周五','周六','周日']
				        }
				    ],
				    series : [
				        {
				            name:'直接访问',
				            type:'bar',
				            stack: '总量',
				            itemStyle : { normal: {label : {show: true, position: 'insideRight'}}},
				            data:[320, 302, 301, 334, 390, 330, 320]
				        },
				        {
				            name:'邮件营销',
				            type:'bar',
				            stack: '总量',
				            itemStyle : { normal: {label : {show: true, position: 'insideRight'}}},
				            data:[120, 132, 101, 134, 90, 230, 210]
				        },
				        {
				            name:'联盟广告',
				            type:'bar',
				            stack: '总量',
				            itemStyle : { normal: {label : {show: true, position: 'insideRight'}}},
				            data:[220, 182, 191, 234, 290, 330, 310]
				        },
				        {
				            name:'视频广告',
				            type:'bar',
				            stack: '总量',
				            itemStyle : { normal: {label : {show: true, position: 'insideRight'}}},
				            data:[150, 212, 201, 154, 190, 330, 410]
				        },
				        {
				            name:'搜索引擎',
				            type:'bar',
				            stack: '总量',
				            itemStyle : { normal: {label : {show: true, position: 'insideRight'}}},
				            data:[820, 832, 901, 934, 1290, 1330, 1320]
				        }
				    ]
				}; */
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
					 /*    toolbox: {
					        show : true,
					        feature : {
					            mark : {show: true},
					            dataView : {show: true, readOnly: false},
					            magicType : {show: true, type: ['line', 'bar']},
					            restore : {show: true},
					            saveAsImage : {show: true}
					        }
					    }, */
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
   	     //--------------
	   /* 	 $(window).on("orientationchange", function (event) {
	        if (window.orientation == 0) // Portrait
	        {
	            //  $("p").css({ "background-color": "yellow", "font-size": "300%" });
	        }
	        else // Landscape
	        {
	          //  $("p").css({ "background-color": "pink", "font-size": "200%" });
	        }
	        setData("orientationchange");
	        $('#main').time_analysis('refreshChart');
	    });
   	    //-------
	    $(window).resize(function () {
	        setData("resize");
	        $('#main').time_analysis('refreshChart');
	    });; */
   	});
   	
/*    	function setData(flag) {
        var pagewidth = $(window).width();
        var pageheight = $(window).height();
        $("#divbrowser").html("");
        $("#divbrowser").html(flag+ "--;宽度：" + pagewidth + ";高度:" + pageheight);
     
        $("#main").height(pageheight * 0.80);
        $("#main").width(pagewidth*0.95 );
        $("#divbrowser").html($("#divbrowser").text()  + "--;宽度：" + $("#main").width() + ";高度:" + $("#main").height());
      
         
    } */
    </script>
</head>
<body>
<div id="frame">
	<div id="top">
			<a id="logo" href="#" ><img src="<%=path%>/resouces/image/bonclogo3.png" align="top"></a>
		<a id="title" >行为分析</a>
		<span id="list">	
			<a href="javascript:window.history.back();"><img src="<%=path%>/resouces/image/goback.png" align="top"></a>
		    <a href="<%=basePath%>toLogin"><img src="<%=path%>/resouces/image/userlogin.png" align="top"></a> 
		</span>
	</div>
	<div id="con">
		<div class="detail-list;" style="background-color:#FFF;width:95%;margin-left:2.5%;margin-top:10px;">
			<div class="tr-div" style="margin:0 auto;width:100%;max-width:500px;height:auto;margin-top:0px;overflow:hidden;position:relative;cursor:pointer;text-align:center;">
				<div style="height:10px;background-color:#DBEAF9;">			
				</div>
				 <div id="main" style="height:500px;border:1px solid #ccc;"></div>
			</div>		
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
      <!--快捷按钮 开始--> 	
   <!--快捷按钮 结束-->
        <div class="menu">
            <div class="bt-name">沃看</div>
              <div class="sanjiao"></div>
             <ul class="new-sub margin10">
                <li class="pipe2"><a href="<%=basePath%>toEchartspie">项目分析</a></li>
             	<li class="pipe1"><a href="<%=basePath%>toEchartsline">回款趋势</a></li>
                 <li class="pipe1"><a href="<%=basePath%>toEchartsscatter">回款分布</a></li>  
                 <li class="pipe1"><a href="<%=basePath%>toEchartsbar">人员情况</a></li>              
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