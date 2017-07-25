/*
 * 插件扩展
 */
(function($) {

	/** ***********************************简易滑动块******************************* */
	jQuery.fn.slip = function(options) {
		//参数定义
		var defaults = {
			setleft : 0, //距离左侧偏移量
			setTop : 0, // 距离顶部偏移量
			speed : 30, // 速度
		};
		var opts = jQuery.extend(defaults, options); //参数追加
		//参数封装
		var data = {
			obj : this,
			options : opts
		}
		setInterval(function () {
			var speedLeft= (data.options.setleft-data.obj[0].offsetLeft)/10;// Math.ceil是向上取整。而Math.floor是向下取整。。
			var speedTop= (data.options.setTop-data.obj[0].offsetTop)/10;// Math.ceil是向上取整。而Math.floor是向下取整。。
			if (speedLeft>0){
				speedLeft=Math.ceil(speedLeft)
			}else{
				speedLeft=Math.floor(speedLeft)
			}
			if (speedTop>0){
				speedTop=Math.ceil(speedTop)
			}else{
				speedTop=Math.floor(speedTop)
			}
			data.obj[0].style.left=data.obj[0].offsetLeft+speedLeft+'px';
			data.obj[0].style.top=data.obj[0].offsetTop+speedTop+'px';
		},data.options.speed);
	};	
	/** *********************************简易滑块******************************* */
})(jQuery);
