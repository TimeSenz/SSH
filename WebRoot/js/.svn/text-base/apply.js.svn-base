$(function(){
	$(".applyCLT a:last").css({'marginRight':0})
	// tab
	$(".applyCLT a").click(function(){

		// define
		var num = $(this).index();
		var $applyC = $(this).closest('.applyC');
		var $form = $applyC.find('.applyCLForm').find('.applyFo');
		var $applyCon = $applyC.find('.applyCR').find('.applyCR-con');

		// clear
		$(".applyCLT a").removeClass('curr');
		$("#formType").val('');
		$applyCon.hide();

		// form reset
		//$("#appform")[0].reset();


		// to do
		$(this).addClass('curr');
		$('#formType').val(num);
		$applyCon.eq(num).show();
	});

	//获取后缀formType
	$formType = getUrlParam('formType');
	if ($formType != null && $formType <= 1){
		$(".applyCLT a").eq($formType).trigger('click');
	}
})
