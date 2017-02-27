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
    <title>招贤纳士</title>
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
        	<p class="top_title"><span><a href="/ZhongCaiBao">首页</a></span>&nbsp;&gt;&nbsp;<a href="/ZhongCaiBao/about/about.action?flag=com">关于我们</a>&nbsp;&gt;&nbsp;招贤纳士</p>
            <div class="con fn_clear">
                <!--左侧Tab-->
                <div class="tab_btn_con fleft">
                    <a href="/ZhongCaiBao/about/about.action?flag=com" class="rrd-dimgray btn">公司简介</a>
                    <a href="/ZhongCaiBao/newsinfo/findByHuan.action?currentPage=1" class="rrd-dimgray btn">还款公告</a>
                    <a href="/ZhongCaiBao/newsinfo/findByGong.action?currentPage=1" class="rrd-dimgray btn">新闻公告</a>
                    <a href="/ZhongCaiBao/newsinfo/findByDong.action?currentPage=1" class="rrd-dimgray btn">最新动态</a>
                    <a href="/ZhongCaiBao/newsinfo/findByMei.action?currentPage=1" class="rrd-dimgray btn">媒体报道</a>                               
                    <a href="/ZhongCaiBao/about/about.action?flag=cooperate" class="rrd-dimgray btn">合作伙伴</a>                              
                    <a href="/ZhongCaiBao/home/home.action?home=questions" class="rrd-dimgray btn">帮助中心</a>
                    <a href="/ZhongCaiBao/about/about.action?flag=recruit" class="rrd-dimgray btn cur">招贤纳士</a>
                    <a href="/ZhongCaiBao/about/about.action?flag=contact" class="rrd-dimgray btn">联系我们</a>              
                </div>
                <!--右侧 内容-->
                <div class="right_con fleft">
                	<div class="right_nr">
                    	<span>招贤纳士</span><p class="line"></p>
                        <span class="view">一、信贷业务经理</span>
	                        <span class="view1">岗位职责：</span>
								<p class="recruit">1、熟悉P2P(或小贷行业)金融理财业务，根据公司现有业务和对应产品，向客户推广，拓展业务渠道；<br>
								2、充分发掘金融市场需求,开发潜在目标客户群；<br>
								3、负责市场动态分析，优化客户资料库管理；<br>
								4、负责调查和分析客户的问题，防范风险；<br>
								5、负责组织客户贷后管理；<br>
								6、与客户保持良性互动，努力建立稳固的客户关系；</p>
								<span class="view1">任职资格：</span>
								<p class="recruit">1、大专或以上学历，2年以上金融或投资业务发展经验；有P2P(或小贷行业)项目开发经验者优先；<br>
								2、能够理解金融和投资业务，具有发掘客户金融需求的能力；<br>
								3、营销能力突出，具备较强的市场开拓能力；<br>
								4、具有良好的人际关系协调、沟通能力；<br>
								5、具有较强的上进心、谈判能力；<br>
								6、有渠道及客户资源者优先录用。</p>
							<span class="view">二、风控经理</span>
	                        	<span class="view1">岗位职责：</span>
								<p class="recruit">1、审核借入者信用资料是否齐全并判断材料的真实性；<br>
								2、按照要求对借入者的信用材料进行分析核查并录入相关信息，形成尽职报告提交评审会；<br>
								3、负责贷前风险审核、贷中风险控制、贷后风险检查，出具风险预警提示和风险评估报告，随时监督前台业务经理对借款人的跟踪维护；<br>
								4、与其他部门同事合作，完善审核流程，加强信用管理，降低风险及信贷损失；<br>
								5、在工作中积极提出自己的意见和建议，优化工作流程。</p>
								<span class="view1">任职资格：</span>
								<p class="recruit">1、大专或以上学历，风险控制、财务、金融、经济等相关专业；<br>
								2、P2P公司或信贷、担保、客服及银行3年以上同岗位工作经验；<br>
								3、工作主动负责，认真仔细，勤勉敬业，善于沟通，有较强的客户服务意识。</p>
							<span class="view">三、客服专员</span>
	                        	<span class="view1">岗位职责：</span>
								<p class="recruit">1、负责与客户进行直接有效地沟通，及时传递必要的业务信息；<br>
								2、负责推广公司金融产品，为客户提供专业化的金融服务；<br>
								3、负责客户投资管理及投资顾问服务等，并做好客户维护工作；<br>
								4、负责收集相关数据，达到推广公司形象与业务发展的目的；<br>
								5、负责搜集客户意见和建议，及时汇报公司，必要时与相关部门进行沟通；<br>
								6、负责临时性活动信息的对外宣导与沟通；<br>
								7、负责接在线解答客户疑问以及投诉处理工作并做好相应记录；<br>
								8、熟悉P2P业务流程，按照各业务流程处理好各项目的订单；<br>
								9、负责对客户资料及时进行整理和归档；<br>
								10、做好与其他部门工作的沟通与衔接。<br>
								</p>
								<span class="view1">任职资格：</span>
								<p class="recruit">1、女性，年龄20-35岁，大专及以上学历，营销、金融、电子商务类等专业优先考虑；<br>
								2、有P2P行业、银行、理财、信托、保险服务从业经验和管理经验优先考虑；<br>
								3、有良好的客户沟通和协调能力；良好的人际交往及维系客户关系的能力；<br>
								4、热情开朗、责任心强、服务意识强；团队意识强；<br>
								5、能熟练操作电脑及办公软件及各类聊天软件；<br>
								6、有金融行业或大型电子商务类企业工作经验者优先。</p>
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
