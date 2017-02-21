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
    <title>安全保障</title>
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
    <!--banner开始-->
		<div class="new-banner">
		<a href="/ZhongCaiBao/home/home.action?home=introduce">立即观看三分钟理财动画</a>
	    </div>
    
    <!--banner结束-->
    <!--main开始-->
    <div class="main_box main_bg">
	    <div class="black">	
	    	
	    		<ul class="black_bj black_bj2">
	    			
	    			<li><a href="/ZhongCaiBao/home/home.action?home=New">新手指引</a></li><li><a href="/ZhongCaiBao/home/home.action?home=introduce"   class="cur">安全保障</a></li><!-- <li><a href="/ZhongCaiBao/home/home.action?home=agency">合作机构</a></li> -->
	    		</ul>
	    	
	    </div>
        <div class="content_bg">
        	<div class="newbie-white h700"><div class="main"><div class="pg-guide-item"><h4 class="h4bg-orange"><span>100%本金保障计划</span></h4><div><div class="fn-clear clearfix "><div class="grid_p fl pl_40"><dl class="pt_40"><dt>什么是本金保障计划？</dt><dd>"本金保障计划"是众财宝(www.zhongcaibao.net)为保护平台全体理财人的共同权益而建立的信用风险共担机制。平台的所有理财人经过平台身份认证后，在平台的投资行为均适用于"本金保障计划"，理财人无需为此支付任何费用。</dd><dt>本金保障计划是如何运作的？</dt><dd>平台每笔借款成交时，提取一定比例的金额放入"风险备用金账户"。借款出现严重逾期时（即逾期超过30天），根据"风险备用金账户使用规则"，通过"风险备用金"向理财人垫付此笔借款的剩余出借本金（具体情况视投资标的类型的具体垫付规则为准）。</dd><dt>风险备用金账户托管说明</dt><dd>为充分保障用户的利益，更好的进行自律监管，众财宝与专业机构就众财宝风险备用金托管问题正式签署协议，对众财宝的风险备用金专户资金进行认真、独立的托管，并针对风险备用金专户资金的实际进出情况出具托管报告。</dd></dl><a class="grid_p fc_orange" href="/ZhongCaiBao/home/security.jsp" target="_blank">了解"风险备用金账户"的使用规则</a></div><div class="fr pt_100"><img width="275" height="390" src="../images/insurance1.png"></div></div></div></div></div></div> 
			<div class="newbie-ash h840"><div class="main"><div class="pg-guide-item"><h4 class="h4bg-yellow"><span>贷款审核保障</span></h4><div><div class="fn-clear"><div class="fl pl_60 pt_40"><img width="114" height="119" src="../images/insurance2.png"></div><div class="fr grid_g"><dl class="pt_40"><dt>全方位实地尽调</dt><dd>我们建立了专业尽调团队，对融资项目进行全方位实地尽职调查，调查报告的数据由实地调查数据、人民银行征信系统数据、公安部居民身份系统数据、税务系统数据、海关系统数据、工商局系统数据、车辆管理系统数据、房屋管理系统数据等组成。对融资性项目实现立体化多层级的数据采集，以确保项目及融资需求真实、合法，为风险把控提供可信依据。</dd></dl></div></div></div><div class="fn-clear clearfix" style="margin:0;"><div class="grid_q fl pl_40"><dl class="pt_20"><dt>为项目量身打造的担保方案</dt><dd>我们与国内优秀的担保公司合作，由担保公司为众财宝投资人提供全额的连带责任本金担保，通过严格的合作前审核确保其在出现风险事项时可以及时、足额对投资人进行代偿。同时依据项目特性及融资人的资产优势，引入再担保、反担保措施，为每一个融资人设计高效的、可操作的担保方案。</dd></dl></div><div class="fr pl_10 pt_40"><img width="165" height="113" src="../images/insurance3.png"></div></div><div class="fn-clear" style="margin:0;"><div class="fl pl_40 pt_40"><img width="322" height="144" src="../images/insurance4.png"></div><div class="fr grid_b"><dl class="pt_20"><dt>可靠的渠道控制</dt><dd>我们对项目渠道进行严格把关，力求从源头把握项目质量。众财宝利用行业资深专家的成熟经验及丰富资源、利用核心企业在供应链中的优势地位和历史交易数据，发掘安全性更高的项目渠道、筛选质量更高的融资项目。</dd></dl></div></div><div class="fn-clear clearfix" style="margin:0;"><div class="grid_q fl pl_40"><dl class="pt_20"><dt>完善的贷后管理</dt><dd>如果用户逾期未归还借款，贷后管理部门将第一时间通过短信、电话等方式提醒用户进行还款。如果用户在5天内还未归还当期借款，众财宝将会联系该用户的紧急联系人、直系亲属、单位等督促用户尽快还款。如果用户仍未还款，交由专业的高级催收团队与第三方专业机构合作进行包括上门等一系列的催收工作，直至采取法律手段。</dd></dl></div><div class="fr pl_10 pt_40"><img width="142" height="132" src="../images/insurance5.png"></div></div></div></div></div>
        	<div class="newbie-white h520"><div class="main"><div class="pg-guide-item"><h4 class="h4bg-orange"><span>业务分散保障</span></h4><div><div class="fn-clear clearfix"><div class="grid_4 fl pl_40"><div class="pt_20"><p class="pt_20">开创金融行业贷款额度控制之最，合作担保机构及众财宝保证金有充足能力对突发意外损失进行实时代偿。</p><p><img width="304" height="238" src="../images/insurance6.png"></p></div></div><div class="grid_4 fl pl_20"><div class="pt_20"><p class="pt_40 pl_20">借款方地域、行业、人群特征均非常分散。</p><p class="pt_20"><img width="374" height="284" src="../images/insurance7.png"></p></div></div><div class="grid_4 fl pl_20"><div class="pt_20"><p class="pt_40 pl_20">一对多的交易机制，充分、有效分散风险。</p><p class="pt_40 pl_20"><img width="320" height="240" src="../images/insurance8.png"></p></div></div></div></div></div></div></div>
        	<div class="newbie-ash h800"><div class="main"><div class="pg-guide-item"><h4 class="h4bg-yellow"><span>政策法规保障</span></h4><div><div class="fn-clear"><div class="grid_r fl pl_40"><dl class="pt_40"><dt>众财宝平台提供居间撮合服务的合法性</dt><dd>《合同法》第23章专门对"居间合同"作出规定，其第424条明确定义为："居间合同是居间人向委托人报告订立合同的机会或者提供订立合同的媒介服务，委托人支付报酬的合同"。众财宝平台是合法设立的中介服务机构，致力于为民间借贷业务提供优质高效的撮合服务，以促成借贷双方形成借贷关系，然后收取相关报酬。此种居间服务有着明确的法律依据。</dd></dl></div></div></div><div class="fn-clear" style="margin:0;"><div class="grid_r fl pl_40"><dl class="pt_10"><dt>理财人及借款人之间的借贷关系的合法性</dt><dd>《合同法》第196条规定："借款合同是借款人向贷款人借款，到期返还借款并支付利息的合同"；根据《合同法》第十二章"借款合同"和最高人民法院《关于人民法院审理借贷案件的若干意见》，我国法律允许自然人等普通民事主体之间发生借贷关系，并允许出借方到期可以收回本金和符合法律规定的利息。理财人作为借款人，与贷款人之间形成的借贷关系受到法律保护。</dd></dl></div></div><div class="fn-clear" style="margin:0;"><div class="grid_r fl pl_40"><dl class="pt_10"><dt>理财人通过众财宝平台获得的出借理财收益的合法性</dt><dd>根据最高人民法院《关于人民法院审理借贷案件的若干意见》第6条："民间借贷的利率可以适当高于银行的利率，各地人民法院可以根据本地区的实际情况具体掌握，但最高不得超过银行同类贷款利率的四倍（包含利率本数）。超出此限度的，超出部分的利息不予保护。"众财宝平台上理财人向借款人出借资金并按照约定利率收取利息，该等利率未超过银行同类贷款利率的四倍，为合法利息收益，受到法律保护。</dd></dl></div></div><div class="fn-clear" style="margin:0;"><div class="grid_r fl pl_40"><dl class="pt_10"><dt>电子合同的合法性</dt><dd>根据《合同法》第11条的规定，当事人可以采用合同书、信件和数据电文（包括电报、电传、传真、电子数据交换和电子邮件）等形式订立合同。电子合同是法律认可的书面合同形式之一。众财宝采取用户网上点击确认的方式签署电子合同。点击确认后的电子合同符合《中华人民共和国合同法》规定的合同成立、生效的要件，其有效性也被人民法院的司法实践所接受。</dd></dl></div></div></div></div></div>
        	<div class="newbie-white h600"><div class="main"><div class="pg-guide-item"><h4 class="h4bg-orange"><span>帐户安全保障</span></h4><div><div class="fn-clear"><div class="grid"><div class="fl pl_40 pt_100"><img width="86" height="61" src="../images/insurance9.png"></div><div class="fl pl_20"><dl class="pt_40 grid_5"><dt>网站技术保障</dt><dd>众财宝运用先进的安全技术保护用户在众财宝账户中存储的个人信息、账户信息以及交易记录的安全。</dd><dd>众财宝拥有完善的安全监测系统，可以及时发现网站的非正常访问并做相应的安全响应。</dd></dl></div></div><div class="grid" style="float:right"><div class="fl pl_40 pt_100"><img width="86" height="61" src="../images/insurance10.png"></div><div class="fr pl_20"><dl class="pt_40 grid_5"><dt>数据安全保障</dt><dd>众财宝IT团队在信息安全和数据安全方面有着非常丰富的经验，让您享受银行级别的安全保障；三层防火墙隔离系统的访问层、应用层和数据层集群；有效的入侵防范及容灾备份，确保交易数据安全无虞</dd></dl></div></div></div></div><div class="fn-clear" style="margin:0;height:320px;"><div class="grid"><div class="fl pl_40 pt_100"><img width="86" height="61" src="../images/insurance11.png"></div><div class="fl pl_20"><dl class="pt_40 grid_5"><dt>隐私安全保障</dt><dd>众财宝上所有的隐私信息都经过MD5加密处理，防止任何人包括公司员工获取用户信息。众财宝在任何情况下都绝不会出售、出租或以任何其他形式泄漏您的信息。您的信息按照《众财宝投资咨询服务协议》中的规定被严格保护。</dd></dl></div></div><div class="grid" style="float:right"><div class="fl pl_50 pt_100"><img width="86" height="61" src="../images/insurance12.png"></div><div class="fr pl_20"><dl class="pt_40 grid_5"><dt>资金安全保障</dt><dd>众财宝目前对客户交易资金的保管完全按照"专户专款专用"的标准模式进行运作，客户在众财宝的交易资金是可以完全放心的。</dd></dl></div></div></div></div></div></div>
        </div>
    </div>
    <!--main结束-->
    <!--footer start-->
        <%@include file="../pub/pub_footer.jsp" %> 
    <!--footer end-->
    </div>
  
  </body>
    <script>
    	$(function(){
    		$(".ban_bg .ban_show").click(function(){
    			$(".ban_bg").animate({height:"700px"});
    			$(".fla").show(); 
    			$(this).hide();
    			$(this).siblings('.ban_show-top').show();
    		});
    		$(".ban_bg .ban_show-top").click(function(){
    			
    			$(".ban_bg").animate({height:"30px"});
    			
    			$(this).hide();
    			$(this).siblings('.ban_show').show();
    			$(".fla").hide(); 
    		})
    		
    	})
    </script>
</html>