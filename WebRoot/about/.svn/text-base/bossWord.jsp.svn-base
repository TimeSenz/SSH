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
    <title>董事长寄语</title>
    <meta http-equiv="content-type" content="text/html" charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link type="text/css" rel="stylesheet" href="css/about.css">
    <link type="text/css" rel="stylesheet" href="css/common.css">
    <link rel="Shortcut Icon" href="../images/zcb-icon.ico">
    <script src="js/jquery-1.6.4.min.js"></script>
    <script type="text/javascript" language="javascript" src="js/png.js"></script>
<!--[if IE 6]>
<script src="js/png.js" type="text/javascript"></script>
<script type="text/javascript">
   EvPNG.fix('img,.top-container-left a,.icons a,.ui-nav-dropdown span'); 
</script>
<![endif]-->
  </head>
  
  <body>
<div class="pg-container">
<!--头部--><%@include file="../pub/pub_top.jsp" %> 
<!--头部end-->
<!--main开始-->
	<div class="main_box">
    	<div class="w1000">
        	<!--顶部标题-->
        	<p class="top_title"><span><a href="/ZhongCaiBao">首页</a></span>&nbsp;&gt;&nbsp;<a href="/ZhongCaiBao/about/about.action?flag=com">关于我们</a>&nbsp;&gt;&nbsp;合作伙伴</p>
            <div class="con fn_clear">
                <!--左侧Tab-->
                <div class="tab_btn_con fleft">
                    <a href="/ZhongCaiBao/about/about.action?flag=com" class="rrd-dimgray btn">公司简介</a>
                    <!-- <a href="/ZhongCaiBao/about/about.action?flag=group" class="rrd-dimgray btn">集团简介</a> -->
                    <a href="/ZhongCaiBao/about/about.action?flag=bossWord" class="rrd-dimgray btn cur">董事长寄语</a>
                    <a href="/ZhongCaiBao/newsinfo/findByHuan.action?currentPage=1" class="rrd-dimgray btn">还款公告</a>
                    <a href="/ZhongCaiBao/newsinfo/findByGong.action?currentPage=1" class="rrd-dimgray btn">新闻公告</a>
                    <a href="/ZhongCaiBao/newsinfo/findByDong.action?currentPage=1" class="rrd-dimgray btn">最新动态</a>
                    <a href="/ZhongCaiBao/newsinfo/findByMei.action?currentPage=1" class="rrd-dimgray btn">媒体报道</a>                               
                    <a href="/ZhongCaiBao/about/about.action?flag=cooperate" class="rrd-dimgray btn">合作伙伴</a>                              
                    <a href="/ZhongCaiBao/home/home.action?home=questions" class="rrd-dimgray btn">帮助中心</a>
                    <a href="/ZhongCaiBao/about/about.action?flag=recruit" class="rrd-dimgray btn">招贤纳士</a>
                    <a href="/ZhongCaiBao/about/about.action?flag=contact" class="rrd-dimgray btn">联系我们</a>              
                </div>
                <!--右侧 内容-->
                <div class="right_con fleft">
                	<div class="right_nr">                    
                        <span>董事长寄语</span><p class="line"></p> 
                        <div class="boss_words_con">
                        <img src="images/boss.jpg" alt="董事长"/ class="img">
                        <h3  class="boss_words h3">携手中投、互惠双赢</h3>
                        <p class="boss_words fright em">衷心感谢关注中投国汇的每一个朋友。回顾往昔，我们充满了感恩，是广大新老客户多年的支持和厚爱，成就了中投国汇的辉煌。<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;我们始终坚持投资人的利益高于一切，所以我们把风险控制放在业务发展的首位。经过多年的磨练，中投国汇已建立起较为完善的公司治理结构，形成了科学、合理、系统的投、融、管、退四大运营体系，培养和造就了一支具有强悍战斗力的高素质金融服务队伍，并在资本运营、资产管理、理财规划等方面奠定了中投国汇长期稳健发展的基石。<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;我们深刻体会到，作为“受人之托，忠人之事”的金融服务行业，“诚信、规范、专业”应是公司永恒的核心价值观。我们将一如既往地坚持“诚信务实、锐意进取、开拓创新、追求卓越”的经营理念，秉承“追求价值投资，提供增值服务”的投资理念，披荆斩棘、一路前行。<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;我们期待着您的关心、支持和帮助，“携手中投、互惠双赢”中投国汇不仅是您首选的合作伙伴，更是您永远可信赖的朋友！</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<!--main结束-->
<!--footer start-->
    <%@include file="../pub/pub_footer.jsp" %> 
<!--footer end-->

  </body>
</html>
