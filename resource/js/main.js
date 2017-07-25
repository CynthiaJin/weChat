//检测显示器窗口的宽高

function getWindowSize(){
	var winWidth;
	//获取窗口宽度
	if(window.innerWidth){
		winWidth = window.innerWidth;
	}else if((document.body)&&(document.body.clientWidth)){
		winWidth=document.body.clientWidth;
	}
	return winWidth;	
}

//直接在输入框中提示   警告
function inputWarnning(id){
	$(id).val('');
	 var text = $(id).attr('placeholder');
	 $(id).addClass('warnning').attr('placeholder','地点未找到，请重新输入！');
	 setTimeout(function(){
		$(id).removeClass('warnning').attr('placeholder',text);
	},5000);  
}
//弹框警告
function popWarnning(id){
	 $(id).popup('open');
	 setTimeout(function(){
		$(id).popup('close');
	},4000);  
	 
}


