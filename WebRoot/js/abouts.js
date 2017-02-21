function check2(){
	var oldPassword=document.getElementById("oldPassword").value
	var newPassword=document.getElementById("newPassword").value;
	var newPassword2=document.getElementById("newPassword2").value;
	var yuan=document.getElementById("yuanmima").value;


if(oldPassword==''){
		document.getElementById("span1s").innerHTML="<font color='red'>密码不能为空</font>";
		return false;
	}
	else if(oldPassword!=yuan){
		document.getElementById("span1s").innerHTML="<font color='red'>与原密码不一致</font>";
		return false;
	}else if(newPassword==oldPassword){
		document.getElementById("span2s").innerHTML="<font color='red'>不能于原密码一致</font>";
		return false;
	}else if(newPassword.length<6 || newPassword=="123456"){
		document.getElementById("span2s").innerHTML="<font color='red'>密码安全度较低</font>";
		return false;
	}else if(newPassword2!=newPassword){
		document.getElementById("span3s").innerHTML="<font color='red'>密码输入不一致</font>";
		return false;
	}
	
}
function check1(){
	var username=document.getElementById("userinfo.name").value;
		var QQ1=document.getElementById("userinfo.idcard").value;


		var user=/^[a-zA-Z\u4e00-\u9fa5][a-zA-Z0-9\u4e00-\u9fa5]*$/;
		var qqq=/^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}([0-9]|X)$/;


		if(username==''){
		document.getElementById("span4s").innerHTML="<font color='red'>姓名不能为空</font>";
		return false;
	}else if(username.match(/[^\u4e00-\u9fa5]/g)){
		document.getElementById("span4s").innerHTML="<font color='red'>请输入中文真实姓名</font>";
		return false;
	}else if(QQ1==''){
		document.getElementById("span6s").innerHTML="<font color='red'>身份证号不能为空</font>";
		return false;
	}else if(!qqq.exec(QQ1)){
		document.getElementById("span6s").innerHTML="<font color='red'>请输入身份证号</font>";
		return false;
	}
}
function check3(){
	var txtEmail=document.getElementById("txtEmail").value;
	var newTxtEmail=document.getElementById("newTxtEmail").value;
	var newTxtEmail2=document.getElementById("newTxtEmail2").value;
	var m=/^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,4}$/;
	var yuanyx=document.getElementById("yuanyx").value;

	
	if(txtEmail==''){
		document.getElementById("span4s").innerHTML="<font color='red'>密码不能为空</font>";
		return false;
	}
	else if(txtEmail!=yuanyx){
		document.getElementById("span4s").innerHTML="<font color='red'>与原邮箱不一致</font>";
		return false;
	}else if(newTxtEmail==''){
		document.getElementById("span5s").innerHTML="<font color='red'>邮箱不能为空</font>";
		return false;
	}else if(!m.exec(newTxtEmail)){
		document.getElementById("span5s").innerHTML="<font color='red'>邮箱格式错误</font>";
		return false;
	}else if(newTxtEmail2!=newTxtEmail){
		document.getElementById("span6s").innerHTML="<font color='red'>邮箱输入不一致</font>";
		return false;
	}
}
function check13(){
	var newTxtEmails=document.getElementById("newTxtEmails").value;
	var m=/^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,4}$/;

