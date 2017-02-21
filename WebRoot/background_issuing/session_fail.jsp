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
    
    <title>session已过期</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
        <link type="text/css" rel="stylesheet" href="css/common.css">
    <link type="text/css" rel="stylesheet" href="css/houtai.css">
    <link rel="Shortcut Icon" href="../images/zcb-icon.ico">
   
  </head>	
  <!--  window.location.href="/Root/root.jsp?backurf="+window.location.href;   -->
  
  <body>
  <div class="wrap">
    <div class="nav">
            <div class="logo">
                <a href=""></a>
            </div>
            
    </div>
        <div class="main main1" style="background:#32323a;min-height: 850px;position: relative;">
             <div class="index">
                    <h3>Session已过期</h3>
                    <ul>
                    	<li style="height:100px;line-height:100px;font-size:20px;">登录状态已过期，请您重新登录....</li>
                    </ul>
                    
            </div>
         </div>
    </div>
  </body>
</html>
