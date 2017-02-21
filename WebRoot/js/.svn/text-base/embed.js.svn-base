//切换
/*window.onload{

}*/



// var regTitle = document.getElementById('register-title');
// var spans = regTitle.getElementsByTagName('span');
// //var con = regTitle.getElementsByTagName('ul');
// var regcontent1 = document.getElementById('register-content1');
// var register = document.getElementsByName("register-content");

// var i = 0;
// for (i = 0; i < spans.length; i++) {
// 	var index = 0;
// 	spans[i].index = register[i].index = i;
// 	//var onloads = [regs, regs1] //页面载入完执行
	
// 	spans[i].onclick = function() {
// 		for (i = 0; i < spans.length; i++) {
// 			spans[i].className = '';
// 			register[i].className = 'nones';
// 			//onload = onloads[i];

// 		}

// 		this.className = 'current';
// 		register[this.index].className = '';
// 	};
// }
//110103
function bankStr(){
	 var banks=document.getElementsByName("mark");
	  for(var i=0;i<banks.length;i++){
		  
		  onLondBankNumber(banks[i])
	    }

	  $(".right_2_img ul .border").eq(0).addClass("cur");
	  var ids=document.getElementsByName("yhk");
      document.getElementById("yhkid").value=ids[0].value;

}






function onLondBankNumber(mark){
	
	var as=mark.value;
	
	var sd=as.substring(as.length-4,as.length);
	
	mark.value=sd;
}


function checkmails(){
	document.getElementById("span1").innerHTML="";
}

function checkmail(){
	var mail=document.getElementById("txtEmail");
	if(mail.value==''||mail.value==null){
		document.getElementById("span1").innerHTML="<img src='images/icon2.png' /><font color='red'>邮箱不能为空</font>";
	}else{
		var m=/^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,4}$/;
		if(!m.exec(mail.value)){
			document.getElementById("span1").innerHTML="<img src='images/icon2.png' /><font color='red'>请输入正确的邮箱地址</font>";
		}else{
			document.getElementById("span1").innerHTML="正在检测...";
			$.ajax({
				url: "http://192.168.1.119:8080/clientweb/register",
				async: true,
				type: "post",
				data: {
					"email": mail.value
				},
				success: function(data) { //data获取的是action返回的json数据
					if (data == true) {
						document.getElementById("span1").innerHTML="<img src='images/icon1.png' />";
					} else {
						document.getElementById("span1").innerHTML="<img src='images/icon2.png' />邮箱已被注册";
						
						return false;
					}
				}
			});
			//document.getElementById("span1").innerHTML="邮箱已被注册";
			
		}
	}
}

function checkpasswords(){
	document.getElementById("span2").innerHTML="";
}

function checkpasswordss(pwd1){
	if(pwd1==null||pwd1==''){
		document.getElementById("span2").innerHTML="<img src='images/icon2.png' /><font color='red'>密码格式错误111</font>";
	}else if(pwd1.length<6){
		document.getElementById("span2").innerHTML="<img src='images/icon2.png' />密码不能少于六位222";
	}else{
		document.getElementById("span2").innerHTML="<img src='images/icon1.png' />";
	}
}

function checkpasswords2(){
	document.getElementById("span3").innerHTML="请再次输入密码";
}

function checkpassword2(pwd2){
	if(pwd2==null||pwd2==''){
		document.getElementById("span3").innerHTML="<img src='images/icon2.png' /><font color='red'>密码格式错误</font>";
	}else if(pwd2.length<6){
		document.getElementById("span3").innerHTML="<img src='images/icon2.png' /><font color='red'>密码输入不一致</font>";
	}else{
		var pwd1=document.getElementById("pwd1").value;
		
		if(pwd1!=pwd2){
			document.getElementById("span3").innerHTML="<img src='images/icon2.png' /><font color='red'>密码输入不一致</font>";
		}else{
			document.getElementById("span3").innerHTML="<img src='images/icon1.png' />";
		}
	}
}


function checkuname(){
	document.getElementById("span4").innerHTML="请输入中文或英文";
}

function checkuser(user){
	if(user==''){
		document.getElementById("span4").innerHTML="<img src='images/icon2.png' /><font color='red'>姓名不能为空</font>";
	}else{
		var yd=/^[a-zA-Z\u4e00-\u9fa5][a-zA-Z0-9\u4e00-\u9fa5]*$/;

		if(!yd.exec(user)){
			document.getElementById("span4").innerHTML="<img src='images/icon2.png' /><font color='red'>请输入中文或英文</font>";
		}else{
			document.getElementById("span4").innerHTML="<img src='images/icon1.png' />";
		}
	}
}

