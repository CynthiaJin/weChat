/**
 * left bottom
 */
function tourLineKpi(param){
	$.ajax({
	
		url:util.warpRandom(App.baseURL+"/out/serv/queryWeekUsers.do?json"),
		async: false,type: "POST",data : {provName :provName,provId : provId,scenicCode : provId},dataType:'json',error:function(){},
		success:function(data){
			if (typeof (data) != 'undefined' && data != null) {
				//未来预测
				for(var i = 0 ; i< 7 ; i++){
					if(data.furList[i]){					
						optionLine.series[0].data.push(data.furList[i].USERS ? data.furList[i].USERS : 0);
					}
				}
				//实际趋势
				for(var j = 0 ; j < data.realList.length ; j++){
					optionLine.series[1].data.push(data.realList[j].USERS ? data.realList[j].USERS : 0);
				}
				myChartLine.setOption(optionLine,true);
			}   	  						   	  			
		}
	});
}
/**
 * left top 
 */
function tourTotalKpi(param){
	$.ajax({
	
		url:util.warpRandom(App.baseURL+'/out/serv/queryKpiLvl.do?json'),
		async: false,type: "POST",dataType:'json',data :param,error:function(){},
		success:function(data){
  			if (typeof (data) != 'undefined') { 				
  				//获取容器
  			    var totalKpi = $("#totalKpiContent");
  				//一级容器
  				totalKpi.empty();
  				var name = "" ;
  				if(param.scenicName){
  					name = param.scenicName ;
  				}else if(param.areaName){
  					name = param.areaName ;
  				}else{
  					name = param.provName ;
  				} 				
  				//数据为空
  				if(!data.length){
  					//总指标
  					var innerHtml = $('<h3>旅游指数-'+name+'</h3><span>00</span>');
  					totalKpi.append(innerHtml);
  					//总指标等级
  					totalkpiLevel("",0);
  					
  					//下级指标----------------------------------------------
  					//设置标题
  					$("#tourKpiTitle").html('指数因素数值-'+ name);
  					//获取容器
  	  			    var tourKpi = $("#tourKpiContent").empty();//清空二级指标 
  	  			    var factorDesc=$("#factorDesc1").empty(); //清空提示语
  	  			    //饼图数据
  	  			    updateLeft3({name :name});
  					return ;
  				}
  				
				var innerHtml = $('<h3>'+data[0].KPI_NAME+'-'+name+'</h3><span>'+Number(data[0].LVL_SCORE).toFixed(2)+' </span>');
				totalKpi.append(innerHtml);
				//总指标等级
				totalkpiLevel(data[0].KPI_NAME ,data[0].LVL_SCORE);
				
				//下级指标----------------------------------------------
				//设置标题
				$("#tourKpiTitle").html('指数因素数值-'+ name);
				//获取容器
  			    var tourKpi = $("#tourKpiContent"); 
  			    var factorDesc=$("#factorDesc1");
  			    
  			    var TestdataMenu=[];
  			    var TestdataMenuNum=0;
  			    
				if(data[0].child.length > 0){
					//alert("1="+data[0].child.length);
					//----------------------1-------------------------------
					//清空二级指标
					tourKpi.empty();	 
					//清空提示语
					factorDesc.empty();
					for(var j = 0 ; j < data[0].child.length ; j++ ){
						var inner1Li = $('<li></li>');
						//计算星级
						var name1 = data[0].child[j].KPI_NAME; //指数因子名称
						var kpicode1=data[0].child[j].KPI_CODE;//指数因子code
						var score1 = Number(data[0].child[j].LVL_SCORE).toFixed(0); //得分  	
						var growUp1 = Number(data[0].child[j].GROW_UP);
						var inner1A = $('<a href="#this"><span><b class="fa fa-'+iconChange((j+1))+'" aria-hidden="true"></b>'+name1+'</span></a>');
						
						//星级计算						
						inner1A = starLevelHtml(inner1A,score1);
						var level1Str = levelDirection();
						var inner1Score = $('<em><b class="glyphicon glyphicon-'+levelDirection(growUp1)+'" aria-hidden="true"></b>'+score1+'</em>');
						inner1A.append(inner1Score);
						//计算提示语
						var innerDesc=desclevelHtml(name1,kpicode1,score1);
						
						factorDesc.append(innerDesc);
						
						//-------------------------2-----------------------
						if(data[0].child[j].child.length > 0){
							var inner2ul = $('<ul></ul>'); //二级容器
							var inner2ulList = $('<ul></ul>'); //二级容器
							for(var k = 0 ; k < data[0].child[j].child.length ; k++ ){
								var name2 = data[0].child[j].child[k].KPI_NAME; //指数因子名称
								var score2 = Number(data[0].child[j].child[k].LVL_SCORE).toFixed(0); //得分  	
								var inner2Li = $('<li class="list-level-1">'+
											'<a href="#this">'+
											'<span>'+name2+'</span>'+
											'<div class="progress progress-primary progress-striped active">'+
											  '<div class="progress-bar" role="progressbar" aria-valuenow="'+score2+'" aria-valuemin="0" aria-valuemax="100" style="width: '+score2+'%;">'+
											    '<span class="sr-only">'+score2+'% Complete</span>'+
											  '</div>'+
											'</div>'+
											'<em>'+score2+'%</em>'+
										'</a>'+
									'</li>'); 
								var inner2LiList = $('<li class="list-menu-level-1">'+
										'<a >'+
										'<span>'+name2+'</span>'+
										'<div class="progress progress-primary progress-striped active">'+
										  '<div class="progress-bar" role="progressbar" aria-valuenow="'+score2+'" aria-valuemin="0" aria-valuemax="100" style="width: '+score2+'%;">'+
										    '<span class="sr-only">'+score2+'% Complete</span>'+
										  '</div>'+
										'</div>'+
										'<em>'+score2+'%</em>'+
										'</a>'+
								'</li>'); 
								//---------------------3--------------------
								if(data[0].child[j].child[k].child.length > 0){
									var inner3ul = $('<ul></ul>');
						//			var inner3ul111 = $('<ul></ul>');
									for(var h = 0 ; h < data[0].child[j].child[k].child.length ; h++ ){
										var name3 = data[0].child[j].child[k].child[h].KPI_NAME; //指数因子名称
										var score3 = Number(data[0].child[j].child[k].child[h].LVL_SCORE).toFixed(0); //得分  
										var inner3Li = $('<li class="list-level-2">'+
													'<a href="#this">'+
													'<span>'+name3+'</span>'+
													'<em>'+score3+'%</em>'+
												'</a>'+
											'</li>');
										inner3ul.append(inner3Li);								
									
									}
								}
								inner2Li.append(inner3ul);
								inner2ul.append(inner2Li);								
								inner2ulList.append(inner2LiList);
							}
						}
						inner1Li.append(inner1A).append(inner2ul);
						tourKpi.append(inner1Li);

						TestdataMenu[TestdataMenuNum]=inner2ulList;
						TestdataMenuNum++;
					}
					
					var testMenuList = $('<div  class="MenuListCss" ></div>');
					var menuListTitle= $('<p class="tit">指数因子</p>');
					testMenuList.append(menuListTitle);
				    testMenuList.append(TestdataMenu[0]);
			    	testMenuList.append(TestdataMenu[1]);
				    testMenuList.append(TestdataMenu[2]);
				    testMenuList.append(TestdataMenu[3]);
					factorDesc.append(testMenuList);
					
					
					
					var $obj=factorDesc.children(":first");
					$obj.removeClass('ul-top');
					var $tit= $('<p class="tit">综合评价</p>');
					factorDesc.prepend($tit); 
					//.removeClass('ul-top')
					//alert(tourKpi.html());
				} 	
	  			//加载饼图
				param.data = data ;
				param.name = name;
	  			updateLeft3(param);
			} 
		}
	});
	//-----
	onClickKpi();
}
/**
 * center bottom
 */
