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
    <link rel="Shortcut Icon" href="../images/zcb-icon.ico">
    <title>My JSP 'fdxx.jsp' starting page</title>
    
	

  </head>
  
  <body>
    <form  action="<%=path %>/userinfo/fdxx.action">
    <table border="2">
    
        <tr>
           <td>姓名</td>
           <td><input type="text" name="fdxx.xm"/></td>
         </tr>    
         
           <tr>
           <td>手机号</td>
           <td><input type="text" name="fdxx.sjh"/></td>
         </tr>
             
         
         <tr>
           <td>房屋面积</td>
           <td><input type="text" name="fdxx.fwmj"/></td>
         </tr>
         
           <tr>
           <td>房屋所在城市</td>
           <td><input type="text" name="fdxx.fwszcs"/></td>
         </tr>
           <tr>
           <td>房龄</td>
           <td><input type="text" name="fdxx.fl"/></td>
         </tr>
         
           <tr>
           <td>贷款机构</td>
           <td><input type="text" name="fdxx.dkjg"/></td>
         </tr>
         
           <tr>
           <td>已贷金额</td>
           <td><input type="text" name="fdxx.ydje"/></td>
         </tr>
         
          <tr>
           <td>申请金额</td>
           <td><input type="text" name="fdxx.sqje"/></td>
         </tr>
           <tr>
           <td>电子邮箱</td>
           <td><input type="text" name="fdxx.dzyx"/></td>
         </tr>
         
           <tr>
           <td>留言</td>
           <td><input type="text" name="fdxx.ly"/></td>
         </tr>
         
           <tr>
           <td>类型</td>
           <td><input type="text" name="fdxx.lx"/></td>
         </tr>
         
          <tr>
           <td><input type="submit" value="下一步"/></td>
           </tr>
           </table>
           </form>
           
  </body>
</html>
