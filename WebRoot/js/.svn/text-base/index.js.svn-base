window.onload=function(){
	var oDiv=document.getElementById('news');
	var oUl=oDiv.getElementsByTagName('ul')[0];
		oUl.innerHTML=oUl.innerHTML+oUl.innerHTML;
		var aLi=oUl.getElementsByTagName('li');
		oUl.style.height=aLi[0].offsetHeight*aLi.length+'px'
		function move(){
			oUl.style.top=oUl.offsetTop-1+"px";//加减号控制向左或向右滚动、值大小控制滚动快慢
			// 向上滚动
			if(oUl.offsetTop<Math.floor(-oUl.offsetHeight/2)){
				oUl.style.top='0';
			}
			
		}
		var timer=setInterval(move,50)//设置定时器
		//鼠标划入停止事件
		oUl.onmouseover=function(){
			clearInterval(timer)
		}
		oUl.onmouseout=function(){
			timer=setInterval(move,30)
		}
						
	}