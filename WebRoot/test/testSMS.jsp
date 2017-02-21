<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import="sms_api.Sms"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 1.0 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>

<%
	Sms smsUtil=new Sms();


%>
<body>

phone:<input id="phone" type="text" value=""/><br>
captcha:<input  id="captcha"  type="text" value="2"/><br>

</body>
</html>