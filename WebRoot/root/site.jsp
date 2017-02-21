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
    
    <title>My JSP 'riskinfoFindAll.jsp' starting page</title>
    
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
        <li><a href="/ZhongCaiBao/rootact/rootAct.action?currentPage=1">放款批准</a></li>
        <li><a href="/ZhongCaiBao/finance/findAll.action">用户管理</a></li>
        <li class="cur"><a href="/ZhongCaiBao/root/site.jsp">网站动态</a></li>
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

      </div>
    </div>
    <div class="article">
      <div class="article_top">
        <div id="time" class="p"></div>
        <ul>
          <li>您当前的位置:</li>
          <li><a href="">首页</a>></li>
          <li>网站动态</li>
        </ul>
      </div>
      <div class="mod_table">
        <div class="mod_title">
          
        </div>

        <div class="mod_table_main">
      <script id="container" name="content" type="text/plain">
                                  请填写
                          </script>
        </div>
      </div>
    </div>
  </div>
</div>
<script type="text/javascript"  src="${pageContext.request.contextPath }/ueditor-1.4.3/ueditor.config.js"></script>
    <!-- 编辑器源码文件 -->
    <script type="text/javascript" src="${pageContext.request.contextPath }/ueditor-1.4.3/ueditor.all.js"></script>
    <!-- 实例化编辑器 -->
    <script type="text/javascript">
    var ue = UE.getEditor('container');
    function aa(){  
        var editor = new UE.Editor();
          editor.execCommand('blod');
        var uee = UE.getEditor('container');
          //对编辑器的操作最好在编辑器ready之后再做
          uee.ready(function(){
          //获取内容
          var txt = uee.getContent();
          document.getElementById("contents").value=txt;
      })
    }
    </script>
    <script src="js/houtai.js"></script>
    
  </body>
</html>
