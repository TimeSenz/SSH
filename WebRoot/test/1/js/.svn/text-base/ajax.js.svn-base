//发送后台
function onclickPrompt(){

    
	  var name=document.getElementById('name').value;
	  var phone=document.getElementById('phone').value;
	  sendSMS(name,phone);
}

function sendSMS(name,phone){
		
		
		$.ajax({
			
			url: 'mobile/lotteryWechat.action',

			type: 'POST',

			data:{name:name,phone:phone,},

			dataType: 'text',

			//timeout: 1000,

			error: function(){alert('Error loading document');},

			success: function(result){alert(result)}

			});
	}
	//发送后台结束


	//接受后台

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