function tourTopKpi(param){
	$.ajax({
	
		url:util.warpRandom(App.baseURL+"/out/serv/queryScenicTourIndex.do?json"),
		async: false,type: "POST",dataType:'json',error:function(){},data : param,
		success:function(data){
			if (typeof (data) != 'undefined' ) {
				//获取容器
				var tourTopKpi = $("#tourTopKpiContent");	
				
				//清空容器
				tourTopKpi.empty();
				var title = $('<h3>景区指数TOP排名-'+(param.areaName ? param.areaName : param.provName)+'</h3>');
				tourTopKpi.append(title);
				//
				if(!data.length){
					return ;
				}
				//添加内容
				var innerLeft = $('<ul class="first-child"></ul>');
				var innerRight = $('<ul/>');
				var index = 0 ;
				var step = 10 ;
				if(data.length < 10 ){
					step = data.length;
				}
				for(var i = 0 ; i < step  ; i++){
					index = (i+1);
					var name = data[i].SCENICNAME;				
					if(i < 5){	//左					
						var soreLeft = Number(data[i].LVLSCORE).toFixed(0);
						var innerLiLeft = $('<li>'+
								'<p><em>'+index+'</em>'+name+'  <span><strong>'+soreLeft+'</strong></span></p>'+
								'<div class="progress progress-primary progress-striped active">'+
									  '<div class="progress-bar" role="progressbar" aria-valuenow="'+soreLeft+'" aria-valuemin="0" aria-valuemax="100" style="width: '+soreLeft+'%;">'+
									   ' <span class="sr-only">'+soreLeft+'% Complete</span>'+
									  '</div>'+
								'</div>'+
							'</li>');
						innerLeft.append(innerLiLeft);
					}else if(i >= 5){ //右
						var soreRight = Number(data[i].LVLSCORE).toFixed(0);
						var innerLiRigt = $('<li>'+
								'<p><em>'+index+'</em>'+name+'<span><strong>'+soreRight+'</strong></span></p>'+
								'<div class="progress progress-primary progress-striped active">'+
									  '<div class="progress-bar" role="progressbar" aria-valuenow="'+soreRight+'" aria-valuemin="0" aria-valuemax="100" style="width: '+soreRight+'%;">'+
									   ' <span class="sr-only">'+soreRight+'% Complete</span>'+
									  '</div>'+
								'</div>'+
							'</li>');
						innerRight.append(innerLiRigt);
					}
				}			
				tourTopKpi.append(innerLeft).append(innerRight);
				
				//最佳旅游线路数据开始
				//获取容器
				var tourTravelRoute = $("#BestTravelRoute");		
				//清空容器
				tourTravelRoute.empty();
				var innTraTop = $('<ul class="tourRoute" ></ul>');
				var innTraBottom = $('<ul class="tourRoute"></ul>');
				var Tourtitle = $('<h3>最佳旅游线路</h3>');
				tourTravelRoute.append(Tourtitle);
				
				var indexTra=0;
				var stepTra = 6 ;
				if(data.length < 6 ){
					stepTra = data.length;
				}
				for(var j = 0 ; j < stepTra  ; j++){
					var name = data[j].SCENICNAME;				
					if(j<3){
						var innerTraLiTop = $('<li>'+name+	'<b></b><strong></strong>'+					
						'</li>');
					innTraTop.append(innerTraLiTop);
					}else{
						var innerTraLiBottom = $('<li>'+name+	'<b></b><strong></strong>'+					
						'</li>');
					innTraBottom.append(innerTraLiBottom);
					}
				}			
				tourTravelRoute.append(innTraTop);
				tourTravelRoute.append(innTraBottom);				
			}   	  						   	  			
		}
	});
}
/**
 * right top
 */