function checkPhone1(){
	document.getElementById("span5").innerHTML="请输入手机号或座机";
}

function checkPhone1s(){
	var phone1=document.getElementById("phone1");
	if(phone1.value==''||phone1.value==null){
		document.getElementById("span5").innerHTML="<img src='images/icon2.png' /><font color='red'>手机号不能为空</font>";
	}else{
		var p=/(^(0[0-9]{2,3}\-)?([2-9][0-9]{6,7})+(\-[0-9]{1,4})?$)|(^((\(\d{3}\))|(\d{3}\-))?(1[358]\d{9})$)/;
		if(!p.exec(phone1.value)){
			document.getElementById("span5").innerHTML="<img src='images/icon2.png' /><font color='red'>手机号码格式错误</font>";
		}else{
			document.getElementById("span5").innerHTML="<img src='images/icon1.png' />";
		}
	}
}




function check1(){
	var mail=document.getElementById("txtEmail").value;
	var pwd1=document.getElementById("pwd1").value;
	var pwd2=document.getElementById("pwd2").value;
	var username=document.getElementById("username").value;
	var phone1=document.getElementById("phone1").value;
	var QQ1=document.getElementById("QQ1").value;
	var m=/^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,4}$/;
	var patrn=/^[a-zA-Z][a-zA-Z0-9]*$/;
	var user=/^[a-zA-Z\u4e00-\u9fa5][a-zA-Z0-9\u4e00-\u9fa5]*$/;
	var qqq=/[1-9][0-9]{4,}/;
	var p=/(^(0[0-9]{2,3}\-)?([2-9][0-9]{6,7})+(\-[0-9]{1,4})?$)|(^((\(\d{3}\))|(\d{3}\-))?(1[358]\d{9})$)/;
	if(mail==''){
		document.getElementById("span1").innerHTML="<img src='images/icon2.png' /><font color='red'>邮箱不能为空</font>";
		return false;
	}else if(!m.exec(mail)){
		document.getElementById("span1").innerHTML="<img src='images/icon2.png' /><font color='red'>请输入正确的邮箱地址</font>";
		return false;
	}else if(pwd1==''){
		document.getElementById("span2").innerHTML="<img src='images/icon2.png' /><font color='red'>密码不能为空</font>";
		return false;a
	}else if(pwd1.length<6){
		document.getElementById("span2").innerHTML="<img src='images/icon2.png' /><font color='red'>密码不少于6位</font>";
		return false;
	}else if(pwd2==''){
		document.getElementById("span3").innerHTML="<img src='images/icon2.png' /><font color='red'>密码不能为空</font>";
		return false;
	}else if(pwd2.length<6){
		document.getElementById("span3").innerHTML="<img src='images/icon2.png' /><font color='red'>密码输入不一致</font>";
		return false;
	}else if(pwd1!=pwd2){
		document.getElementById("span3").innerHTML="<img src='images/icon2.png' /><font color='red'>密码输入不一致</font>";
		return false;
	}else if(username==''){
		document.getElementById("span4").innerHTML="<img src='images/icon2.png' /><font color='red'>姓名不能为空</font>";
		return false;
	}else if(!user.exec(username)){
		document.getElementById("span4").innerHTML="<img src='images/icon2.png' /><font color='red'>请输入中文或英文</font>";
		return false;
	}else if(phone1==''){
		document.getElementById("span5").innerHTML="<img src='images/icon2.png' /><font color='red'>电话号码不能为空</font>";
		return false;
	}else if(!p.exec(phone1)){
		document.getElementById("span5").innerHTML="<img src='images/icon2.png' /><font color='red'>请输入电话号码</font>";
		return false;
	}else if(QQ1==''){
		document.getElementById("span6").innerHTML="<img src='images/icon2.png' /><font color='red'>QQ号不能为空</font>";
		return false;
	}else if(!qqq.exec(QQ1)){
		document.getElementById("span6").innerHTML="<img src='images/icon2.png' /><font color='red'>请输入QQ号</font>";
		return false;
	}else{
		pwd1 = MD5(pwd1s.pwd1);
		return true;
	}
	
}

function checkmails2(){
	document.getElementById("span1s").innerHTML="";
}

