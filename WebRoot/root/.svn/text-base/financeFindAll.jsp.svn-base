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
    
    <title>root 用户列表  财务</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
     <link type="text/css" rel="stylesheet" href="css/common.css">
    <link type="text/css" rel="stylesheet" href="css/houtai.css">
    <link rel="Shortcut Icon" href="../images/zcb-icon.ico">
  <script src="js/jquery-1.6.4.min.js"></script>

	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  <script  type="text/javascript">
   function add(){
    
         document.forms[0].action="<%=path%>/root/addFinance.jsp";
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
        <li><a href="/ZhongCaiBao/rootact/records.action">资金流水</a></li>
        <li><a href="/ZhongCaiBao/rootact/rootAct.action?currentPage=1">放款批准</a></li>
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
                <li class="cur"><a href="finance/findAll.action">财务</a></li>
                <li><a href="riskinfo/findAll.action">风控</a></li>
                <li><a href="cusinfo/findAll.action">客服</a></li>
                <li><a href="/ZhongCaiBao/root/root.jsp">root</a></li>
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
          用户列表
        </div>

        <div class="mod_table_main">
        

            <s:form>
    <tr>        <div class="mod_h3">
          <input type="button" value="新增" onclick="add()" />
        </div></tr>
   <table id="table_test">
   <tr>
   <th>ID</td>
   <th>登录名</th>
   <th>密码</th>
   <th>姓名</th>
   <th>电话</th>
   <th>备注</th>
   <th>修改</th>
   <th>删除</th>
   
   
   </tr>
   <s:iterator value="financelist" var="vo">
   <tr>
  <td> <s:property value="#vo.id"/></td> 
  <td> <s:property value="#vo.login"/></td> 
   <td><s:property value="#vo.password"/></td>
  <td> <s:property value="#vo.name"/></td> 
   <td><s:property value="#vo.phone"/></td> 
     <td><s:property value="#vo.remark"/></td> 
   <td><s:a href="finance/findById.action?id=%{#vo.id}" cssClass="title2"></s:a></td>
   <td><s:a href="finance/deleteFinance.action?id=%{#vo.id}" onClick="{if(confirm('确实要删除吗？')){return true;}return false;}" cssClass="title4">删除</s:a></td>
    </tr>
   </s:iterator>
   </table>
  
  
  </s:form>
        </div>
      </div>
    </div>
  </div>
</div>
     <script src="js/houtai.js"></script>


    
  </body>
</html>