if(newTxtEmails==''){
		document.getElementById("span44s").innerHTML="<font color='red'>邮箱不能为空</font>";
		return false;
	}else if(!m.exec(newTxtEmails)){
		document.getElementById("span44s").innerHTML="<font color='red'>邮箱格式错误</font>";
		return false;
	}
}
function check4(){
	var phone11=document.getElementById("phone11").value;
	var newEmail1=document.getElementById("newEmail1").value;
	var newEmail12=document.getElementById("newEmail12").value;
	var m=/^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,4}$/;
	var yuansj=document.getElementById("yuansj").value;

	
	if(phone11==''){
		document.getElementById("span7s").innerHTML="<font color='red'>手机号不能为空</font>";
		return false;
	}
	else if(phone11!=yuansj){
		document.getElementById("span7s").innerHTML="<font color='red'>与原手机号不一致</font>";
		return false;
	}else if(newEmail1==''){
		document.getElementById("span8s").innerHTML="<font color='red'>邮箱不能为空</font>";
		return false;
	}else if(!m.exec(newEmail1)){
		document.getElementById("span8s").innerHTML="<font color='red'>邮箱格式错误</font>";
		return false;
	}else if(newEmail12!=newEmail1){
		document.getElementById("span9s").innerHTML="<font color='red'>邮箱输入不一致</font>";
		return false;
	}
}
function check5(){
	var txtEmail1=document.getElementById("txtEmail1").value;
	var newphone=document.getElementById("newphone").value;
	var newphone2=document.getElementById("newphone2").value;
	var p=/(^(0[0-9]{2,3}\-)?([2-9][0-9]{6,7})+(\-[0-9]{1,4})?$)|(^((\(\d{3}\))|(\d{3}\-))?(1[358]\d{9})$)/;
	var yuanyx1=document.getElementById("yuanyx1").value;

	
	if(txtEmail1==''){
		document.getElementById("span10s").innerHTML="<font color='red'>密码不能为空</font>";
		return false;
	}
	else if(txtEmail1!=yuanyx1){
		document.getElementById("span10s").innerHTML="<font color='red'>与原邮箱不一致</font>";
		return false;
	}else if(newphone==''){
		document.getElementById("span11s").innerHTML="<font color='red'>手机号不能为空</font>";
		return false;
	}else if(!p.exec(newphone)){
		document.getElementById("span11s").innerHTML="<font color='red'>手机号格式错误</font>";
		return false;
	}else if(newphone2!=newphone){
		document.getElementById("span12s").innerHTML="<font color='red'>手机号输入不一致</font>";
		return false;
	}
}

