;(function($){
	$.fn.extend({
		// sel
		sel:function(options){
			return this.each(function(){
				var $this = $(this);
				var $input = $this.find('.selInput'),
					$icon = $this.find('.selIcon'),
					$list = $this.find('.sellist'),
					$li = $list.find('li');

				$icon.click(function(){
					if($list.css('display') == 'none'){
						//清除所有显示状态
						$('.selIcon').not(this).html('▼');
						$('.sellist').not(this).hide();
						$('.cityDialog').hide();
						$list.show();
						$(this).html('▲');
					}else{
						$list.slideUp();
						$(this).html('▼');
					}
				})

				$li.hover(
					function(){
						$(this).addClass('on');
					},
					function(){
						$(this).removeClass('on');
					}
				)

				$li.click(function(){
					var x = $(this).find('a').text();
					$input.val(x);
					$list.hide();
					$icon.html('▼');
				})

			})

		},

		//SeamlessRolling
		SeamlessRolling: function(con){
		    var _ul_line = $(con.cname);//定义滚动区域
		    var moverStop;//需要清除的动画

		    //显示个数
		    var divheight = _ul_line.find('li:first').height();
		    divheight = divheight*con.showNumber;
		    _ul_line.height(divheight);

		    var liAnimate = function(){
		      var _firstli = _ul_line.find('li:first');
		      var _liheight = _firstli.height();
		      _firstli.animate(
		        {marginTop: '-'+_liheight+'px'},
		        600,
		        function(){
		          _firstli.css('marginTop','0px').appendTo(_ul_line);
		        }
		      );
		    };
		    _ul_line.hover(function(){clearInterval(moverStop);},function(){moverStop = setInterval(function(){liAnimate();},con.rdelay)}).trigger('mouseleave');
		  },

		// cityPlug
		cityPlug:function(options){
			return this.each(function(){
				var $this = $(this);
				$this.closest('.row').css({'position':'relative'});

				var cityHtml = '<div class="cityDialog" style="display:none;">\
				<i class="cityPoint png"></i>\
				<div class="cT clearfix"><strong>业务受理城市：</strong><a class="cityClose" href="javascript:void(0);">x</a></div>\
				<div class="cityC"></div>\
				<div class="c-input clearfix">\
				<label for="">其他城市</label><input class="c-input-name" type="text"><span>省</span>\
				<input class="c-input-name" type="text"><span>市</span><button class="cityClose btnOther" type="button">确定</button>\
				</div></div>';
				$this.after(cityHtml);
				$.ajax({
					type: "get",
					url: "http://www.yichedai.com/if/city.php",
					dataType: "jsonp",
					jsonp: "callback",//传递给请求处理程序或页面的，用以获得jsonp回调函数名的参数名(一般默认为:callback)
					jsonpCallback:"cityHandler",//自定义的jsonp回调函数名称，默认为jQuery自动生成的随机函数名，也可以写"?"，jQuery会自动为你处理数据
					success: function(json){

						$.each(json,function(i){
							if(i=='hot'){
								$('.cityC').prepend('<div class="cHot clearfix"><div class="cL">热门：</div><div class="cR"><ul class="'+i+'"></ul></div></div>')
							} else {
								$('.cityC').append('<div class="cHther clearfix"><div class="cL">'+i+'：</div><div class="cR"><ul class="'+i+'"></ul></div></div>')
							}
							$.each(json[i],function(j){
								$('.'+i).append('<li><a class="cityA" href="javascript:void(0);" name="'+json[i][j].code+'">'+json[i][j].name+"</a></li>");
							})
						})

					},
					error: function(){
					 //alert('fail')
					}
				});

				// open dialog
				$this.click(function(){
					//清除所有显示状态
					$('.selIcon').not(this).html('▼');
					$('.sellist').not(this).hide();
					$('.cityDialog').hide();
					$(this).next('.cityDialog').show();	
				})

				// close dialog
				$('.cityClose').click(function(){
					$(this).closest('.cityDialog').hide();
				})	

				// to value
				$('body').on('click','.cityA',function(){
					var cityNoVal =  $(this).attr('name'),
						cityName = $(this).text();
						$input = $(this).closest('.row').find('.cityPlug');
					$input.attr('cityno',cityNoVal).val(cityName).css('color','#666');
					$(this).closest('.cityDialog').hide();
				})

				// c-input
				$('body').on('click','.btnOther',function(){
					var $cinput = $(this).closest('.c-input'),
						$cinput1 = $cinput.find('input').eq(0),
						$cinput2 = $cinput.find('input').eq(1),
						inputVal = $cinput1.val()+','+$cinput2.val();
						inputVal = inputVal==',' ? '' : inputVal;
						//inputVal = dtrim(inputVal, ',');
					$this.attr('cityno',0).val(inputVal).css('color','#666');
				})

			});
			

			
		}
	})

})(jQuery);

$(function(){
	$('.sel').sel();
	$('.cityPlug').cityPlug();
	$('.selInput,.cityPlug').attr('readonly','readonly');

})

//公共去除最后字符方法
function dtrim(str, s){
	var reg = eval("/"+s+"$/gi");
	 str=str.replace(reg,"");
	 return str;
}