function checkmail2(){
	var mail=document.getElementById("txtEmails");
	if(mail.value==''||mail.value==null){
		document.getElementById("span1s").innerHTML="<img src='images/icon2.png' /><font color='red'>邮箱不能为空</font>";
	}else{
		var m=/^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,4}$/;
		if(!m.exec(mail.value)){
			document.getElementById("span1s").innerHTML="<img src='images/icon2.png' /><font color='red'>邮箱格式错误</font>";
		}else{
			document.getElementById("span1s").innerHTML="正在检测...";
			$.ajax({
				url: "http://192.168.1.119:8080/clientweb/register",
				async: true,
				type: "post",
				data: {
					"email": mail.value
				},
				success: function(data) { //data获取的是action返回的json数据
					alert(data);
					if (data == true) {
						document.getElementById("span1s").innerHTML="<img src='images/icon1.png' />";
					} else {
						document.getElementById("span1s").innerHTML="<img src='images/icon2.png' />邮箱已被注册";
						
						return false;
					}
				}
			});
			
		}
	}
}

function checkpasswords2(){
	document.getElementById("span2s").innerHTML="";
}

function checkpasswordss2(pwd1){
	if(pwd1==null||pwd1==''){
		document.getElementById("span2s").innerHTML="<img src='images/icon2.png' /><font color='red'>密码格式错误</font>";
	}else if(pwd1.length>1 && pwd1.length<6){
		document.getElementById("span2s").innerHTML="<img src='images/icon2.png' />密码不能少于六位";
		document.getElementById("wrong_q").className = 'wrong_q';
		document.getElementById("wrong_w").className = 'wrong_w'; 
		document.getElementById("wrong_e").className = 'wrong_w';
	}else if(pwd1.length>6 && pwd1.length<11){
		document.getElementById("wrong_q").className = 'wrong_w';
		document.getElementById("wrong_w").className = 'wrong_q'; 
		document.getElementById("wrong_e").className = 'wrong_w';
	}
	else if(pwd1.length>11){
		document.getElementById("wrong_q").className = 'wrong_w';
		document.getElementById("wrong_w").className = 'wrong_w'; 
		document.getElementById("wrong_e").className = 'wrong_q';
	}else{
			document.getElementById("span2s").innerHTML="<img src='images/icon1.png' />";
		
	}
}

function checkpasswords22(){
	
	document.getElementById("span3s").innerHTML="请再次输入密码";
}
function checkpasswords11(){
	
	document.getElementById("span2s").innerHTML="请输入密码";
}
/*
function checkpassword22(pwd2){
	if(pwd2==null||pwd2==''){
		document.getElementById("span3s").innerHTML="<img src='images/icon2.png' /><font color='red'>密码格式错误</font>";
	}else if(pwd2.length<6){
		document.getElementById("span3s").innerHTML="<img src='images/icon2.png' /><font color='red'>密码输入不一致</font>";
	}else{
		var pwd1=document.getElementById("pwd1s").value;
		
		if(pwd1!=pwd2){
			document.getElementById("span3s").innerHTML="<img src='images/icon2.png' /><font color='red'>密码输入不一致</font>";
		}else{
			document.getElementById("span3s").innerHTML="<img src='images/icon1.png' />";
		}
	}
}*/


function checkpassword22(pwd2){
	if(pwd2==null||pwd2==''){
		document.getElementById("span3s").innerHTML="<img src='images/icon2.png' /><font color='red'>密码格式错误</font>";
		return false;
	}else{
		var tbPassword=document.getElementById("tbPassword").value;
		
		if(pwd2!=tbPassword){
			document.getElementById("span3s").innerHTML="<img src='images/icon2.png' /><font color='red'>密码输入不一致</font>";
			return false;
		}else{
			document.getElementById("span3s").innerHTML="<img src='images/icon1.png' />";
		}
	}
}

function checkcompanys(){
	document.getElementById("span7s").innerHTML="请输入中文或英文";
}

function checkcompany(user){
	if(user==''){
		document.getElementById("span7s").innerHTML="<img src='images/icon2.png' /><font color='red'>公司名不能为空</font>";
	}else{
		var yd=/^[a-zA-Z\u4e00-\u9fa5][a-zA-Z0-9\u4e00-\u9fa5]*$/;

		if(!yd.exec(user)){
			document.getElementById("span7s").innerHTML="<img src='images/icon2.png' />请输入中文或英文";
		}else{
			document.getElementById("span7s").innerHTML="<img src='images/icon1.png' />";
		}
	}
}

function checkuname2(){
	document.getElementById("span4s").innerHTML="请输入中文或英文";
}
function chinaname(){
	document.getElementById("span4s").innerHTML="请输入中文真实姓名";
}

