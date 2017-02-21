function getClass(obj,sClass){
	if(obj.getElementsByClassName){
	  return obj.getElementsByClassName(sClass);
	}
	var arr=[];
	var re=new RegExp('\\b'+sClass+'\\b');
	var all=obj.getElementsByTagName('*');
	for(var i=0;i<all.length;i++){
	  if(re.test(all[i].className)){
	    arr.push(all[i]);
	  }
	}
	return arr;
}

// 表单验证函数
function checkInput(box,fnCheck){

	var oInputBox=document.getElementById(box);
	var oInput=getClass(oInputBox,'js_input')
	var ok=true;


	var json={
		email:/^\w[\w|\.]*@[0-9a-z\-]+(\.[0-9a-z]{2,4}){1,2}$/,
		mobile:/^1[3-8]\d{9}$/,
		pass:/[0-9a-zA-Z]{6,12}/,
		pass2:/[0-9a-zA-Z]{6,12}/,
		name:/[\u4e00-\u9fa5]{2,6}/,
		empty:/.+/,
		money:/[1-9]\d+/,
		num:/[1-9]\d+/,
		word:/[\u4e00-\u9fa5]+/,
	};

	var tip={
		emailTip:'请输入正确的邮箱地址',
		mobileTip:'请输入正确的11位手机号',
		passTip:'请输入6~12位有效密码',
		pass2Tip:'请再次输入相同密码',
		nameTip:'请输入2~6位的中文姓名',
		emptyTip:'内容不能为空',
		moneyTip:'请填写有效的金额',
		numTip:'请输入有效数字',
		wordTip:'请输入有效中文名称'


	};

	function check(oTxt,re){

		var oParent=oTxt.parentNode;
		var next=oParent.nextElementSibling || oParent.nextSibling;
		// if(next.className.toLowerCase()!='rowError'){
		// 	next=next.nextElementSibling || next.nextSibling;
		// }
		if(re.test(oTxt.value)){
			if(!fnCheck){

				next.style.visibility='hidden';
				return true;
			}else{
				if(fnCheck(oTxt)==false){

					var tp=tip[oTxt.getAttribute('datavalue')+'Tip'];
					next.style.visibility='visible';
					next.innerHTML=tp;
					return false;
				}else{

					next.style.visibility='hidden';
					return true;
				}
			}
		}else{

			var tp=tip[oTxt.getAttribute('datavalue')+'Tip'];
			next.style.visibility='visible';
			next.innerHTML=tp;
			return false;
		}
	}


	for(var i=0;i<oInput.length;i++){
		var re=json[oInput[i].getAttribute('datavalue')];
		if(re){
			(function (re){
				oInput[i].onblur=function(){
					check(this,re);
				}
				})(re);
		}
	}

	oInputBox.onsubmit=function(){

		for(var i=0;i<oInput.length;i++){
			var re=json[oInput[i].getAttribute('datavalue')];
			if(re){
				if(check(oInput[i],re)==false){
					ok=false;
					var oParent=oInput[i].parentNode;
					var next=oParent.nextElementSibling || oParent.nextSibling;

					var tp=tip[oInput[i].getAttribute('datavalue')+'Tip'];
					next.style.visibility='visible';
					next.innerHTML=tp;
				}else{
					ok=true;
				}
			}
		}

		if(ok==false){
			return false;
		}


	}
}