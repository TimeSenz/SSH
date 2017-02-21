<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="dao.Userinfo" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
Userinfo user=(Userinfo)session.getAttribute("userinfo");
String loginflag=(String)session.getAttribute("loginflag");

System.out.println("loginflag:"+loginflag);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>loginSuccess</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
 <%
           if(loginflag.equals("1")){
           
           %>
           UserName:<%=user.getNickname() %><br/>
           Login Success!
           <% 
           }else{
           
           %>
           Login Fail!
           <% 
           }   
   
    %>
    
  
  </body>
</html>
