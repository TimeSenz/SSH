// JavaScript Document
$(function(){
		var $btn=$('.lm_list li');
        var $con=$('.right_nr');
        $btn.eq(0).css('color','#d6a443');
        $con.eq(0).css('display','block');
        $btn.each(function(index){
        		$(this).click(function(){
        			tabChange(index);
        		});
        	});
        function tabChange(index){
        		$btn.eq(index).css('color','#d6a443').siblings().removeClass('color','#d6a443');
        		$con.eq(index).css('display','block').siblings().hide();
        	};
});
//关于我们导航
// $(function btnChange(){
// 		var $btn=$('.tab_btn_con a');
//         var $con=$('.right_nr');
//         $btn.eq(0).addClass('cur');
//         $con.eq(0).css('display','block');
//         $btn.each(function(index){
//         		$(this).click(function(){
//         			tabChange(index);
//         		});
//         	});
//         function tabChange(index){
//         		$btn.eq(index).addClass('cur').siblings().removeClass('cur');
//         		$con.eq(index).css('display','block').siblings().hide();
//         	};
// });
 $(function(){
    $('.pagination .click').click(function(){
      $(this).addClass('current').siblings().removeClass('current')
    })
  })
