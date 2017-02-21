$(document).ready(function(){ 
odd= {"background":"#fff","color":"#000"};//奇数样式 
even={"background":"#e9e9e9","color":"#000"};//偶数样式 
odd_even("#table_test",odd,even); 
}); 
function odd_even(id,odd,even){ 
$(id).find("tr").each(function(index,element){ 
if(index%2==1) 
$(this).css(odd); 
else 
$(this).css(even); 
}); 
} 
    function showTime() { 
  var now = new Date(); 
  var nowTime = now.toLocaleString(); 
  var year = now.getFullYear(); //年
  var month = now.getMonth()+1; //月
  var date = now.getDate(); //年
  var time = nowTime.substring(10,20); //截取时间 
  var week = now.getDay(); //星期 
   var hour = now.getHours(); //小时 
  var minute = now.getMinutes(); //分 
  var second = now.getSeconds(); //秒  

  //判断星期几 
  var weeks = ["日","一","二","三","四","五","六"]; 
  var getWeek = "星期" + weeks[week]; 
document.getElementById('time').innerHTML =year +"年"+ month +"月"+date +"日"+"  "+hour+":"+minute+":"+second+"&nbsp;&nbsp;"+ getWeek;
  setTimeout('showTime()',1000);
  
} 
    var phone="" ;
  function checkvalue()
   {
	  if($("#checkBox:checked").size()==0){
		  alert("请选择发送用户")
	  }else{
		  phone="";
	      var text = document.getElementsByName('phone');
	      for(var i=0;i<text.length;i++){
	    	  	if (text[i].checked)
	            {
		           phone=phone+text[i].value+",";
	            }
	      }
	     phone=phone.substring(0, phone.length-1); 
	     alert(phone);
	     //选择发送信息模式
	     document.getElementById("content").innerHTML ="";//清空list
	     document.getElementById("findAll").innerHTML ="";//清空list
	     document.getElementById("pronumText").innerHTML ="";
	    
	     var model=document.getElementById('model');
	   var opict=document.getElementById('opict');
	     model.style.display='block';
	     opict.style.display='block';
		  
	  }
     }
    
//分割参数
  function onclickPronumName()
  {
  var pronumnames = document.getElementsByName('pronumName');
  for (var i = 0; i < pronumnames.length; i++) {
	//alert(pronumnames[i].value);
  }
  var content=document.getElementById("textsmss").value;
 // alert(content);
  var showContents="";
  var contents=content.split("[参数]");
  for (var i = 0; i < pronumnames.length; i++) {
	  
	  showContents=showContents+contents[i]+pronumnames[i].value;
	  }
  showContents=showContents+contents[contents.length-1];
  
  
	
// alert("您要发送的信息是:"+showContents);
 document.getElementById('prompt').innerHTML=showContents;
 var promptNone=document.getElementById('promptNone');
 promptNone.style.display='block';

   
 } 
  
  

  function closes(){
	  var model=document.getElementById('model');
	  var opict=document.getElementById('opict');
	    model.style.display='none';
	    opict.style.display='none';
  }

  
  function closesPrompt(){
	  var promptNone=document.getElementById('promptNone');
	  promptNone.style.display='none';
  }
  function onclickPrompt(){

	    
		  var hiddenCids=document.getElementById('cids').value;
		 
		  
		  var pronumnames = document.getElementsByName('pronumName');
		   var pStr="";
		    for (var i = 0; i < pronumnames.length; i++) {
		  	//alert(pronumnames[i].value);
		  	  pStr=pStr+"#"+pronumnames[i].value;
		    }
		    pStr=pStr.substring(1, pStr.length);
		    //	alert(pStr);
		    alert(hiddenCids);
			  alert(phone);
			  alert(pStr);

		  sendSMS(phone,hiddenCids,pStr);
		  var promptNone=document.getElementById('promptNone');
		  promptNone.style.display='none';
	  }