function weatherInit(cityId){
	var myDate=new Date();
	var weeknumber=myDate.getDay();
	var dateweek;
	if  (weeknumber==0)  dateweek="星期日";
	if  (weeknumber==1)  dateweek="星期一";
	if  (weeknumber==2)  dateweek="星期二";
	if  (weeknumber==3)  dateweek="星期三";
	if  (weeknumber==4)  dateweek="星期四";
	if  (weeknumber==5)  dateweek="星期五";
	if  (weeknumber==6)  dateweek="星期六";
	$("#dateweek").text(dateweek);
	$.ajax({
		url:util.warpRandom(App.baseURL+'/out/weather/weatherData.do?json'),
		async: true,type: "POST",dataType:'json',data : {cityId :cityId},error:function(){},
		success:function(data){
			if (typeof (data) != 'undefined'  && data.today != null && data.feature != null && data.pm25 != null) {
			
				
				var weatherContent = $("#weather");
				
				if(typeof(data.today) != "undefined" && data.today.result && typeof(data.feature) != "undefined" && data.feature != null && data.feature.result.length > 0){
					weatherContent.empty();	//清除内容
					//当天
					if(typeof(data.today) != "undefined" && data.today.result){
				var weatherTOP;
				var weatherBOM;
				var weather=data.today.result.weather;
				var tempHigt=parseInt(data.today.result.temp_high);
				var tempLow=parseInt(data.today.result.temp_low);
				if(tempLow>=20){
					weatherBOM="<div class='ico02_sunny'></div>";
				}else if(tempLow>=5){
					weatherBOM="<div class='ico_cold'></div>";
				}else if(tempLow<5){
					weatherBOM="<div class='ico_snow'></div>";
				}			
					if(weather.indexOf("雪")>-1){
						weatherTOP="<div class='snowy'></div>";
						weatherBOM="<div class='ico_snow'></div>";
					}else if(weather.indexOf("雨")>-1){
						weatherTOP="<div class='rainy'></div>";
						
						if(tempLow>=20){
							weatherBOM="<div class='ico_rainy'></div>";
						}else if(tempLow>=5){
							weatherBOM="<div class='ico02_rainy'></div>";
						}else if(tempLow<5){
							weatherBOM="<div class='ico_snow'></div>";
						}
						
						
			//				weatherBOM="<div class='ico_rainy'></div>";
				//		weatherBOM="<div class='ico02_rainy'></div>";
					}else if(weather.indexOf("晴")>-1){
						weatherTOP="<div class='windmill'><div class='sunny'></div></div>";
			//			weatherBOM="<div class='ico_sunny'></div>";
					}else if(weather.indexOf("云")>-1){
						weatherTOP="<div class='cloudy'></div>";
		//				weatherBOM="<div class='ico02_sunny'></div>";
					}else if(weather.indexOf("阴")>-1){
						weatherTOP="<div class='cloudy'></div>";
	//					weatherBOM="<div class='ico02_sunny'></div>";
					}

					
					var todayWeather =$(
							'<div class="top">'+ 		
									 '<div class="date"><font color="#ffc600">'+data.today.result.week+'</font>(今天, 实时：'+data.today.result.temperature_curr+')</div>'+	
							 '</div>'+ 	
							 '<div class="boxweather"  >'+weatherTOP+
							 '<div class="dataweather">'+
							 '<p class="degrees">'+data.today.result.temp_low+' ~ '+data.today.result.temp_high+'<sup>℃</sup></p>'+
							 '<p class="climate">'+data.today.result.weather+'</p>'+
							 '<p class="wind">'+data.today.result.wind+data.today.result.winp+'</p>'+
							
							 '</div>'+weatherBOM+'</div>'
					
						);
						 weatherContent.append(todayWeather);	
						
					}
			
				}
				var pm25Content = $('#pm25Content');
				//pm2.5
				if(data.pm25.result){
					pm25Content.empty();
					var pm25weather = $('<p></p>');					
					pm25Content.append(leafLevelHtml(pm25weather,data.pm25.result));
				}
			}   	  						   	  			
		}
	});
}



