$(document).ready(function() {

  

   $('#submit').click(function(){
	errmsgReset();
	var uname = trim(encodeURI($('#uname').val()));
	var car_buy_price = $('#car_buy_price').val();
	var formType = $('#formType').val();
	var car_buy_year = $('#car_buy_year').val();
	var car_buy_month = $('#car_buy_month').val();
	var record_city = $('#cityInput').val();
	var phone = $('#phone').val();
	var email = $('#email').val();
	var leave_word = $('#leave_word').val();
	var province = '';
	var city     = '';
	var user_source = $('#user_source').val();
	var cityNo      = $("#cityInput").attr('cityNo');
	var channelid= getUrlParam("uid");
	
	if(cityNo == 0){
		var arr  = record_city.split(',');
	    province = encodeURI(arr[0]);
		city   	 = encodeURI(arr[1]);
	}
	
   if(user_source==undefined || user_source=="undefined" || user_source=='') {
                user_source = 'index';
   }

	$("select[name='car_buy_year']").each(function(){
		if($(this).val()!= null)
		{
			car_buy_year  =  $(this).val();		
		}
	});
	
	$("select[name='car_buy_month']").each(function(){
		if($(this).val()!= null)
		{
			car_buy_month  =  $(this).val();		
		}
	});
	 
	//validate form field
	  var pass=true;
	  if(uname==null || uname==""){
			$('#uname_err')[0].innerHTML="请正确填写用户名";
			pass=false;
	   }
	 if(!(/^1[3|4|5|8][0-9]\d{4,8}$/.test(phone))){
			$('#phone_err')[0].innerHTML="请正确填写手机号";
			pass=false;
		} 
	  if(car_buy_year==null || car_buy_year=="" || car_buy_month==null || car_buy_month==""){
			$('#date_err')[0].innerHTML="请正确选择购车时间";
			pass=false;
	   }	
	  if(record_city==null || record_city==""){
			$('#cityInput_err')[0].innerHTML="请选择或填写车辆登记城市";
			pass=false;
	   }
	  if(car_buy_price==null || car_buy_price=="" || car_buy_price.length >4){
			$('#car_buy_price_err')[0].innerHTML="请正确填写车辆购置价格最大9999万元";
			pass=false;
	   }
	  if(email!=null && email.length>0){
			reg = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;
			if(reg.test(email)==false){
				$('#email_err')[0].innerHTML="请正确填写email";
				pass=false;
			}
			
	   }	   


	  if(pass==false){
		return false;
	  } 
	
	//validate form field

	
	}); 





});

function clearform(){
	document.getElementById('uname').value="";
	document.getElementById('car_buy_price').value="";
	document.getElementById('phone').value="";
	document.getElementById('email').value="";
	document.getElementById('leave_word').value="";
	errmsgReset();
}
function trim(str){
     return str.replace(/(^\s*)|(\s*$)/g, "");
}
function getUrlParam(name)
{
		var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
		var r = window.location.search.substr(1).match(reg);  //匹配目标参数
		if (r!=null) return unescape(r[2]); return null; //返回参数值
} 
function errmsgReset(){
	$('#uname_err')[0].innerHTML=""; 
	$('#phone_err')[0].innerHTML="";
	$('#date_err')[0].innerHTML="";
	$('#cityInput_err')[0].innerHTML="";
	$('#car_buy_price_err')[0].innerHTML="";
	$('#email_err')[0].innerHTML=""; 	
}
function update(data){
	$('.simplemodal-close').trigger('click');
	//alert(data.msg);
}

