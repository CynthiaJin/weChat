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

<meta charset="UTF-8">

<meta name="keywords" content="" />

<meta name="description" content="" />

<meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0'/>

<meta name="author" content=""/>

<meta name="copyright" content=""/>





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
  	    require(
  	        [	         
  	            'echarts',
 				'echarts/chart/line'
  	        ],
  	        function (ec) {
  	            //--- 初始化 ---
  	        //    var myChart = ec.init(document.getElementById('main'));
  	          var myChart2 = ec.init(document.getElementById('pms03'));
	   	        //-----option----
	   	    var ddata=new Array();//scatter数据
  	    	var myobj= '${TaskrateList[0].NB}' ; 
   	     var tmpar=myobj.split(",");
   	  var ary = eval( tmpar );
   	     for(var i=0;i<ary.length;i++){
   	  			ddata.push(ary[i]);
   	     }
	
	   	  var ddata2=new Array();      
	   	var myobj2= '${TaskrateList[1].NB}' ; 
  	     var tmpar2=myobj2.split(",");
  	  var ary2 = eval( tmpar2 );
  	     for(var i=0;i<ary2.length;i++){
  	  			ddata2.push(ary2[i]);
  	     }
  	
	   	     var option3 = {
	   	    		 grid:{
		        	    	x:40,
		        	    	x2:20
		        	    	},
	   	    		 title : {
	   	    			 				text: '任务完成率',
	   	    					        x:'left'
	   	    					    },
	  	        	    tooltip : {
	  	        	        trigger: 'axis'
	  	        	    },
	  	        	    legend: {
	  	        	    	x:'right',
	  	        	        data:['${TaskrateList[0].NA}','${TaskrateList[1].NA}']
	  	        	    },
	  	        	//    calculable : true,
	  	        	    xAxis : [
	  	        	        {
	  	        	            type : 'category',
	  	        	            boundaryGap : false,
	  	        	            data : ['一月','二月','三月','四月','五月','六月','七月','八月','九月','十月','十一月','十二月']
	  	        	        }
	  	        	    ],
	  	        	    yAxis : [
	  	        	        {
	  	        	            type : 'value'
	  	        	        }
	  	        	    ],
	  	        	   yAxis : [
						        {
						         axisLabel : {
							                formatter: '{value}%'
							            },
						         type : 'value'
						        }
						    ],
	  	        	    series : [
	  	        	        {
	  	        	            name:'${TaskrateList[0].NA}',
	  	        	            
	  	        	            type:'line',
	  	        	         
	  	        	            data:ddata
	  	        	        },
	  	        	        {
	  	        	            name:'${TaskrateList[1].NA}',
	  	        	            type:'line',
	  	        	           
	  	        	            data:ddata2
	  	        	        } 
	  	        	    ]
	  	        	};
	   	   		// ----为echarts对象加载数据---
	  		
	  			myChart2.setOption(option3);
  	     });
  	})
  
 </script>	
 
 <script type="text/javascript">
 

 
 
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
		<!-- 	<div style="height:10px;width:100%"></div> -->
			
			
			
		 	
			<!-- <div class="tr-div" style="margin:0 auto;width:93%;height:250px;max-width:500px;height:auto;margin-top:0px;overflow:hidden;position:relative;cursor:pointer;text-align:center;">
				<div style="height:10px;background-color:#DBEAF9;">			
				</div>
				<div id="main" style="height:300px;border:1px solid #ccc;padding:5px;"></div>
			</div>
			<div class="tr-div" style="margin:0 auto;width:93%;height:250px;max-width:500px;height:auto;margin-top:0px;overflow:hidden;position:relative;cursor:pointer;text-align:center;">
				<div style="height:10px;background-color:#DBEAF9;">
				</div>
				<div id="pms02" style="height:300px;border:1px solid #ccc;padding:5px;"></div>
			</div>  -->
			<div class="tr-div" style="margin:0 auto;width:93%;height:250px;max-width:500px;height:auto;margin-top:0px;overflow:hidden;position:relative;cursor:pointer;text-align:center;">
				<div style="height:10px;background-color:#DBEAF9;">
					
				</div>
				<div id="pms03" style="height:300px;border:1px solid #ccc;padding:5px;"></div>
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
                <li class="pipe2"><a href="<%=basePath%>toPanelChartA">项目分析</a></li>
             	<li class="pipe1"><a href="<%=basePath%>toLineChartA">回款趋势</a></li>
                 <li class="pipe1"><a href="<%=basePath%>toPaymentScatterA">回款分布</a></li>  
                 <li class="pipe1"><a href="<%=basePath%>toTransferBarA">人员情况</a></li>              
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