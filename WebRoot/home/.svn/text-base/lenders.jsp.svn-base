<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="dao.Userinfo" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
Userinfo user=(Userinfo)session.getAttribute("userinfo");
String loginflag=(String)session.getAttribute("loginflag");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>我要理财产品介绍</title>
    <meta http-equiv="content-type" content="text/html" charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link type="text/css" rel="stylesheet" href="css/index.css">
    <link type="text/css" rel="stylesheet" href="css/common.css">
    <link rel="Shortcut Icon" href="../images/zcb-icon.ico">
    
    <script src="js/jquery-1.6.4.min.js"></script>
  </head>
  
  <body>
<div class="pg-container">
<!--头部-->
	<%@include file="../pub/pub_top.jsp" %>
<!--头部end-->
<!--产品介绍 start-->
    <div class="production">
        <h3>众财宝理财 - 产品介绍</h3>
        <div class="production_main">
            <dl class="produc_dl1"> 
                <dt><a href="/ZhongCaiBao/bidinfouser/findAllBidinfo.action?currentPage=1">投资散标</a></dt>
            </dl>
             <dl class="produc_dl2"> 
                <dt><a href="/ZhongCaiBao/bidinfo/showAllFinance.action">精选理财</a></dt>
            </dl>
            <dl class="produc_dl3"> 
                <dt><a href="javaScript:;">债权转让</a></dt>
            </dl>
            <dl class="produc_dl4"> 
                <dd>众财宝为您提供低风险，高收益的具有足额抵押物担保的优质理财项目</dd>
          
            </dl>

        </div>
    </div>
<!--产品介绍 end-->
<!--footer start-->
    <%@include file="../pub/pub_footer.jsp" %> 
<!--footer end-->
</div>

  </body>
</html>