function checkuser2(user,type){
	if(user==''&&type=='1'){
		document.getElementById("span4s").innerHTML="<img src='images/icon2.png' /><font color='red'>昵称不能为空</font>";
	}else if(user==''&&type=='2'){
		document.getElementById("span4s").innerHTML="<img src='images/icon2.png' /><font color='red'>真实姓名不能为空</font>";
	}else{
		var yd=/^[a-zA-Z\u4e00-\u9fa5][a-zA-Z0-9\u4e00-\u9fa5]*$/;

		if(!yd.exec(user)){
			document.getElementById("span4s").innerHTML="<img src='images/icon2.png' /><font color='red'>请输入中文或英文</font>";
		}else{
			document.getElementById("span4s").innerHTML="<img src='images/icon1.png' />";
			 if(window.ActiveXObject){
				 xhr = new ActiveXObject("Microsoft.XMLHTTP");
			 }else if(window.XMLHttpRequest){
				 xhr = new XMLHttpRequest();
			 }else{
				 alert("can't create xhr object!");
			 }
			 if(type=='1'){
				 xhr.open("get", "/ZhongCaiBao/userinfo/checkUser.action?checkFlag=nickname&userinfo.nickname="+user);
				 xhr.send(null);
				 xhr.onreadystatechange=doResponse;
			 }else if(type=='2'){
				 xhr.open("get", "/ZhongCaiBao/userinfo/checkUser.action?checkFlag=name&userinfo.name="+user);
				 xhr.send(null);
				 xhr.onreadystatechange=doResponse;
			 }else{
				 xhr.open("get", "/ZhongCaiBao/userinfo/checkUser.action?checkFlag=nickname&userinfo.nickname="+type);
				 xhr.send(null);
				 xhr.onreadystatechange=doResponse;
			 }
			 var txt=xhr.responseText;
			 function doResponse(){
				 //alert("doResponse()");
				 if(xhr.readyState==4&&xhr.status==200){
					 var txt=xhr.responseText;
					 if(txt=='昵称已存在'){
						 document.getElementById("span4s").innerHTML="<img src='images/icon2.png' />"+txt;
					 }else{
						 document.getElementById("span4s").innerHTML="<img src='images/icon1.png' />"+txt;
					 }
   
				 }
  
			 }
		}
	}
	

}

function checkUserIdcard(){
	var QQ1=document.getElementById("userinfo.idcard");
	if(QQ1.value==''||QQ1.value==null){
		document.getElementById("span6s").innerHTML="<img src='images/icon2.png' /><font color='red'>身份证号码不能为空</font>";
	}else{
		var qqq=/^(\d{15}$|^\d{18}$|^\d{17}(\d|X|x))$/;
		if(!qqq.exec(QQ1.value)){
			document.getElementById("span6s").innerHTML="<img src='images/icon2.png' /><font color='red'>身份证号格式错误</font>";
			return false;
		}else{
			 document.getElementById("span6s").innerHTML="<img src='images/icon1.png' />";
			 if(window.ActiveXObject){
				 xhr = new ActiveXObject("Microsoft.XMLHTTP");
			 }else if(window.XMLHttpRequest){
				 xhr = new XMLHttpRequest();
			 }else{
				 alert("can't create xhr object!");
			 }
			 xhr.open("get", "/ZhongCaiBao/userinfo/checkUser.action?checkFlag=idcard&userinfo.idcard="+QQ1.value);
			 xhr.send(null);
			 xhr.onreadystatechange=doResponse;
			 function doResponse(){
				 //alert("doResponse()");
				 if(xhr.readyState==4&&xhr.status==200){
					 var txt=xhr.responseText;
					 if(txt=='身份证号码已被注册'){
						 document.getElementById("span6s").innerHTML="<img src='images/icon2.png' />"+txt;
					 }else{
						 document.getElementById("span6s").innerHTML="<img src='images/icon1.png' />"+txt;
					 }

				 }

			 }
		}
	}
}





function checkPhone12(){
	document.getElementById("span5s").innerHTML="请输入手机号或座机";
}

