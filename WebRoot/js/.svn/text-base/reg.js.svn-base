$(function(){
	$('form').submit(function(){
            
                if(!/.+@.+\.[a-zA-Z]{2,4}$/.test($(this).find("#login_name").val())){
                      $("#tips").html("*请输入正确的E-Mail地址.");
                      return false;
                }else{
                      $("#tips").html(" ");
                }
            
                    
                if( $(this).find("#login_pwd").val().length < 6){
                      $("#tips").html("*密码是6位数.");
                      return false;
                }else{
                       $("#tips").html(" ");
                       return true;
                }
            
        })
})