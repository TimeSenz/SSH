//二级菜单
        $(function(){
                $(".ui-nav>li").hover(function(){
                        $(this).find("ul.ui-nav-dropdown-invest").stop(false,true).slideDown();
                    },function(){
                        $(this).find("ul.ui-nav-dropdown-invest").stop(false,true).slideUp();	
                        })
                //微信二维码
                $('#wx').click(function(){
                    $('.opict').show();
                    $('.wx_code1').show();
                })
                $('.weixin-icon').click(function(){
                    $('.opict').show();
                    $('.wx_code').show();
                }) 
                $('.wx_code .close').click(function(){
                    $('.opict').hide();
                    $('.wx_code').hide();
                })
                $('.wx_code2 .close').click(function(){
                    $('.opict').hide();
                    $('.wx_code').hide();
                })
                $('.wx_code1 .close').click(function(){
                    $('.opict').hide();
                    $('.wx_code1').hide();
                })
                $('.opict').click(function(){
                	$('.opict').hide();
                    $('.wx_code').hide();
                    $('.wx_code1').hide();$('.opicta').show();
                }) 


                //充值
                $('#right_2_button').click(function(){
                    $('.opict').show();
                    $('.recharg').show();
                })
                $('.recharg .close').click(function(){
                    $('.opict').hide();
                    $('.recharg').hide();
                })

                $('.opict').click(function(){
                    $('.opict').hide();
                    $('.recharg').hide();$('.opicta').show();
                }) 
                
                //提现
                $('.userbank .close').click(function(){
                        $('.opict').hide();
                        $('.userbank').hide();
                    })
                     $('.userbank #close').click(function(){
                        $('.opict').hide();
                        $('.userbank').hide();
                    })
                    $('.opicta').click(function(){
                        $('.opicta').show();
                    })                     
            }) 
            function chickAddUserBank(){
        	$('.opict').show();
            $('#add').show();
        	}
        	function chickSelectUserBank(userid,banknumber,bankname,username,rmb){
        	$('.opict').show();
            $('#add').show();
            document.getElementById("userid").value = userid;
            document.getElementById("username").value = username;
            document.getElementById("bankname").value = bankname;
            document.getElementById("banknumber").value = banknumber;
            document.getElementById("rmb").value = rmb;
        	}
        	function chickUpdataUserBank(kh,kid,kname){
	        	$('.opict').show();
	            $('#updata').show();
	            document.getElementById("kh").value = kh;
	            document.getElementById("kid").value = kid;
	            document.getElementById("kname").value = kname;
        	}