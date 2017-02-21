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
    <title>合作伙伴</title>
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
                    <a href="/ZhongCaiBao/about/about.action?flag=bossWord" class="rrd-dimgray btn">董事长寄语</a>
                    <a href="/ZhongCaiBao/newsinfo/findByHuan.action?currentPage=1" class="rrd-dimgray btn">还款公告</a>
                    <a href="/ZhongCaiBao/newsinfo/findByGong.action?currentPage=1" class="rrd-dimgray btn">新闻公告</a>
                    <a href="/ZhongCaiBao/newsinfo/findByDong.action?currentPage=1" class="rrd-dimgray btn">最新动态</a>
                    <a href="/ZhongCaiBao/newsinfo/findByMei.action?currentPage=1" class="rrd-dimgray btn">媒体报道</a>                               
                    <a href="/ZhongCaiBao/about/about.action?flag=cooperate" class="rrd-dimgray btn cur">合作伙伴</a>                              
                    <a href="/ZhongCaiBao/home/home.action?home=questions" class="rrd-dimgray btn">帮助中心</a>
                    <a href="/ZhongCaiBao/about/about.action?flag=recruit" class="rrd-dimgray btn">招贤纳士</a>
                    <a href="/ZhongCaiBao/about/about.action?flag=contact" class="rrd-dimgray btn">联系我们</a>              
                </div>
                <!--右侧 内容-->
                <div class="right_con fleft">
                	<div class="right_nr">
                    	<span>合作伙伴</span><p class="line"></p>
                        <p class="em">中投集团（亚洲）基金管理有限公司（简称“中投集团”），是以资本为主要联结纽带的大型投资基金管理集团，集团公司于2013年正式成立。集团核心企业—中投国汇（北京）投资基金管理有限公司在国内拥有十余年的投融资经验。 经过十余年的磨砺与蜕变，集团不断完善发展战略，优化资产结构，构建资本运营与实业经营互动的业务框架，投资领域涉及能源、新农业、医疗产业、生物医药、现代化制造、房地产、酒店以及高新技术产业。业务涵盖：资产管理、理财规划、私募股权、上市融资、资本运营、国际贸易、文化、艺术交流等。 中投集团旗下已拥有7家直属全资子公司及2个自有品牌，其中7家直属子公司分别为：中投国汇（北京）投资基金管理有限公司、众财宝（北京）资产管理有限公司、中投恒汇（北京）资本管理有限公司、中经华贸（北京）投资管理有限公司、中投汇信（北京）投资基金管理有限公司、北京君亭时代文化传播有限公司、北京天地太极国际商贸有限公司，自有皮包类品牌“法拉奇”、自有文化类品牌“天地太极”。中投集团秉持“诚信务实、锐意进取、开拓创新、追求卓越”的经营理念，合理拓展企业多元化业务，不断构建新的商业模式，使集团取得高效、持久、创新性地发展，力争成为客户推崇、员工热爱、具备核心竞争力的多元化集团公司，最终实现中投集团高起点、高格局、共同发展的目标。</p>
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
