<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="dao.Rootinfo" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
HttpSession s = request.getSession(); 

Rootinfo root=(Rootinfo)session.getAttribute("rootinfo");
String loginflag=(String)session.getAttribute("loginflag");


%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>后台管理登录</title>
    <link rel="Shortcut Icon" href="../images/zcb-icon.ico">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  <script  type="text/javascript">
   function feng(){
    
         document.forms[0].action="<%=path%>/riskinfo/findAll.action";
         document.forms[0].submit();
     
   }
   
   
   
    function cai(){
    
         document.forms[0].action="<%=path%>/finance/findAll.action";
         document.forms[0].submit();
     
   }
    function jkr(){
    
         document.forms[0].action="<%=path%>/rootact/rootAct.action";
         document.forms[0].submit();
     
   }
   </script>
  
  </head>
  
  <body>
  <%
           if(loginflag.equals("1")){
           
           %>
            <tr>用户管理</tr>
           <%=root.getName() %>  你好！<br/>
        <s:form  action="/rootinfo/modify.action">
       <table>
       <tr>用户ID:<input type="hidden" name="id" value="<%=root.getId() %>"/></tr>
       <tr>密码修改：</tr>
       <tr>
       <td>新密码<input type="text" name="newpassword"/></td>
       </tr>
       <tr><input type="submit" value="确认"/></tr>
       </table>
       
       
       
       <table>
       <tr><input type="button" value="风控" onclick="feng()"/></tr>
       <tr><input type="button" value="财务" onclick="cai()"/></tr>
       <tr><td><input  type="button" value="管理" onclick="jkr()"/></td></tr>
       
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
