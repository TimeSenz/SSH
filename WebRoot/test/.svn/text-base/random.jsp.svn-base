<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
    <%String path = request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 1.0 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">    
function changeValidateCode(obj)
{    
//获取当前的时间作为参数，无具体意义    
var timenow = new Date().getTime(); 
//每次请求需要一个不同的参数，否则可能会返回同样的验证码    
//这和浏览器的缓存机制有关系，也可以把页面设置为不缓存，这样就不用这个参数了。    
obj.src="rand/rand.action?d="+timenow;    
}    
function test()
{    
	var m= <%=session.getAttribute("random") %>;
	alert(m);
}   
</script>    
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<form action="testLogin.action">
<s:text name="* 验证码"></s:text>：<s:textfield name="random" size="10px"></s:textfield>
<img src="rand.action"   onclick="changeValidateCode(this)" title="点击图片刷新验证码"/>  

<s:submit value="submit"></s:submit>
<input type="button" value="alert" onclick="test()">
</form>
</body>
</html>