/**
 * right bottom
 */
function tourPieKpi(param){
	//设置标题
	$("#tourLeftBottom").text("旅游指数对照图例-"+param.name);
	var data = param.data ;
	if (typeof (data) != 'undefined' && data.length > 0) {
		//景区指数指标
		optionPie.title.text ="";
		
		for(var i = 0 ; i < data.length ; i++){
			if(data[i].child.length > 0){
				var title = data[i].KPI_NAME;
				optionPie.series[0].name = title ;
				optionPie.colorIndex = data[i].child.length;
				for(var j = 0 ; j < data[i].child.length ; j++){
					//  {value:1548, name:'搜索引擎'}
					var score = data[i].child[j].LVL_SCORE ? Number(data[i].child[j].LVL_SCORE): 0 ;
					var name = data[i].child[j].KPI_NAME;
					optionPie.series[0].data.push({value:score, name:name});
				}
			}			
		}
		
		myChartPie.setOption(optionPie,true);
	}  
}
/**
 * 指数指标星级计算方法入口
 * **/
function starLevelHtml(conent ,score){
	var $starDom = conent ;
	var index = Math.floor(score /20) ;
	//全心
	for (var i = 0 ; i < index; i++  ){
		var $fullStar = $('<strong class="fa fa-star" aria-hidden="true"></strong>'); //全星
		$starDom.append($fullStar);
	}
	//半心
	if(Math.floor(score%20) != 0){
		var $halfStar = $('<b class="w5k">'+	
				'<strong class="fa fa-star" aria-hidden="true"></strong>'+
				'<strong class="fa fa-star" aria-hidden="true"></strong>'+
				'</b>'); //半星
		$starDom.append($halfStar);
	}	
	//没心
	if(score%20!=0){
		for(var i=index;i<5;i++){
			var $noneStar = $('<strong class="fa fa-star noneStar" aria-hidden="true"></strong>');
			$starDom.append($noneStar);
		}
	}else{
		for(var i=index;i<5;i++){
			var $noneStar = $('<strong class="fa fa-star noneStar" aria-hidden="true"></strong>');
			$starDom.append($noneStar);
		}
	}
	return $starDom;
}
/**
 * pm2.5leaf级别计算方法入口
 * **/
