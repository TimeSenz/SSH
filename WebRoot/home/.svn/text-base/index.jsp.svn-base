<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="dao.Userinfo" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
Userinfo user=(Userinfo)session.getAttribute("userinfo");
String loginflag=(String)session.getAttribute("loginflag");

%>
<!DOCTYPE HTML">
<html>
  <head>
  <link rel="Shortcut Icon" href="../images/zcb-icon.ico">
    <base href="<%=basePath%>">
    
  <title>众财宝-众财宝|理财|投资|贷款|P2P贷款|小额投资|金融投资|如何理财投资</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta name="keywords" content="众财宝|理财|投资|贷款|P2P贷款|小额投资|金融投资|如何理财投资">
  <meta name="description" content="众财宝（ http://www.zhongcaibao.net/），中投国汇集团旗下企业，由中投国汇（北京）资产管理有限公司运营，创新O2O模式，以线上线下相结合的模式，致力于为有资金需求的借款者和有闲散资金的投资者搭建了诚信、规范、专业、透明的互联网金融服务平台。">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
 
   
  <body>
  
  
     <form name="form1">
     
     <table>
     
      <%
           if(loginflag.equals("1")){
           
           %>
           UserName:<%=user.getNickname() %><br/>
           Login Success!
           <% 
           }else{
           
           %>
           
     <tr>
      <td><s:a href="user/register.jsp">注册</s:a></td>
         <td><s:a href="user/login.jsp">登录</s:a></td>
     </tr>
           <% 
           }   
   
    %>
    
    
     </table>
     <table border="0">
      <tr>
   <td>借款标题</td>
   <td>标的类型</td>
   <td>年利率</td>
   <td>金额</td>
   <td>期限</td>
   <td>进度</td>
   </tr>
   <s:iterator value="bidinfolist" var="vo">
  
   <tr>
   <td><s:property value="#vo.reason"/></td> 
   <td><s:property value="#vo.bidtype"/></td> 
   <td><s:property value="#vo.profit"/>%</td>
   <td><s:property value="#vo.number"/> 元</td> 
   <td><s:property value="#vo.deadline"/> 个月</td> 
   <td><s:property value="#vo.rate"/></td>
 
   <td><s:a href="bidinfo/findById.action?id=%{#vo.id}">开始出借</s:a></td>
  
    </tr>
   
   </s:iterator>
   </table>
   </form>
  </body>
</html>
