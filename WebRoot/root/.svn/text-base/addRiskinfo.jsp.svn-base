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
    
    <title>客服  新增风控人员</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  <link type="text/css" rel="stylesheet" href="css/common.css">
    <link type="text/css" rel="stylesheet" href="css/houtai.css">
    <link rel="Shortcut Icon" href="../images/zcb-icon.ico">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <div class="wrap">
    <div class="nav">
            <div class="logo">
                <a href=""></a>
            </div>
            
    </div>
    <div class="main main1" style="background:#32323a;position: relative;">
     <div class="index index1" >
       <h3>新增风控人员</h3>
       <div>
        <s:form action="riskinfo/addRiskinfo.action">
        <ul>
          <li><strong>登录名：</strong><input type="text" name="riskinfo.login"  autocomplete="off"></span></li>
          <li><strong>密码：</strong><input type="password" name="riskinfo.password"  autocomplete="off"></span></li>
          <li><strong>姓名：</strong><input type="text" name="riskinfo.name"  autocomplete="off"></span></li>
          <li><strong>电话：</strong><input type="text" name="riskinfo.phone"  autocomplete="off"></span></li>
            <li><strong>所属公司：</strong><input type="text" name="riskinfo.comname"  autocomplete="off"></span></li>
           <li><strong>类别：</strong>
                              <select name="riskinfo.bidper" id="">
                                
                                <option value="1">总公司</option>
                                <option value="0">分公司</option>
                              </select>


             </li>
          <li><p style="margin-left:30px;"><input type="submit" name="submit" class="btn" value="确认" id="reg-btn"></p></li>
        </ul>

         </s:form>
         </div>
        </div>
     </div>
   </div>

  </body>
</html>
