<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="dao.Riskinfo" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
HttpSession s = request.getSession(); 

Riskinfo risk=(Riskinfo)session.getAttribute("riskinfo");
String loginflag=(String)session.getAttribute("loginflag");

System.out.println("loginflag:"+loginflag);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'riskinfoLogin.jsp' starting page</title>
    
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
           <%=risk.getName() %>  你好！<br/>
           Login Success!
           
           
           
           
            <s:form action="/bidinfo/findAll.action">
    <table>
    <tr><td><input  type="submit" value="管理" /></td></tr>
    
    </table>
    </s:form>
           
           
           
           <% 
           }else{
           
           %>
           Login Fail!
           <% 
           }   
   
    %>
    
   
  </body>
</html>
