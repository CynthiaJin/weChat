<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link href="${ctx }/resource/font-awesome-4.4.0/css/font-awesome.css" type="text/css" rel="stylesheet" />
		<link rel="stylesheet" href="${ctx }/resource/jquery-mobile/css/themes/default/jquery.mobile-1.4.5.min.css" />
		<link rel="stylesheet" href="${ctx }/resource/css/bootstrap.min.css" type="text/css" />
		<link rel="stylesheet" href="${ctx }/resource/css/main.css" type="text/css" />
		<script src="${ctx }/resource/js/jquery-1.10.1.min.js" type="text/javascript"></script>
		<script src="${ctx }/resource/js/jquery.SuperSlide.js" type="text/javascript"></script>
		<script type="text/javascript" src="${ctx }/resource/jquery-mobile/js/jquery.mobile-1.4.5.min.js" ></script>
		<script type="text/javascript" src="${ctx }/resource/js/bootstrap.min.js" ></script>
		<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=ezofnKG8X1gQ29UuOUjQlo1Q"></script> 
		<script type="text/javascript" src="${ctx }/resource/lbs/js/jquery.bmap.core.js" ></script>
		<script type="text/javascript" src="${ctx }/resource/lbs/js/jquery.bmap.overlay.js" ></script>
		<title>城际交通-雷锋号</title>
	</head>
	
	<body>
		<div data-role="page" class="posDetail">
			<div class="header">
				<input type="search" placeholder="例如：保利花园" />
				<a class="pull-left" onclick="javascript:history.back();" href="#"><i class="fa fa-angle-left"></i></a>
				<a class="pull-right"><i class="fa fa-user"></i></a>
				<a class="pull-left">×</a>
			</div>
			<div id="contlist" class="content-bar ui-content overflow">
	<!-- 			<div class="piece">
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
				</div> -->
				
			</div>
			<script type="text/javascript">
		var id;
		id='${id}';
		
		$(document).on('pagecreate',function(){
			
		 	 $.ajax({url:"${ctx}/trasportview/allsite.do?json",async: false,
					type: "POST",dataType:'json',error:function(){top.jAlert("服务器异常");},
					success:function(result){
		 		/* 	 	console.info(123);
					 	rem=eval(result);
					 	console.info(rem);  */
						for(var name in result){
							var upload = '<div class="piece">';
				   	  		 upload+='<span>'+name+'</span><div class="">'; 
			
				   	  		for(j=0;j<result[name].length;j++){
				   	  			upload+='<span  onclick="selectSite(this)" >'+result[name][j]+'</span>'
				   	  		}				   	  			
				   	  			upload+='</div></div>';
		
				   	  		 $('#contlist').append(upload);	 
						}
			   	  			
 				}}); 	
		})
			
	    function selectSite(site){
			var sitename=site.innerText;
		 	window.location.href="${ctx }/trasportview/getSite.do?site="+sitename+"&id="+id; 
			
		}
	
	</script>
		</div>
	</body>
</html>
