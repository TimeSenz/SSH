<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="Shortcut Icon" href="../images/zcb-icon.ico">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<script type="text/javascript">
 
  
     function change(){
   var text =document.getElementById("DHHM");
   text.value="gps";
  
  }
   function change2(){
   var text =document.getElementById("DHHM");
   text.value="chedai";
  
  }
   function change3(){
   var text =document.getElementById("DHHM");
   text.value="asdf";
  
  }
  
 
  
</script>
	
  </head>
  
  <body>
    <form  action="<%=path %>/userinfo/jbsq.action">
    <table border="2">
        <tr>
           <td>姓名</td>
           <td><input type="text"  name="jbsq.xm"/></td>
         </tr>
         
         
        <label><input name="jbsq.xb" type="radio" value="先生" checked="checked">先生 </label>
			<label><input name="jbsq.xb" type="radio" value="女士">女士</label>

         
         
           <tr>
           <td>贷款金额</td>
           <td><input type="text" name="jbsq.dkje"/></td>
         </tr>
         
         <tr>
           <td>电话号码</td>
           <td><input type="text" name="jbsq.dhhm"/></td>
         </tr>
         
          <tr>
           <td><input type="submit" value="下一步"/></td>
       
         
         </tr>
    </table>
  </form>
  </body>
</html>
