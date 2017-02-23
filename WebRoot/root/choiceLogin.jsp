<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String loginflag=(String)session.getAttribute("loginflag");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">

<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>后台管理登录</title>
    
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
   
   <script type="text/javascript">
        function doit()
         {
        var rdo=document.getElementsByName("root");
          for(var i=0;i<rdo.length;i++)
              {
             if(rdo[i].checked==true)
                {
                if(rdo[i].value=='root'){
                 form1.action="<%=path%>/rootinfo/login.action";
                 form1.submit();
                 }
                if(rdo[i].value=='riskinfo'){
                 form1.action="<%=path%>/riskinfo/login.action?flag=login";
                 form1.submit();
                }
                if(rdo[i].value=='finance'){
                 form1.action="<%=path%>/finance/login.action";
                 form1.submit();
                } 
                if(rdo[i].value=='cusinfo'){
                	form1.action="<%=path%>/cusinfo/login.action";
                	form1.submit();
                }
                 }
                 }
        return false;
         }
        </script>
   
  </head>	
  <!--  window.location.href="/Root/root.jsp?backurf="+window.location.href;   -->
  
  <body>
  <div class="wrap">
    <div class="nav">
            <div class="logo">
                <a href=""></a>
            </div>
            
    </div>
        <div class="main main1" style="background:#32323a;position: relative; ">
             <div class="index">
                    <h3>众财宝后台登录</h3>
                       
    
               <s:form  name="form1" method="post" target="main" onsubmit="return doit()"  >
                      <ul> 
                         <li><input autocomplete="off" type="text" name="login" placeholder="请输入登录号码" class="input1" id="login_name" /></li>
                         <li><input  autocomplete="off" type="password" name="password" placeholder="请输入登录密码" class="input2" id="login_pwd" /></li>
                         <li class="index_li"><span style="margin-left:0"><label>
                         <input type="radio" name="root" value="root">root</label></span><span><label>
                         <input type="radio" name="root" value="riskinfo" >风控</label></span><span><label>
                         <input type="radio" name="root" value="finance" >财务</label></span><span><label>
                         <input type="radio" name="root" value="cusinfo">客服</label></span></li>
                         <div style="width:280px;margin:0 auto ;margin-top:-10px;color:red">
                         <s:if test="%{#session.loginflag==0}">
        登录名或密码错误，请重新登录! 
    </s:if></div>
                         <li style="margin-top:0">
                             <input name="submit1" type="submit" class="login_btn" value="立即登录"/>
                         </li>
                         
                     </ul>
                </s:form>
            </div>
         </div>
    </div>
  </body>
</html>
