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
    <title>理财介绍</title>
    <meta name="keywords" content="众财宝|理财|投资|贷款|P2P贷款|小额投资|金融投资|如何理财投资">
    <meta name="description" content="众财宝(www.zhongcaibao.net)是一家从事P2P信贷、资产管理、项目投资、经贸咨询、技术推广、企业管理咨询、房地产信息咨询的专业机构，为中小企业提供融资新渠道，更为个人提供创新型投资理财服务。">
    <link type="text/css" rel="stylesheet" href="../css/common.css">
    <link type="text/css" rel="stylesheet" href="../css/new_guidelines.css">
    <link rel="Shortcut Icon" href="../images/zcb-icon.ico">
    <script type="text/javascript" language="javascript" src="../js/png.js"></script>
    <!--[if IE 6]>
    <script src="js/png.js" type="text/javascript"></script>
    <script type="text/javascript">
       EvPNG.fix('img,.top-container-left a,.icons a,.ui-nav-dropdown span,.state h3'); 
    </script>
    <![endif]-->
    <script src="../js/jquery-1.6.4.min.js"></script>
  </head>
    
  <body>
    <div class="pg-container">
    <!--头部-->
      <%@include file="../pub/pub_top.jsp" %>
    <!--头部end-->
    <!--main开始-->
    <div class="main_box intro_bg">
        <div class="w1000">  
          <div class="intro_con">
          <!-- 左侧Flash -->
            <div class="flash">
              <object id="forfun" classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" width="392" height="221" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0">
                <param name="movie" value="/ZhongCaiBao/flash/new_guidelines.swf">
                <param name="quality" value="high">
                <param name="bgcolor" value="#F0F0F0">
                <param name="menu" value="false">
                <param name="wmode" value="opaque"><!--Window|Opaque|Transparent-->
                <param name="FlashVars" value="">
                <param name="allowScriptAccess" value="sameDomain">
                <embed id="forfunex" src="/ZhongCaiBao/flash/new_guidelines.swf"
                    width="392"
                    height="221"
                    align="middle"
                    quality="high"
                    bgcolor="#f0fff8"
                    menu="false"
                    play="true"
                    loop="true"
                    FlashVars=""
                    allowScriptAccess="sameDomain"
                    type="application/x-shockwave-flash"
                    pluginspage="http://www.adobe.com/go/getflashplayer">
                </embed>
            </object>
            </div>
          <!-- 右侧轮播介绍 -->
            <div id="intro_des"> 
              <div id="div1">
                <ul>
                  <li>
                    <span>什么是P2P？</span>
                    <p>网贷，又称P2P网络借贷。P2P是英文peer to peer的缩写，意即“个人对个人”。网络信贷起源于英国，随后发展到美国、德国和其他国家，其典型的模式为：网络信贷公司提供平台，由借贷双方自由竞价，撮合成交。资金借出人获取利息收益，并承担风险；资金借入人到期偿还本金，网络信贷公司收取中介服务费。</p>
                  </li>
                  <li style="display:none">
                    <span>我们是众财宝</span>
                    <p>众财宝(www.zhongcaibao.net)是国内领先的专业诚信共赢的互联网金融服务平台，是一个以个人对个人小额借贷为主要产品，为借贷两端搭建的公平、透明、安全、高效的互联网金融服务平台。借款用户可以在众财宝平台上获得信用评级、发布借款请求来实现个人快捷的融资需要；理财用户可以把自己的部分闲余资金通过众财宝平台出借给信用良好有资金需求的个人，在获得有保障，高收益的理财回报的同时帮助了优质的借款人。</p>
                  </li>                  
                </ul>
              </div>
              <a href="javascript:;" class="left" title="prev" id="focus_l"><img src="../images/arrows_l.png" alt=""></a><br><a href="javascript:;" class="right" title="next" id="focus_r"><img src="../images/arrows_r.png" alt=""></a>
            </div>
          </div>
        </div>
    </div>
    <!--footer start-->
      <%@include file="../pub/pub_footer.jsp" %> 
    <!--footer end-->
    </div>  
  </body>
  <script type="text/javascript" language="javascript" src="../js/focus_m.js"></script>
 <%--    <script>
      $(function(){
        $btn=$('#intro_des a')
        $con=$('#div1 li')
      })
    </script> --%>
</html>