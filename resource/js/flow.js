(function($){
	 $.fn.scrollImage = function() {
        //自己的插件代码
        var _this=$(this);
        var leftvalue=0;
		var winWidth=0;
		var child = _this.children('li').length;
		var getWindowSize = function(){
			//获取窗口宽度
			if(window.innerWidth){
				winWidth = window.innerWidth;
			}else if((document.body)&&(document.body.clientWidth)){
				winWidth=document.body.clientWidth;
			}
		}();
		var bwidth = winWidth-10;
		var interv;
		_this.children('li').width(bwidth);
		var leftj;
		var child;
		function auto(leftvalue){
			child = _this.children('li').length;
			leftj= _this.offset().left;
					interv = setInterval(function(){
					/*_this.on('vmousedown',function(){
						window.clearInterval(interv);
					});
					_this.on('vmouseup',function(){
						window.setInterval(interv);
					});*/
				
				if(leftvalue-leftj<=0 && leftvalue!=-bwidth*(child-1)){
					leftvalue-=bwidth;
				}else if(leftvalue==-bwidth*(child-1)){
					leftvalue+=bwidth;
				}else if(leftvalue-leftj>0 && leftvalue!=0){
					leftvalue+=bwidth;
				}
				_this.animate({'left':leftvalue+'px'},500);
				leftj = _this.offset().left;
			},2000);
		}
		
		var init = function(){
			_this.width((child*bwidth)+'px');
			_this.on("swipeleft",function(){
				window.clearInterval(interv);
					if(leftvalue>-bwidth*(child-1)){
						leftvalue = leftvalue-bwidth;
						$(this).animate({'left':leftvalue+'px'},500);
						interv = setInterval(function(){
					if(leftvalue-leftj<=0 && leftvalue!=-bwidth*(child-1)){
						leftvalue-=bwidth;
					}else if(leftvalue==-bwidth*(child-1)){
						leftvalue+=bwidth;
					}else if(leftvalue-leftj>0 && leftvalue!=0){
						leftvalue+=bwidth;
					}
					_this.animate({'left':leftvalue+'px'},500);
					leftj = _this.offset().left;
				},2000);
					
				}
			})
			_this.on("swiperight",function(){
				window.clearInterval(interv);
				if(leftvalue<0){
					leftvalue = leftvalue+bwidth;
					$(this).animate({'left':leftvalue+'px'},500);
						interv = setInterval(function(){
						if(leftvalue-leftj<=0 && leftvalue!=-bwidth*(child-1)){
							leftvalue-=bwidth;
						}else if(leftvalue==-bwidth*(child-1)){
							leftvalue+=bwidth;
						}else if(leftvalue-leftj>0 && leftvalue!=0){
							leftvalue+=bwidth;
						}
						_this.animate({'left':leftvalue+'px'},500);
						leftj = _this.offset().left;
					},2000);
				}
			})
			auto(leftvalue);
		}();
    };
	
})(jQuery);