//短信发送 取得电话号  判断是否选中
       
       function selectAll(){
         var checklist = document.getElementsByName ("phone");
           if(document.getElementById("yes").checked)
           {
           for(var i=0;i<checklist.length;i++)
           {
              checklist[i].checked = 1;
           } 
         }else{
          for(var j=0;j<checklist.length;j++)
          {
             checklist[j].checked = 0;
          }
         }
        }
       
       //短信接口发送成功
       function sendSMS(phone,cid,p){
   		
   		
   		$.ajax({
   			
   			url: 'sms/sendSMS.action',

   			type: 'POST',

   			data:{phone:phone,cid:cid,p:p},

   			dataType: 'text',

   			//timeout: 1000,

   			error: function(){alert('Error loading document');},

   			success: function(result){alert(result)}

   			});
   	}
      
      //创建li findByCid() 
       function findAllSms(){
       		
       		
       		$.ajax({
       			
       			url: 'sms/findAllCid.action',

       			type: 'POST',

       			//data:{cid:"sssssss"},

       			dataType: 'json',

       			//timeout: 1000,

       			error: function(){alert('Error loading document');},

       			success: function(result){
       			
       				for(var j=0; j<result.length; j++){
       					// <li onclick="findByCid('sssssss')">测试1</li>
       					var resultId=result[j].id;
       					//alert(resultId)
       				//var resultCid=result[j].cid;
       					var insertText ="<li onclick=findByCid('"+resultId+"')>"+result[j].remark+"</li'>";
       					document.getElementById("findAll").innerHTML = document.getElementById("findAll").innerHTML+insertText;
       					
       					
       				}
       				
       				
       					
       			},

       			});
       		
       }
     //通过resultId  得到内容 创建参数
       function findByCid(cidInfo){
       		$.ajax({
       			
       			url: 'sms/findBySmsid.action',

       			type: 'POST',
       			data:{id:cidInfo},
       			
       			

       			dataType: 'json',

       			//timeout: 1000,

       			error: function(){alert('Error loading document');},

       			success: function(result){

       			
       			var pronum=parseInt(result.pronum);

       			/* var resultId=result.id;
       			alert(resultId); */

       			var contentsText = result.contents;
       			var showContentss="";
       			var contentss=contentsText.split("[参数]");
       			//alert(contentsText);
       		    //var hiddentext="<input type='hidden' name='textsms' id='textsms' value='"+result.contents+"'/>";
       		  // alert(contentsText);
       		    document.getElementById("textsmss").value=contentsText;
       			//alert(document.getElementById("textsmss").value);
       			
       			for (var i = 0; i < pronum; i++) {
       				showContentss=showContentss+contentss[i]+"[参数"+i+"]";
       				//alert(showContentss);
       			}
       			showContentss=showContentss+contentss[contentss.length-1];
       			//alert(showContentss);	
       				
       				
       			
       			document.getElementById("content").innerHTML ="";
       			document.getElementById("content").innerHTML = document.getElementById("content").innerHTML+showContentss;
       			
       			
       			
       			
       			  
       			/* var contentCSGS  = document.getElementById("content").innerHTML;
       			var regS = new RegExp("\\[参数]","g");
       			alert(contentCSGS.replace(regS,"[参数0]")); */
       			
       			var realtd="";

       			for(var i=0;i<pronum;i++){
       				var inner="参数"+i;
       				var td="<input type='text' name='pronumName' id='pronumName"+i+"'/>";
       				realtd +="<p style='display:block;margin-top:30px;'>"+ inner+td+"</p>";
       				document.getElementById("pronumText").innerHTML ="";
       				document.getElementById("pronumText").innerHTML = document.getElementById("pronumText").innerHTML+realtd;
       			}
       			var hiddenText="<input type='hidden' name='cidinfo' id='cidinfo"+result.cid+"'/>"
       			document.getElementById("pronumText").innerHTML = document.getElementById("pronumText").innerHTML+hiddenText;
       			
       			var hiddenCid="<input type='hidden' name='cids' id='cids' value='"+result.cid+"'/>"
       			document.getElementById("pronumText").innerHTML = document.getElementById("pronumText").innerHTML+hiddenCid;
       			
       			
       			
       			
       			},

       			});
       }

       
     $(function(){
    	//四舍五入保留小数点后两位
    	 
      	var my_val2=document.getElementsByTagName("big");
 		  for(var i=0;i<my_val2.length;i++){			  
 			 FixedNumber(my_val2[i])
 			 
 		    } 
 		  function FixedNumber(fixed){
 			var FixedValue=fixed.innerHTML;
 			b=parseFloat(FixedValue);
 			
 			var FixedValueFixed=b.toFixed(2);
 			fixed.innerHTML=FixedValueFixed;
 		}

     })

    
     
     
       //充值隐藏
  function chizhiCloses(){
	  var Auditing=document.getElementById('Auditing');
	  var opict=document.getElementById('opict');
	    opict.style.display='none';
	    Auditing.style.display='none';
  }
//充值显示
  function AuditingShow(){
	  var Auditing=document.getElementById('Auditing');
	  var opict=document.getElementById('opict');
	    opict.style.display='block';
	    Auditing.style.display='block';
  }
    