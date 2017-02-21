<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 1.0 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
 <script src="../js/jquery-1.6.4.min.js"></script>
</head>
<body>
<a href="/ZhongCaiBao_test/Excel/lottery.xls">参赛名单下载</a>
<input type="text" placeholder="姓名" id="name">
<input type="text" placeholder="电话" id="phone">

<input type="button" value="生成贺卡" onclick="onclickPrompt()">

<input type="text" placeholder="姓名" id="name">
<input type="text" placeholder="电话" id="phone">

<input type="button" value="生成贺卡" onclick="onclickPrompt()">


</body>
<script>
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

			success: function(result){alert(name,phone)}

			});
	}
</script>
</html>