<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="dao.Userinfo" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!doctype html>
<html>
  <head>
    <meta http-equiv="content-type" content="text/html" charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>众财宝-您的贴心理财专！网络投资平台！网络贷款平台！</title>
    <meta name="keywords" content="众财宝|理财|投资|贷款|P2P贷款|小额投资|金融投资|如何理财投资">
    <meta name="description" content="众财宝(www.zhongcaibao.net)是一家从事P2P信贷、资产管理、项目投资、经贸咨询、技术推广、企业管理咨询、房地产信息咨询的专业机构，为中小企业提供融资新渠道，更为个人提供创新型投资理财服务。">
    <link type="text/css" rel="stylesheet" href="../css/common.css">
    <link rel="Shortcut Icon" href="../images/zcb-icon.ico">
    <script src="../js/jquery-1.6.4.min.js"></script>
    <script type="text/javascript" language="javascript" src="../js/png.js"></script>
    <!--[if IE 6]>
    <script src="js/png.js" type="text/javascript"></script>
    <script type="text/javascript">
       EvPNG.fix('img,.top-container-left a,.icons a,.ui-nav-dropdown span,.state h3'); 
    </script>
    <![endif]-->
    <style type="text/css">
        .tips{min-height:550px;background:url(../images/unlogin_bg.jpg) no-repeat;}
    </style>
    </head>
    
  <body>
    <div class="pg-container">
    <!--头部-->
      <%@include file="../pub/pub_top.jsp" %> 
    <!--头部end-->
    <!--main开始-->
    <div class="main_box">
        <div class="w1000">
            <div class="tips"></div>
        </div>
    </div>
    <!--main结束-->
    <!--footer start-->
        <%@include file="../pub/pub_footer.jsp" %> 
    <!--footer end-->
    </div>
  </body>
</html>
