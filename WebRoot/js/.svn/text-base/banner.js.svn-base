			
        $(function(){
        	var cur=0;
        	var $li=$('#banner_list li');
        	var $btn=$('.roll-news-index a');
        	var iLen=$btn.length;
        	var timer=null;
        	$li.eq(0).fadeIn();
        	$btn.eq(0).addClass('active');
        	$btn.each(function(index){
        		$(this).click(function(){
        			bannerRun(index);
        		});
        	});
            function bannerRun(index){
            	cur=index;
            	$btn.eq(index).addClass('active').siblings().removeClass('active');
            	$li.eq(index).fadeIn().siblings().hide();      	
            };
            
            
            
            //自动轮播
            autoRun();
            function autoRun(){
            	timer=setInterval(function(){
            		
            		if(cur==(iLen-1)){
            			cur=0;
            		}else{
            			cur++;
            		};
            		bannerRun(cur);
            	},5000);
            };
            $li.hover(function(){
            	clearInterval(timer);
            },function(){
            	autoRun();
            })
        });
        //资讯动态轮播效果
        $(function(){
            var cur=0;
            var $li=$('#focus li');
            var $btn=$('.btn span');
            var iLen=$btn.length;
            var timer=null;
            $li.eq(0).fadeIn();
            $btn.eq(0).addClass('on');
            $btn.each(function(index){
                $(this).click(function(){
                    bannerRun(index);
                });
            });
            function bannerRun(index){
                cur=index;
                $btn.eq(index).addClass('on').siblings().removeClass('on');
                $li.eq(index).fadeIn().siblings().hide();       
            };
            //自动轮播
            autoRun();
            function autoRun(){
                timer=setInterval(function(){
                    if(cur==(iLen-1)){
                        cur=0;
                    }else{
                        cur++;
                    };
                    bannerRun(cur);
                },2000);
            };
            $li.hover(function(){
                clearInterval(timer);
            },function(){
                autoRun();
            })
         });
            //资讯动态按钮切换
            $(function(){
                var $btn1=$('.mod-news h1 a');
                var $con1=$('#new-list .news-list');
                $btn1.eq(0).addClass('cur');
                $con1.eq(0).show();
                $btn1.each(function(index){
                        $(this).click(function(){
                            tabChange(index);
                        });
                    });
                function tabChange(index){
                        $btn1.eq(index).addClass('cur').siblings().removeClass('cur');
                        $con1.eq(index).show().siblings().hide();
                    };
    
        });

    //如果当前时间为周二上午十点，则获取当前周的下一个周二的日期；反之，则获取当前周的下一个周二的日期
    function getTuesDay(){
            var num = oDate.getDate();
            var day = oDate.getDay();
            var hours = oDate.getHours();

            if(day == 2 && hours >= 10){
                num++;
                oDate.setDate(num);
                num = oDate.getDate();
                day = oDate.getDay();
            }

            while(day != 2){
                num++;
                oDate.setDate(num);
                num = oDate.getDate();
                day = oDate.getDay();
            }

            return num;
        }
    //倒计时
    var timer = null;
        var oDate=new Date();
        var oTues = getTuesDay();
        oDate.setDate(oTues);
        oDate.setHours(10,0,0,0);
        
        function time(){
            
            var oNew=new Date();

            var str=parseInt((oDate.getTime()-oNew.getTime())/1000);
            str--;
            
            var d=str/86400;
            str%=86400;

            var h=str/3600;
            str%=3600;

            var m=str/60;

            str%=60;

            if(parseInt(d) == 0 && parseInt(h) == 0 && parseInt(m) == 0 && parseInt(str) <= 0){
                
                oTues = getTuesDay();
                oDate.setDate(oTues);

                clearInterval(timer);
                timer = setInterval(time,1000);
            }

            var t = parseInt(d)+'天'+parseInt(h)+'小时'+parseInt(m)+'分'+parseInt(str)+'秒';
            
            oDiv.innerHTML=t;
        }
    

		