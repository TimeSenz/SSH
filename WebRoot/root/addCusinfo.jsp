<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 1.0 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>客服  新增客服人员</title>
    
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
     <div class="index index1">
       <h3>新增客服人员</h3>
       <div>
        <form action="cusinfo/addCusinfo.action">
        <ul>
          <li><strong>登录名：</strong><input type="text" name="cusinfo.login"  autocomplete="off"></span></li>
          <li><strong>密码：</strong><input type="password" name="cusinfo.password"  autocomplete="off"></span></li>
          <li><strong>姓名：</strong><input type="text" name="cusinfo.name"  autocomplete="off"></span></li>
          <li><strong>电话：</strong><input type="text" name="cusinfo.phone"  autocomplete="off"></span></li>
          <li><p style="margin-left:30px;"><input type="submit" name="submit" class="btn" value="确认" id="reg-btn"></p></li>
        </ul>

         </form>
         </div>
        </div>
     </div>
   </div>
  </body>
</html>