function leafLevelHtml(conent ,obj){
	var $pm25Dom = conent ;
	var index = Math.ceil(Number(obj.aqi) /50) ;
	if(index==0){
		index=75;
	}
	var step = 0;
	if(index > 0 && index < 7 ){
		step = (7-index)
	}
	for (var i = 0 ; i < step ; i++  ){
		var $fullLeaf = $('<span class="fa fa-leaf" aria-hidden="true"></span>'); //全
		$pm25Dom.append($fullLeaf);
	}
	if(Math.floor(Number(obj.aqi)%50) != 0){
		var $halfLeaf = $('<b class="w5k">'+
				'<span class="fa fa-leaf" aria-hidden="true"></span>'+
				'<span class="fa fa-leaf" aria-hidden="true"></span>'+
			'</b>'); //半
		$pm25Dom.append($halfLeaf);
	}
	if(Math.floor(Number(obj.aqi)%50) != 0){
		for(var i=step+1;i<7;i++){
			var $noneLeaf = $('<span class="fa fa-leaf noneLeaf" aria-hidden="true"></span>'); //全
			$pm25Dom.append($noneLeaf);
		}
	}else{
		for(var i=step;i<7;i++){
			var $noneLeaf = $('<span class="fa fa-leaf noneLeaf" aria-hidden="true"></span>'); //全
			$pm25Dom.append($noneLeaf);
		}
	}
	var aqiDom = $('<strong class="dt" >PM2.5<em>'+obj.aqi+'</em></strong>') ;
	$pm25Dom.append(aqiDom);
	var aqiLevid  = $('<span class="pmDegree '+pm25Color(obj.aqi_levid)+'">'+
		'<strong>'+obj.aqi_levnm+'</strong></span>');
	$pm25Dom.append(aqiLevid);
	return $pm25Dom;
}
/**天气pm2.5样式计算**/
function pm25Color(aqi_levid){
	str = '';
	if(Number(aqi_levid) == 1 ){
		str = 'excellent';
	}else if(Number(aqi_levid) == 2 ){
		str = 'good';
	}else if(Number(aqi_levid) == 3 ){
		str = 'mildPollution';
	}else if(Number(aqi_levid) == 4 ){
		str = 'middlePollution';
	}else if(Number(aqi_levid) == 5 ){
		str = 'seriousPollution';
	}else if(Number(aqi_levid) == 6 ){
		str = 'severePollution';
	}else{
		str = 'excellent';
	}
	return str ;
}
/**指数指标趋势线就算**/
function levelDirection(level){
	str = '';
	if(Number(level) == -1 ){
		str = 'arrow-down';
	}else if(Number(level) == 1 ){
		str = 'arrow-up';
	}else{
		str = 'minus';
	}
	return str ;
}
/**指数指标图标变换**/
function iconChange(index){
	str = '';
	if(Number(index) == 1 ){
		str = 'heart-o';
	}else if(Number(index) == 2 ){
		str = 'car';
	}else if(Number(index) == 3 ){
		str = 'laptop';
	}else if(Number(index) == 4 ){
		str = 'money';
	}else{
		str = 'money';
	}
	return str ;
}
/**指数指标点击事件绑定**/
function onClickKpi(){
	$('.ul-list>li>ul, .ul-list>li>ul>li>ul').hide();
	$('.ul-list>li>ul>li>ul').show();
	$('.ul-list>li>a').click(function(){
		$(this).next('ul').slideToggle('30');
		$(this).parents('li').siblings('li').toggle();
	})
}
/**评价语选择**/
function desclevelHtml(name,kpicode,score){
	
	
	var ul='';
	var tip='';
	var odd='';
	var level=Math.floor((Number(score)+19.99)/20);
	
		 for(var i=1;i<=5;i++){
		   	  if(i<=level){
		   		  odd=odd+'<span class="span01"></span>';
		   	  }else{
		   		  odd=odd+'<span class="span02"></span>'; 
		   	  }
	     }
	
	switch(kpicode){
	case 'ZA':
		   switch(level){
		   case 5 :tip='流连忘返'; break;
		   case 4 :tip='依依不舍'; break;
		   case 3 :tip='清新舒适'; break;
		   default :tip='值得一去';break;
			 } 
		break;
	case 'ZB'://“通畅出游”（80-100	“比较畅通”（60-80），“路况一般”（40-60）， “耐心排队”（0-40），
		switch(level){
		case 5 :tip='通畅出游';break;
		case 4 :tip='比较畅通';break;
		case 3 :tip='路况一般';break;
		default :tip='耐心排队';break;
		}
		break;
	case 'ZC'://炙手可热（80-100）、备受瞩目（60-80）、不温不火（40-60）、名不见经传（0-40）
		switch(level){
		case 5 :tip='炙手可热';break;
		case 4 :tip='备受瞩目';break;
		case 3 :tip='不温不火';break;
		default: tip='名不见经传'; break;
		}
		break;
	case 'ZD'://中高消费（80-100），中产亲睐（60-80），工薪消费（40-60），低碳穷游（0-40），
		switch(level){
		case 5 :tip='中高消费';break;
		case 4 :tip='中产亲睐';break;
		case 3 :tip='工薪消费';break;
		default :tip='低碳穷游';break;
         }
		break;
	default : break;
	
	}
	
	ul='<ul class="ul-top" ><li>'+odd+'</li><li class="txt">'+tip+'('+score+')</li></ul>';
	
	return ul;
}

//总指标  笑脸等级

 function totalkpiLevel(name ,score){
	 var level=Math.floor((score+19.99)/20);
	 var tip ;
	 switch(level){
	 case 5 :tip="建议出行"  ;break;
	 case 4 :tip="较适宜出行";break;
	 case 3 :tip="适宜出行"  ;break;
	 default :tip="不宜出行" ;break;
	 
	 }
	 
	 var odd='';
	 if(level>3){
		 for(var i=0;i<level;i++){
			odd=odd+'<dd><span class="fa fa-smile-o"></span></dd>';
		}
	 }else if(level==3){
		 for(var i=0;i<level;i++){
			odd=odd+'<dd><span class="fa fa-meh-o"></span></dd>';
		}
	 }else{
		 for(var i=0;i<level;i++){
			 odd=odd+'<dd><span class="fa-frown-o"></span></dd>';
		 }
	 }
	 var innerHtml=$('<dl id="mousehover" class="outside" style="display:block;">'+
						'<dt>'+tip+'</dt>'+odd+
				//		'<dd class="txt">'+name+'</dd>'+
					'</dl>');
	 
	 $("#totalKpilevel").empty()
	 $("#totalKpilevel").append(innerHtml);
	 
 }

    


//-----------------------------------初始化-----------------------------