function checkPhone1s2(phone){
	var phone1=document.getElementById("userinfo.phone");
	//alert(phone1.value);
	if(phone1.value==''||phone1.value==null){
		document.getElementById("span5s").innerHTML="<img src='images/icon2.png' /><font color='red'>手机号码格式错误</font>";
		document.getElementById("getPwd_btn_hide").style.display="inline-block";
		document.getElementById("getPwd_btn").style.display="none";
	}else{
		var p=/(^(0[0-9]{2,3}\-)?([2-9][0-9]{6,7})+(\-[0-9]{1,4})?$)|(^((\(\d{3}\))|(\d{3}\-))?(1[358]\d{9})$)/;
		document.getElementById("getPwd_btn_hide").style.display="inline-block";
		document.getElementById("getPwd_btn").style.display="none";
		if(!p.exec(phone1.value)){
			document.getElementById("span5s").innerHTML="<img src='images/icon2.png' /><font color='red'>手机号码格式错误</font>";
		}else{
			document.getElementById("span5s").innerHTML="<img src='images/icon1.png' />";
			if(window.ActiveXObject){
				xhr = new ActiveXObject("Microsoft.XMLHTTP");
			}else if(window.XMLHttpRequest){
				xhr = new XMLHttpRequest();
			}else{
				alert("can't create xhr object!");
			}
		    xhr.open("get", "/ZhongCaiBao/userinfo/checkUser.action?checkFlag=phone&userinfo.phone="+phone);
		    xhr.send(null);
		    xhr.onreadystatechange=doResponse;
		    function doResponse(){
		    	//alert("doResponse()");
			    if(xhr.readyState==4&&xhr.status==200){
			    	var txt=xhr.responseText;
			        if(txt=='手机号可以使用'){
			    	   document.getElementById("span5s").innerHTML="<img src='images/icon1.png' />"+txt;
			    	   document.getElementById("getPwd_btn").style.display="inline-block";
			    	   document.getElementById("getPwd_btn_hide").style.display="none";
			        }else{
			    	   document.getElementById("span5s").innerHTML="<img src='images/icon2.png' />"+txt;
			        }
			    }
  
}
		}
	}
}

function checkQq12(){
	document.getElementById("span6s").innerHTML="请输入身份证号";
}

function checkQq1s2(){
	var QQ1=document.getElementById("userinfo.idcard");
	if(QQ1.value==''||QQ1.value==null){
		document.getElementById("span6s").innerHTML="<img src='images/icon2.png' /><font color='red'>身份证号不能为空</font>";
	}else{
		var qqq=/^(\d{15}$|^\d{18}$|^\d{17}(\d|X|x))$/;
		if(!qqq.exec(QQ1.value)){
			document.getElementById("span6s").innerHTML="<img src='images/icon2.png' /><font color='red'>身份证号格式错误</font>";
			return false;
		}else{
			document.getElementById("span6s").innerHTML="<img src='images/icon1.png' />";
		}
	}
}