/*function check6(){
	var phone1=document.getElementById("phone1").value+"/";
	var newphone=document.getElementById("newphone").value;
	var newphone2=document.getElementById("newphone2").value;
	var p=/(^(0[0-9]{2,3}\-)?([2-9][0-9]{6,7})+(\-[0-9]{1,4})?$)|(^((\(\d{3}\))|(\d{3}\-))?(1[358]\d{9})$)/;
	var yuansj=document.getElementById("yuansj").value;

	
	if(phone1==''){
		document.getElementById("span13s").innerHTML="<font color='red'>手机号不能为空</font>";
		return false;
	}
	else if(phone1!=yuansj){
		document.getElementById("span13s").innerHTML="<font color='red'>与原手机号不一致</font>";
		return false;
	}else if(newphone==''){
		document.getElementById("span14s").innerHTML="<font color='red'>手机号不能为空</font>";
		return false;
	}else if(!p.exec(newphone)){
		document.getElementById("span14s").innerHTML="<font color='red'>手机号格式错误</font>";
		return false;
	}else if(newphone2!=newphone){
		document.getElementById("span15s").innerHTML="<font color='red'>手机号输入不一致</font>";
		return false;
	}
}*/
function check7(){
	var phones1=document.getElementById("phones1").value;
	var newmail1=document.getElementById("newmail1").value;
	var newmail2=document.getElementById("newmail2").value;
	var p=/(^(0[0-9]{2,3}\-)?([2-9][0-9]{6,7})+(\-[0-9]{1,4})?$)|(^((\(\d{3}\))|(\d{3}\-))?(1[358]\d{9})$)/;
	var yuansj=document.getElementById("yuansj").value;

	
	if(phones1==''){
		document.getElementById("span13s").innerHTML="<font color='red'>手机号不能为空</font>";
		return false;
	}
	else if(phones1!=yuansj){
		document.getElementById("span13s").innerHTML="<font color='red'>与原手机号不一致</font>";
		return false;
	}else if(newmail1==''){
		document.getElementById("span14s").innerHTML="<font color='red'>手机号不能为空</font>";
		return false;
	}else if(!p.exec(newmail1)){
		document.getElementById("span14s").innerHTML="<font color='red'>手机号格式错误</font>";
		return false;
	}else if(newmail2!=newmail1){
		document.getElementById("span15s").innerHTML="<font color='red'>手机号输入不一致</font>";
		return false;
	}
}
function check8(){
	var emali12=document.getElementById("emali12").value;
	var phoness=document.getElementById("phoness").value;
	var p=/(^(0[0-9]{2,3}\-)?([2-9][0-9]{6,7})+(\-[0-9]{1,4})?$)|(^((\(\d{3}\))|(\d{3}\-))?(1[358]\d{9})$)/;
	var mm=/^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,4}$/;
	var yuansj=document.getElementById("yuansj").value;
	var yuanyx=document.getElementById("yuanyx").value;

	
	if(emali12!=yuanyx){
		document.getElementById("span16s").innerHTML="<font color='red'>与原邮箱不一致</font>";
		return false;
	}else if(phoness!=yuansj){
		document.getElementById("span17s").innerHTML="<font color='red'>与原手机号不一致</font>";
		return false;
	}else{
		$('#modPswForm6').hide();
		$('#modPswForm7').show();
		return false;
	}
}
function check9(){
	var psw=document.getElementById("psw").value;
	var psw2=document.getElementById("psw2").value;

	
	if(psw==''){
		document.getElementById("span18s").innerHTML="<font color='red'>密码不能为空</font>";
		return false;
	}else if(psw.length<6 || psw=="123456"){
		document.getElementById("span18s").innerHTML="<font color='red'>密码安全度较低</font>";
		return false;
	}else if(psw2!=psw){
		document.getElementById("span19s").innerHTML="<font color='red'>密码输入不一致</font>";
		return false;
	}
}
/*function check12(){
	var psw=document.getElementById("psw").value;
	var psw2=document.getElementById("psw2").value;

	
	if(psw==''){
		document.getElementById("span18s").innerHTML="<font color='red'>密码不能为空</font>";
		return false;
	}else if(psw.length<6 || psw=="123456"){
		document.getElementById("span18s").innerHTML="<font color='red'>密码安全度较低</font>";
		return false;
	}else if(psw2!=psw){
		document.getElementById("span19s").innerHTML="<font color='red'>密码输入不一致</font>";
		return false;
	}
}*/
function check10(){
	var emali11=document.getElementById("emali11").value;
	var phones11=document.getElementById("phones11").value;
	var p=/(^(0[0-9]{2,3}\-)?([2-9][0-9]{6,7})+(\-[0-9]{1,4})?$)|(^((\(\d{3}\))|(\d{3}\-))?(1[358]\d{9})$)/;
	var mm=/^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,4}$/;
	var yuansj=document.getElementById("yuansj").value;
	var yuanyx=document.getElementById("yuanyx").value;

	
	if(emali11!=yuanyx){
		document.getElementById("span20s").innerHTML="<font color='red'>与原邮箱不一致</font>";
		return false;
	}else if(phones11!=yuansj){
		document.getElementById("span21s").innerHTML="<font color='red'>与原手机号不一致</font>";
		return false;
	}else{
		$('#modPswForm8').hide();
		$('#modPswForm10').hide();
		$('#modPswForm9').show();
		$('.fn-clear li:eq(1)').addClass("two");
		$('.fn-clear li:eq(0)').removeClass("one").addClass("no");
		return false;
	}
}
/*function check11(){
	var pass=document.getElementById("pass").value;
	var pass2=document.getElementById("pass2").value;

	
	if(pass==''){
		document.getElementById("span22s").innerHTML="<font color='red'>密码不能为空</font>";
		return false;
	}else if(pass2!=pass){
		document.getElementById("span23s").innerHTML="<font color='red'>密码输入不一致</font>";
		return false;
	}
}*/

