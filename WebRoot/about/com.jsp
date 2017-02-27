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
    <title>公司简介</title>
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
        	<p class="top_title"><span><a href="/ZhongCaiBao">首页</a></span>&nbsp;&gt;&nbsp;<a href="/ZhongCaiBao/about/about.action?flag=com">关于我们</a>&nbsp;&gt;&nbsp;公司简介</p>
            <div class="con fn_clear">
                <!--左侧Tab-->
                <div class="tab_btn_con fleft">
                    <a href="/ZhongCaiBao/about/about.action?flag=com" class="rrd-dimgray btn cur">公司简介</a>
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
                    	<span>公司简介</span><p class="line"></p>
                        <p>众财宝 连接你我共享财富人生<br>众财宝（www.zhongcaibao.net）由中投国汇（北京）资产管理有限公司运营，创新O2O模式，以线上线下相结合的模式，致力于为有资金需求的借款者和有闲散资金的投资者搭建了诚信、规范、专业、透明的互联网金融服务平台。<br>众财宝致力于通过大数据、互联网等有效工具为有需要融资或投资的个人或企业提供一个安全、诚信、低风险、回报稳定的投融资渠道。通过搭建立体化、多层次、全方位的数据采集体系，来确保融资项目及融资需求合法与真实，为平台风险控制提供高质量的数据保障。<br>众财宝团队有信心通过自身的高品质服务能帮助您方便、快捷、高效地解决融资需求的难题，也将通过专业能力帮您制订稳健的理财计划！</p>
                    	<div class="img_r"><img src="images/logo.png" alt="logo" /></div>
                        <span>公司理念</span><p class="line"></p>
                        <span class="view">众财宝经营理念</span>
                        <p>以"创新金融信息服务"为已任，以"安全、透明、责任"为核心价值观。</p>
                        <span class="view">众财宝人才理念</span>
                        <p>想干事，能干事，会干事，干成事。</p>
                        <span class="view">众财宝企业愿景</span>
                        <p>打造国内领先的互联网金融服务平台。</p>
                        <!-- <span>平台介绍</span><p class="line"></p>
                        <p>众财宝网络平台的业务模式是把经过平台严格审核的符合平台信用标准的借款人与理财人进 行配对，并为理财人提供贷后管理服务, 同时也通过专业、严格的信用审核系统，完善的担保，保证金体系来最大限 度地降低理财人的投资风险。</p>
                        <div class="img"><img src="images/about03.jpg" alt="安全" class="pt" /><img src="images/about04.jpg" alt="高效" class="pt" /><img src="images/about05.jpg" alt="专业" /></div>
                        <span>企业形象</span><p class="line"></p>
                        <div class="img"><img src="images/about06.jpg" alt="形象" /></div>
                        <p class="symple">红色：热情、朝气；中国红——红红火火</p>
                        <p class="symple" style="margin-bottom:20px;">LOGO：古钱币  有进有出  “圆”源不断</p>   -->                      
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