function check3(){
		var username=document.getElementById("userinfo.nickname").value;
		var phone1=document.getElementById("userinfo.phone").value;
		var pwd1=document.getElementById("tbPassword").value;
		var pwd2=document.getElementById("pwd2s").value;
	  //var inputCode = document.getElementById("email").value.toUpperCase();
		
		var check=document.getElementById("checkbox_name").checked;
		/**
		 * 贾凡2014-12-02修改bergin
		 * */
		//获取手机号并截取关键字
		var userphoneToo=document.getElementById("span5s").innerHTML;
		var userphoneTooIndexOf = userphoneToo.lastIndexOf("手");
		var userphoneTooSubstring = userphoneToo.substring(userphoneTooIndexOf, userphoneToo.length);
		//获取昵称并截取关键字
		var usernicknameToo=document.getElementById("span4s").innerHTML;
		var usernicknameTooIndexOf = usernicknameToo.lastIndexOf("昵");
		var usernicknameTooSubstring = usernicknameToo.substring(usernicknameTooIndexOf, usernicknameToo.length);
		//var inputCodeValue =document.getElementById("checkCode").value.toUpperCase();
		
		

		//获取验证码值
		var inputCode = document.getElementById("userinfo.remark").value.toUpperCase();
        /**
         * 贾凡2014-12-02修改end
         * */
		var user=/^[a-zA-Z\u4e00-\u9fa5][a-zA-Z0-9\u4e00-\u9fa5]*$/;
		var p=/(^(0[0-9]{2,3}\-)?([2-9][0-9]{6,7})+(\-[0-9]{1,4})?$)|(^((\(\d{3}\))|(\d{3}\-))?(1[358]\d{9})$)/;
    if(username==''){
		document.getElementById("span4s").innerHTML="<img src='images/icon2.png' /><font color='red'>姓名不能为空</font>";
		return false;
	}else if(!user.exec(username)){
		document.getElementById("span4s").innerHTML="<img src='images/icon2.png' /><font color='red'>请输入中文或英文</font>";
		return false;
	}else if(usernicknameTooSubstring=="昵称已存在"||usernicknameTooSubstring.trim()=="昵称已存在</font>"){
		//验证--昵称是否已存在
		document.getElementById("span4s").innerHTML="<img src='images/icon2.png' /><font color='red'>昵称已存在</font>";
		return false;
	}else if(phone1==''){
		document.getElementById("span5s").innerHTML="<img src='images/icon2.png' /><font color='red'>手机号码不能为空</font>";
		return false;
	}else if(!p.exec(phone1)){
		document.getElementById("span5s").innerHTML="<img src='images/icon2.png' /><font color='red'>请输入手机号码</font>";
		return false;
	}else if(userphoneTooSubstring=="手机号已被注册"||userphoneTooSubstring.trim()=="手机号已被注册</font>"){
		//验证--手机号是否已被注册
		document.getElementById("span5s").innerHTML="<img src='images/icon2.png' /><font color='red'>手机号已被注册11</font>";
		return false;
	}else if(inputCode.length<=0){
		//验证--验证码是否为空
		document.getElementById("span8s").innerHTML="<img src='images/icon2.png' /><font color='red'>验证码不能为空</font>";
		return false;
	}else if(check==true){
		
		
    }else if(check==false){
    	return false;
    }else
		if(pwd1==''){
		/*document.getElementById("span2s").innerHTML="<img src='images/icon2.png' /><font color='red'>密码不能为空</font>";*/
		return false;
	}/*else if(pwd1.length<6){
		document.getElementById("span2s").innerHTML="<img src='images/icon2.png' /><font color='red'>密码不少于6位</font>";
		return false;
	}*/else if(pwd2==''){
		document.getElementById("span3s").innerHTML="<img src='images/icon2.png' /><font color='red'>密码不能为空</font>";
		return false;
	}else if(pwd2.length<6){
		document.getElementById("span3s").innerHTML="<img src='images/icon2.png' /><font color='red'>密码输入不一致</font>";
		return false;
	}else if(pwd1!=pwd2){
		document.getElementById("span3s").innerHTML="<img src='images/icon2.png' /><font color='red'>密码输入不一致</font>";
		return false;
	}else{
		pwd1 = MD5(pwd1s.pwd1);
		return true;
	}
}
function check4(){
		var username=document.getElementById("userinfo.name").value;
		var QQ1=document.getElementById("userinfo.idcard").value;


		var user=/^[a-zA-Z\u4e00-\u9fa5][a-zA-Z0-9\u4e00-\u9fa5]*$/;
		var qqq=/^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}([0-9]|X)$/;


		if(username==''){
		document.getElementById("span4s").innerHTML="<img src='images/icon2.png' /><font color='red'>姓名不能为空</font>";
		return false;
	}else if(!user.exec(username)){
		document.getElementById("span4s").innerHTML="<img src='images/icon2.png' /><font color='red'>请输入中文或英文</font>";
		return false;
	}else if(QQ1==''){
		document.getElementById("span6s").innerHTML="<img src='images/icon2.png' /><font color='red'>身份证号不能为空</font>";
		return false;
	}else if(!qqq.exec(QQ1)){
		document.getElementById("span6s").innerHTML="<img src='images/icon2.png' /><font color='red'>请输入身份证号</font>";
		return false;
	}


}
function check5(){

   var inputCode = document.getElementById("email").value.toUpperCase();
 if(inputCode != code){
       document.getElementById("span8s").innerHTML="<font color='red'>验证码错误</font>";
       return false;
  }

}


