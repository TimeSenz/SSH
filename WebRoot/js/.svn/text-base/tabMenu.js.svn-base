//申请条件，准备材料部分
$(function(){
		var $btn=$('.require p a');
        var $con=$('.recon div');
        $btn.eq(0).addClass('active');
        $con.eq(0).css('display','block');
        $btn.each(function(index){
        		$(this).click(function(){
        			tabMenu(index);
        		});
        	});
        function tabMenu(index){
        		$btn.eq(index).addClass('active').siblings().removeClass('active');
        		$con.eq(index).css('display','block').siblings().hide();
        	};
});

//GPS,抵押部分
$(function(){
		var $btn=$('.category a');
        var $con=$('#form-con form');
        $btn.eq(0).addClass('curr');
        $con.eq(0).css('display','block');
        $btn.each(function(index){
        		$(this).click(function(){
        			tabMenu(index);
        		});
        	});
        function tabMenu(index){
        		$btn.eq(index).addClass('curr').siblings().removeClass('curr');
        		$con.eq(index).css('display','block').siblings().hide();
        	};
});
//标的详情，投标记录
$(function(){
      $(".info_nav_con a").click(function(){
        index=$(this).index();
        $(this).addClass('bit').siblings().removeClass('bit');
        $('.info_main_con>div').eq(index).show().siblings().hide();
      })  
})