function check11(){
	var paw=document.getElementById("paw").value;
	var yuanmm=document.getElementById("yuanmm").value;
	var psws=document.getElementById("psws").value;
	var psws2=document.getElementById("psws2").value;


	if(paw==''){
		document.getElementById("span22s").innerHTML="<font color='red'>密码不能为空</font>";
		return false;
	}else if(paw!=yuanmm){
		document.getElementById("span22s").innerHTML="<font color='red'>与原密码不一致</font>";
		return false;
	}else if(psws==paw){
		document.getElementById("span23s").innerHTML="<font color='red'>不能于原密码一致</font>";
		return false;
	}else if(psws.length<6 || psws=="123456"){
		document.getElementById("span23s").innerHTML="<font color='red'>密码安全度较低</font>";
		return false;
	}else if(psws==''){
		document.getElementById("span23s").innerHTML="<font color='red'>密码不能为空</font>";
		return false;
	}else if(psws2!=psws){
		document.getElementById("span24s").innerHTML="<font color='red'>输入密码不一致</font>";
		return false;
	}
	else{
		$('#modPswForm8').hide();
		$('#modPswForm9').hide();
		$('#modPswForm10').show();
		$('.fn-clear li:eq(1)').removeClass("two").addClass("no");
		$('.fn-clear li:eq(2)').addClass("three");

		false;
	}
}
function check20(){
	 var banckid=$(".right_2_img ul .border").size();
		var txmm=document.getElementById("txmm").value;
		  var yuantxmm=document.getElementById("yuantxmm").value;
		  var icoudID=document.getElementById("icoudID").value;
		  var name=document.getElementById("name").value;
		  var email=document.getElementById("email").value;
		  var phone=document.getElementById("phone").value;
		  var num1,num2
			num1=$('.yue').text();
			num2=$('#jisuan').val();
			a=parseFloat(num1);
			b=parseFloat(num2);
	  if(banckid==0){
		  document.getElementById("txtfp").innerHTML="<font color='red'>请选择添加银行卡</font>";
		 	return false;
	  }else if(icoudID=="" || name=="" || email=="" || phone==""){
			document.getElementById("txtfp").innerHTML='<a href="/ZhongCaiBao/userinfo/personCenter.action" style="color:red">请完善个人账户信息</a>';
			return false;
		}else{
		  if(b>a){
				document.getElementById("txtfp").innerHTML="<font color='red'>* 余额不足</font>";
				 	return false;
			}else if(yuantxmm=="123456"){
				document.getElementById("txtfp").innerHTML='<a href="/ZhongCaiBao/userinfo/personCenter.action" style="color:red">请设置提现密码</a>';
				return false;
			}else if(txmm==""){
			document.getElementById("txtfp").innerHTML="<font color='red'>请输入密码</font>";
			return false;
		} else if(txmm!=yuantxmm){
			document.getElementById("txtfp").innerHTML="<font color='red'>请重新输入密码</font>";
			return false;
		} 
		  
	  }
 	
		

}
//体现验证
function js(){
var jisuan1=$("#jisuan1").val();

var jisuan=$("#jisuan").val();

 num1=parseFloat(jisuan1);

   num3=parseFloat(jisuan);
  
            result = parseFloat(jisuan1)*0.002;
           if(parseFloat(result)<3 || parseFloat(result)==3){
            document.getElementById('baifen').innerHTML=3;
            baifen=document.getElementById('baifen').innerHTML;
            a=parseFloat(baifen)
            jsp=num1+a;
          
        }
        else if(parseFloat(result)<50){
            document.getElementById('baifen').innerHTML=parseFloat(result);
            baifen=document.getElementById('baifen').innerHTML;
            a=parseFloat(baifen)
            jsp=num1+a;
        }
        else if(parseFloat(result)>50 || parseFloat(result)==50){
            document.getElementById('baifen').innerHTML=50;
            baifen=document.getElementById('baifen').innerHTML;
            a=parseFloat(baifen)
            jsp=num1+a;
        }
       /* else{
            document.getElementById('baifen').innerHTML=50;
            baifen=document.getElementById('baifen').innerHTML;
            a=parseFloat(baifen)
            jsp=num1+a;
        }*/
        document.getElementById('jisuan').value=jsp
     /* jsp=num2*/
        
/* document.getElementById('jisuan').value=num3;	*/
/*	var jisuan=document.getElementById("jisuan1").value;
	var baifen=$("#baifen").text();
	 a=parseFloat(jisuan);
	  b=parseFloat(baifen);
	  document.getElementById('baifen').innerHTML=jisuan*0.002;

if(b<"50"){
	document.getElementById('baifen').innerHTML=bf;
}else if(b>"50"){
	document.getElementById('baifen').innerHTML="50";
}*/

}



	function modPswForm1(){
		$('#modPswForm1').show();
		$('#modPswForm2').hide();
	}
	function modPswForm2(){
		$('#modPswForm1').hide();
		$('#modPswForm2').show();
	}
	function modPswForm3(){
		$('#modPswForm3').show();
		$('#modPswForm4').hide();
	}
	function modPswForm4(){
		$('#modPswForm3').hide();
		$('#modPswForm4').show();
	}