function check6(){

var mobile=document.getElementById("email").value;
var name = /.+@.+\.[a-zA-Z]{2,4}$/;
var inputCode = document.getElementById("inputCode").value.toUpperCase();
 
    if(mobile==''){
		document.getElementById("tips").innerHTML="<img src='images/icon2.png' /><font color='red'>邮箱不能为空</font>";
		return false;
	}else if(!name.exec(mobile)){
		document.getElementById("tips").innerHTML="<img src='images/icon2.png' /><font color='red'>请输入正确的邮箱地址</font>";
		return false;
	}else{
			document.getElementById("tips").innerHTML="<img src='images/icon1.png' />";
			
		}
		

		if(inputCode.length<=0){
		document.getElementById("tips1").innerHTML="<img src='images/icon2.png' /><font color='red'>验证码不能为空</font>";
		return false;
	}else if(inputCode != code){
		   document.getElementById("tips1").innerHTML="<img src='images/icon2.png' /><font color='red'>请输入正确验证码</font>";
		return false;
	}


}
function check7(){

var phone1=document.getElementById("phone").value;
var p=/(^(0[0-9]{2,3}\-)?([2-9][0-9]{6,7})+(\-[0-9]{1,4})?$)|(^((\(\d{3}\))|(\d{3}\-))?(1[358]\d{9})$)/;
var inputCode = document.getElementById("inputCode").value.toUpperCase();
 
    if(phone1==''){
		document.getElementById("tips").innerHTML="<img src='images/icon2.png' /><font color='red'>电话号码不能为空</font>";
		return false;
	}else if(!p.exec(phone1)){
		document.getElementById("tips").innerHTML="<img src='images/icon2.png' /><font color='red'>请输入正确的电话号码</font>";
		return false;
	}else{
			document.getElementById("tips").innerHTML="<img src='images/icon1.png' />";
			
		}
		

		if(inputCode.length<=0){
		document.getElementById("tips1").innerHTML="<img src='images/icon2.png' /><font color='red'>验证码不能为空</font>";
		return false;
	}else if(inputCode != code){
		   document.getElementById("tips1").innerHTML="<img src='images/icon2.png' /><font color='red'>请输入正确验证码</font>";
		return false;
	}


}
function selUserBank(){

	var kh=document.getElementById("kh").value;
	var knameOption=document.getElementById("kname").value;
	var khs=/^\d{16}|\d{19}$/;
	if(knameOption=="请选择"){
		document.getElementById("khOption").innerHTML="<font color='red'>至少选择一个银行卡</font>";
		return false;
	}else if(kh==''){
			document.getElementById("khID").innerHTML="<font color='red'>请输入银行卡号</font>";
			return false;
		}else if(!khs.exec(kh)){
			document.getElementById("khID").innerHTML="<font color='red'>请输入正确的银行卡</font>";
			return false;
		};
}
function AddUserBank(){
	var userbank=document.getElementById("userbank.banknumbr").value;
	var NewUserbank=document.getElementById("banknumbrtoo").value;
	var banknumbrOption=document.getElementById("userbank.bankname").value;
	var khs=/^\d{16}|\d{19}$/;
	if(banknumbrOption=="请选择"){
		document.getElementById("bankOption").innerHTML="<font color='red'>请选择一个银行卡</font>";
		return false;
	}else if(userbank==''){
			document.getElementById("banknumbr").innerHTML="<font color='red'>请输入银行卡号</font>";
			return false;
		}else if(!khs.exec(userbank)){
			document.getElementById("banknumbr").innerHTML="<font color='red'>请输入正确的银行卡号</font>";
			return false;
		}else if(NewUserbank!=userbank){
			document.getElementById("Newbanknumbr").innerHTML="<font color='red'>您输入的密码不一致</font>";
			return false;
		};
	
}


