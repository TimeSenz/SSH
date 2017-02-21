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
  <base href="<%=basePath%>">
</head>
<script type="text/javascript">
function findAllSms(){
		
		
		$.ajax({
			
			url: 'sms/findAllCid.action',

			type: 'POST',

			//data:{cid:"sssssss"},

			dataType: 'json',

			//timeout: 1000,

			error: function(){alert('Error loading document');},

			success: function(result){alert(result[0].remark)}

			});
}
function findByCid(){
		
		
		$.ajax({
			
			url: 'sms/findBySmsid.action',

			type: 'POST',

			data:{id:'4'},

			dataType: 'json',

			//timeout: 1000,

			error: function(){alert('Error loading document');},

			success: function(result){alert(result.contents)}

			});
}

function sendSMS(){
	
	
	$.ajax({
		
		url: 'sms/sendSMS.action',

		type: 'POST',

		data:{phone:"15801474100",cid:"7KNHrRrW0CqB",p:"老大#新年"},

		dataType: 'text',

		//timeout: 1000,

		error: function(){alert('Error loading document');},

		success: function(result){alert(result)}

		});
}

</script>
<body>
	<input type="button" value="findAllSms" onclick="findAllSms()"/>
	<input type="button" value="findAllSms" onclick="findByCid()"/>
	<input type="button" value="sendSMS" onclick="sendSMS()"/>
</body>
</html>