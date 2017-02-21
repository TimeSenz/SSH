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
    
    <title>My JSP 'rootConfirm.jsp' starting page</title>
    
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
    <s:form>
   <table border="2">
   <tr>
   <td>编号</td>
   <td>标编号</td>
   <td>状态</td>
   <td>时间</td>
   <td>转出入金额</td>
   <td>备注</td>
   <td>操作</td>
   </tr>
   <s:iterator value="notconfirmlist" var="vo">
   <tr>
   <td><s:property value="#vo.id"/></td>  
   <td><s:property value="#vo.bidid"/></td> 
   <td><s:property value="#vo.state"/></td> 
   <td><s:property value="#vo.time"/></td> 
   <td><s:property value="#vo.zcrje"/></td>
   <td><s:property value="#vo.remark"/></td> 
   <td> <a href="jkract/changeJkractState.action?flag=2&id=${vo.id}">确认</a>
        <a href="jkract/changeJkractState.action?flag=3&id=${vo.id}">取消</a>
   </td> 
   </tr>
   </s:iterator>
   </table>
  </s:form>
  </body>
</html>