function check2(){
	var mail=document.getElementById("txtEmails").value;
	var pwd1=document.getElementById("pwd1s").value;
	var pwd2=document.getElementById("pwd2s").value;
	var companys=document.getElementById("companys").value;
	var username=document.getElementById("userinfo.nickname").value;
	var phone1=document.getElementById("userinfo.phone").value;
	var QQ1=document.getElementById("QQ1s").value;
	var m=/^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,4}$/;
	var patrn=/^[a-zA-Z][a-zA-Z0-9]*$/;
	var user=/^[a-zA-Z\u4e00-\u9fa5][a-zA-Z0-9\u4e00-\u9fa5]*$/;
	var qqq=/[1-9][0-9]{4,}/;
	var p=/(^(0[0-9]{2,3}\-)?([2-9][0-9]{6,7})+(\-[0-9]{1,4})?$)|(^((\(\d{3}\))|(\d{3}\-))?(1[358]\d{9})$)/;
	if(mail==''){
		document.getElementById("span1s").innerHTML="<img src='images/icon2.png' /><font color='red'>邮箱不能为空</font>";
		return false;
	}else if(pwd1==''){
		document.getElementById("span2s").innerHTML="<img src='images/icon2.png' /><font color='red'>密码不能为空</font>";
		return false;
	}else if(pwd1.length<6){
		document.getElementById("span2s").innerHTML="<img src='images/icon2.png' /><font color='red'>密码不少于6位</font>";
		return false;
	}else if(pwd2==''){
		document.getElementById("span3s").innerHTML="<img src='images/icon2.png' /><font color='red'>密码不能为空</font>";
		return false;
	}else if(pwd2.length<6){
		document.getElementById("span3s").innerHTML="<img src='images/icon2.png' /><font color='red'>密码输入不一致</font>";
		return false;
	}else if(pwd1!=pwd2){
		document.getElementById("span3s").innerHTML="<img src='images/icon2.png' /><font color='red'>密码输入不一致</font>";
		return false;
	}else if(companys==''){
		document.getElementById("span7s").innerHTML="<img src='images/icon2.png' /><font color='red'>公司名不能为空</font>";
		return false;
	}else if(!user.exec(companys)){
		document.getElementById("span7s").innerHTML="<img src='images/icon2.png' /><font color='red'>请输入中文或英文</font>";
		return false;
	}else if(username==''){
		document.getElementById("span4s").innerHTML="<img src='images/icon2.png' /><font color='red'>姓名不能为空</font>";
		return false;
	}else if(!user.exec(username)){
		document.getElementById("span4s").innerHTML="<img src='images/icon2.png' /><font color='red'>请输入中文或英文</font>";
		return false;
	}else if(phone1==''){
		document.getElementById("span5s").innerHTML="<img src='images/icon2.png' /><font color='red'>电话号码不能为空</font>";
		return false;
	}else if(!p.exec(phone1)){
		document.getElementById("span5s").innerHTML="<img src='images/icon2.png' /><font color='red'>请输入电话号码</font>";
		return false;
	}else if(QQ1==''){
		document.getElementById("span6s").innerHTML="<img src='images/icon2.png' /><font color='red'>QQ号不能为空</font>";
		return false;
	}else if(!qqq.exec(QQ1)){
		document.getElementById("span6s").innerHTML="<img src='images/icon2.png' /><font color='red'>请输入QQ号</font>";
		return false;
	}else{
		pwd1 = MD5(pwd1s.pwd1);
		return true;
	}
	
}

//alert(document.getElementsByTagName('*').length);

var code ; //在全局 定义验证码
function createCode(){ 
code = new Array();
var codeLength = 4;//验证码的长度
var checkCode = document.getElementById("checkCode");
checkCode.value = "";

var selectChar = new Array(2,3,4,5,6,7,8,9,'A','B','C','D','E','F','G','H','J','K','L','M','N','P','Q','R','S','T','U','V','W','X','Y','Z');

for(var i=0;i<codeLength;i++) {
   var charIndex = Math.floor(Math.random()*32);
   code +=selectChar[charIndex];
}
if(code.length != codeLength){
   createCode();
}
checkCode.value = code;

}
/*function createCode(){
	var randval = Math.random();
	document.getElementById("yangimg").src="http://ucenter.51cto.com/verify.php?rnum="+randval;
	document.getElementById("email").value;
		
}*/




//字符类别判断
function CharMode(iN){
if (iN>=48 && iN <=57) //数字
return 1;
if (iN>=65 && iN <=90) //大写字母
return 2;
if (iN>=97 && iN <=122) //小写字母
return 4;
else
return 8; //特殊字符
}

//bitTotal函数
//计算当前密码中有多少种模式
function bitTotal(num){
modes=0;
for (i=0;i<4;i++){
if (num & 1) modes++;
num>>>=1;
}
return modes;
}

//checkStrong函数
//返回密码强度级别
function checkStrong(sPW){
if (sPW.length<=4)
return 0; //密码太短
Modes=0;
for (i=0;i<sPW.length;i++){
//测试每一个字符类别并统计有多少种模式.
Modes|=CharMode(sPW.charCodeAt(i));
}
return bitTotal(Modes);
}

//pwStrength函数
//当密码框失去焦点时,根据不同级别显示不同颜色
function pwStrength(pwd){
O_color="#aecfed";
s_color="#2da7e0";
if (pwd==null||pwd==''){
weakColor=okColor=strongColor=O_color;
}
else{
S_level=checkStrong(pwd);
	switch(S_level) {
	case 0:
	weakColor=okColor=strongColor=O_color;
	case 1:
	weakColor=s_color;
	okColor=strongColor=O_color;
	break;
	case 2:
	weakColor=okColor=s_color;
	strongColor=O_color;
	break;
	default:
	weakColor=okColor=strongColor=s_color;
	}
}
document.getElementById("weak").style.background=weakColor;
document.getElementById("strong").style.background=strongColor;
document.getElementById("ok").style.background=okColor;
return;
}
