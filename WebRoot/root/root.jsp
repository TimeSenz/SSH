<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
HttpSession s = request.getSession(); 

//Rootinfo root=(Rootinfo)session.getAttribute("rootinfo");
String loginflag=(String)session.getAttribute("loginflag");

%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户列表  root</title>
    
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
  <script  type="text/javascript">
   function add(){
    
         document.forms[0].action="<%=path%>/root/addRiskinfo.jsp";
         document.forms[0].submit();
     
   }
   </script>
  </head>
  
  <body onload="showTime()">
    <div class="wrap">
  <div class="nav">
      <div class="logo">
        <a href=""></a>
      </div>
      <ul class="ul">
        <li><a href="/ZhongCaiBao/rootact/records.action?currentPage=1">资金流水</a></li>
        <li><a href="/ZhongCaiBao/financeact/financeAct.action?currentPage=1">放款批准</a></li>
        <li class="cur"><a href="/ZhongCaiBao/finance/findAll.action">用户管理</a></li>
      </ul>
      <p class="p"><a href="/ZhongCaiBao/root/choiceLogin.jsp">退出</a></p>
  </div>
  <div class="main">
    <div class="aside">
      <div class="aside_top">
        <input type="text" placeholder="搜索">
        <dl>
          <dt></dt>
          <dd><p><s:property value="#session.rootinfo.name"/><span><a>欢迎您</a></span></p>
          <p><span>新消息(<i>0</i>)</span><span>日报(<i>0</i>)</span></p></dd>
        </dl>
      </div>
      <div class="aside_main">
        <ul>
          
          <div>
          <li class="cur"><strong class="icon1"><span>用户列表</span></strong></li>
          <ol class="ol2">
                <li><a href="finance/findAll.action">财务</a></li>
                <li><a href="riskinfo/findAll.action">风控</a></li>
                <li><a href="cusinfo/findAll.action">客服</a></li>
                <li class="cur"><a href="/ZhongCaiBao/root/root.jsp">root</a></li>
              </ol>
          </div>
        </ul>
      </div>
    </div>
    <div class="article">
      <div class="article_top">
        <div id="time" class="p"></div>
        <ul>
          <li>您当前的位置:</li>
          <li><a href="">首页</a>></li>
          <li>用户管理</li>
        </ul>
      </div>
      <div class="mod_table">
        <div class="mod_title">
          修改密码
        </div>

        <div class="mod_table_main">
            <div class="ul">
             <s:form  action="/rootinfo/modify.action">
                <ul>
                  <li><strong>用户管理:</strong></li>
                  <li><strong>新密码:</strong><input type="text" name="newpassword"></li>
                  <li><input type="submit" value="确认" class="btn" /></li>
                </ul>
                </s:form>
            </div>
        </div>
      </div>
    </div>
  </div>
</div>
     <script src="js/houtai.js"></script>

    
  </body>
</html>
