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
    <title>关于我们</title>
    <meta http-equiv="content-type" content="text/html" charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link type="text/css" rel="stylesheet" href="css/about.css">
    <link type="text/css" rel="stylesheet" href="css/common.css">
    <link rel="Shortcut Icon" href="../images/zcb-icon.ico">
    <script src="js/jquery-1.6.4.min.js"></script>
    <script src="js/tabChange.js"></script>
    <script type="text/javascript" language="javascript" src="js/png.js"></script>
<!--[if IE 6]>
<script src="js/png.js" type="text/javascript"></script>
<script type="text/javascript">
   EvPNG.fix('img,.top-container-left a,.icons a,.ui-nav-dropdown span'); 
</script>
<![endif]-->
    <script type="text/javascript">
    //二级菜单
        $(function(){
                $(".ui-nav>li").hover(function(){
                        $(this).find("ul.ui-nav-dropdown-invest").stop(false,true).slideDown();
                    },function(){
                        $(this).find("ul.ui-nav-dropdown-invest").stop(false,true).slideUp();	
                        })
            }) 
	       
    </script>
    <style type="text/css">
   .iw_poi_title {color:#CC5522;font-size:14px;font-weight:bold;overflow:hidden;padding-right:13px;white-space:nowrap}
    .iw_poi_content {font:12px arial,sans-serif;overflow:visible;padding-top:4px;white-space:-moz-pre-wrap;word-wrap:break-word}
</style>
<script type="text/javascript" src="http://api.map.baidu.com/api?key=&v=1.1&services=true"></script>
  </head>
  
  <body>
<div class="pg-container">
<!--头部-->
	<div id="header" class="ui-header">
    <!--静态显示tell-->
    	<div class="ui-header-top">
        	<div class="container top-container">
            	<div class="top-container-left fleft"><img class="hotline-icon fleft" src="images/hotline.png" /><span class="hotline">热线电话：400-007-1378</span><a href="qq.html" class="qq-icon"></a><a href="weixin.html" class="weixin-icon"></a></div>
                <div class="top-container-right fright"><a href="/ZhongCaiBao">首页</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="account.html">我的众财宝</a></div>
            </div>
        </div>
        <div class="ui-header-main">
            <div class="container main-container">
                <div class="ui-header-logo grid">
                    <a href="/ZhongCaiBao"><img src="images/logo.png" /></a>
                </div>
                <div class="ui-header-nav grid">
                    <ul class="ui-nav">
                        <li class="ui-nav-item ui-nav-item-x">
                        <a class="ui-nav-item-link rrd-dimgray" href="/ZhongCaiBao/home/lenders.jsp"><span>我要理财</span><span class="arrow-down"> </span></a>
                            <ul class="ui-nav-dropdown ui-nav-dropdown-invest" style="display:none;">
                                <li class="ui-nav-dropdown-angle"><span> </span></li>
                                <li class="ui-nav-dropdown-item"><a class="rrd-dimgray" href="/ZhongCaiBao/bidinfouser/findAllBidinfo.action">投资散标</a></li>
                                <li class="ui-nav-dropdown-item"><a class="rrd-dimgray">精选理财</a></li>
                                <li class="ui-nav-dropdown-item"><a class="rrd-dimgray">融资租赁</a></li>
                                <li class="ui-nav-dropdown-item"><a class="rrd-dimgray">债权转让</a></li>
                            </ul>
                        </li>
                        <li class="ui-nav-item ui-nav-item-x">
                        <a class="ui-nav-item-link rrd-dimgray" href="/ZhongCaiBao/home/borrowed.jsp"><span>我要借款</span><span class="arrow-down"> </span></a>
                            <ul class="ui-nav-dropdown ui-nav-dropdown-invest" style="display:none;">
                                <li class="ui-nav-dropdown-angle"><span> </span></li>
                                <li class="ui-nav-dropdown-item"><a href="/ZhongCaiBao/loans/hcd.jsp" class="rrd-dimgray">汇车贷</a></li>
                                <li class="ui-nav-dropdown-item"><a href="/ZhongCaiBao/loans/hfd.jsp" class="rrd-dimgray">汇房贷</a></li>
                                <li class="ui-nav-dropdown-item"><a href="/ZhongCaiBao/loans/hxd.jsp" class="rrd-dimgray">汇信贷</a></li>
                            </ul>
                        </li>
                        <li class="ui-nav-item"><a class="ui-nav-item-link rrd-dimgray" href="#"><span>新手指引</span></a></li>
                        <li class="ui-nav-item ui-nav-item-x"><a class="ui-nav-item-link rrd-dimgray" href="/ZhongCaiBao/home/aboutUs.jsp"><span>关于我们</span><span class="arrow-down"> </span></a>
                            <ul class="ui-nav-dropdown ui-nav-dropdown-invest" style="display:none;">
                                <li class="ui-nav-dropdown-angle"><span> </span></li>
                                <li class="ui-nav-dropdown-item"><a class="rrd-dimgray">集团介绍</a></li>
                                <li class="ui-nav-dropdown-item"><a class="rrd-dimgray">集团架构</a></li>
                                <li class="ui-nav-dropdown-item"><a class="rrd-dimgray">集团动态</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <div class="ui-header-main-right grid">
                    <ul class="fn-right">
                    
      <%
           if(loginflag.equals("1")){
           
           %>
            <ul class="ui-nav">
                        <li class="ui-nav-item ui-nav-item-x">
                        <a class="ui-nav-item-link rrd-dimgray" href="http://zhongcaibao.net/introductions/lenders"><span>您好，<%=user.getNickname() %></span><span class="arrow-down"> </span></a>
                            <ul class="ui-nav-dropdown ui-nav-dropdown-invest" style="display:none;">
                                <li class="ui-nav-dropdown-angle"><span> </span></li>
                                <li class="ui-nav-dropdown-item"><a class="rrd-dimgray">充值</a></li>
                                <li class="ui-nav-dropdown-item"><a class="rrd-dimgray">提现</a></li>
                                <li class="ui-nav-dropdown-item"><a class="rrd-dimgray">资金管理</a></li>
                                <li class="ui-nav-dropdown-item"><a class="rrd-dimgray">我的理财</a></li>
                                <li class="ui-nav-dropdown-item"><a class="rrd-dimgray">我的借款</a></li>
                                <li class="ui-nav-dropdown-item"><a href="/ZhongCaiBao/userinfo/logout.action" class="rrd-dimgray">退出</a></li>
                            </ul>
                        </li>
           </ul>
           <% 
           }else{
           
           %>
                        <li class="ui-nav-item"><a class="ui-nav-item-link blue" href="/ZhongCaiBao/user/register.jsp">注册</a></li>
                        <li class="ui-nav-item"><a class="ui-nav-item-link gray" href="/ZhongCaiBao/user/login.jsp">登录</a></li>
                          
               <%}
     
             %>
    
                    </ul>
                </div>
        	</div>   
    	</div>
    </div>
<!--头部end-->
<!--main开始-->
	<div class="main_box">
    	<div class="w1000">
        	<!--顶部标题-->
        	<p class="top_title"><span>首页</span>&nbsp;&gt;&nbsp;关于我们</p>
            <div class="con">
                <!--左侧Tab-->
                <div class="tab_btn_con fleft">
                    <a href="javascript:;" class="btn">集团介绍</a>
                    <a href="javascript:;" class="btn">集团架构</a>
                    <a href="javascript:;" class="btn">企业文化</a>
                    <a href="javascript:;" class="btn">公司介绍</a>
                    <a href="javascript:;" class="btn">公司理念</a>
                    <a href="javascript:;" class="btn">联系我们</a>
                    <a href="javascript:;" class="btn">集团动态</a>                    
                </div>
                <!--右侧 内容-->
                <div class="right_con fleft">
                	<div class="right_nr">
                    	<span>集团介绍</span><p class="line"></p>
                        <p class="intro">中投集团（亚洲）基金管理有限公司（简称“中投集团”），是以资本为主要联结纽带的大型投资基金管理集团，集团公司于2013年正式成立。集团核心企业—中投国汇（北京）投资基金管理有限公司在国内拥有十余年的投融资经验。 经过十余年的磨砺与蜕变，集团不断完善发展战略，优化资产结构，构建资本运营与实业经营互动的业务框架，投资领域涉及能源、新农业、医疗产业、生物医药、现代化制造、房地产、酒店以及高新技术产业。业务涵盖：资产管理、理财规划、私募股权、上市融资、资本运营、国际贸易、文化、艺术交流等。 中投集团旗下已拥有7家直属全资子公司及2个自有品牌，其中7家直属子公司分别为：中投国汇（北京）投资基金管理有限公司、众财宝（北京）资产管理有限公司、中投恒汇（北京）资本管理有限公司、中经华贸（北京）投资管理有限公司、中投汇信（北京）投资基金管理有限公司、北京君亭时代文化传播有限公司、北京天地太极国际商贸有限公司，自有皮包类品牌“法拉奇”、自有文化类品牌“天地太极”。 中投集团秉持“诚信务实、锐意进取、开拓创新、追求卓越”的经营理念，合理拓展企业多元化业务，不断构建新的商业模式，使集团取得高效、持久、创新性地发展，力争成为客户推崇、员工热爱、具备核心竞争力的多元化集团公司，最终实现中投集团高起点、高格局、共同发展的目标。</p>
                        <div class="img"><img src="images/about01.jpg" alt="集团介绍" /></div>
                    </div>
                    <div class="right_nr" style="display:none;">
                    	<span>组织结构图</span><p class="line"></p>                        
                        <div class="img a1"><img src="images/about02.jpg" alt="组织结构图" /></div>
                        <span>董事长寄语</span><p class="line"></p> 
                        <div class="boss_words_con">
                        <img src="images/boss.jpg" alt="董事长" />
                        <p class="boss_words fright">十二年的风雨兼程，十二年的深耕细作，衷心感谢关注中投集团的每一个朋友。回顾往昔，我们充满了感恩，是广大新老客户多年的支持和厚爱，成就了中投集团辉煌的十二年。 我们始终坚持基金持有人的利益高于一切，所以我们把风险控制放在业务发展的首位。经过十二年的磨练，中投集团已建立起较为完善的公司治理结构，形成了科学、合理、系统的投、融、管、退四大运营体系，培养和造就了一支具有强悍战斗力的高素质金融服务队伍，并在资本运营、资产管理、理财规划等方面奠定了中投集团长期稳健发展的基石。 我们深刻体会到，作为“受人之托，忠人之事”的金融服务行业，“诚信、规范、专业”应是公司永恒的核心价值观。我们将一如既往地坚持“诚信务实、锐意进取、开拓创新、追求卓越”的经营理念，秉承“追求价值投资，提供增值服务”的投资理念，披荆斩棘、一路前行。 我们期待着您的关心、支持和帮助，“携手中投、互惠双赢”中投集团不仅是您首选的合作伙伴，更是您永远可信赖的朋友！</p>
                        </div>
                        <div class="clear"></div>
                        <span>主营业务</span><p class="line"></p>
                        <div class="business_title">P2P理财</div>
                        <p class="business">P2P金融指个人与个人间的小额借贷交易，一般需要借助电子商务专业网络平台（或中介服务机构）帮助借贷双方确立借贷关系并完成相关交易手续。借款者可自行发布借款信息，包括金额、利息、还款方式、时间、有无抵押物等借款信息实现自助式借款；借出者根据借款人发布的信息，自行决定借出金额，实现自助式借贷。
                        </p>
                        <div class="business_title">财务顾问</div>
                        <p class="business">集团依托强大的背景资源及联盟资源为客户提供财务顾问服务。 将以私募基金+债权+信托+金融租赁+债务发行+上市咨询相结合的方式为客户打造综合性融资解决方案，解决客户在不同阶段的资金需求。
                        </p>
                        <div class="business_title">私募股权投资基金</div>
                        <p class="business">私募股权投资基金是中投基金的核心主业。截至2013年，中投基金已管理基金规模达50亿元人民币。 有限合伙模式：“公司+有限合伙”模式中，公司是指基金管理人为公司，基金为有限合伙制企业。 FOT模式：“基金+信托”的组合模式结合了公司和信托制的特点。即由公司管理基金，通过信托计划取得基金所需的投入资金。 FOF模式：母基金是一种专门投资于其他基金的基金，也称为基金中的基金(Fund of Fund)，其通过设立私募股权投资基金，进而参与到其他股权投资基金中，通过优选多只股权投资基金，分散和降低投资风险。 产业投资基金模式：产业投资基金是由项目企业、投资基金管理公司共同发起，并以所投企业为中心，以资本打通其产业链条（上下游企业）的整体投资模式，有利于降低投资风险。
                        </p>
                    </div>
                    <div class="right_nr" style="display:none;">
                    	<div class="img"><img src="images/culture.jpg" alt="企业文化" /></div>
                        <div class="img"><img src="images/culture2.jpg" alt="企业文化" /></div>
                    </div>
                    <div class="right_nr" style="display:none;">
                    	<span>公司简介</span><p class="line"></p>
                        <p>众财宝（北京）资产管理有限公司是中投集团旗下公司之一。是一家从事P2P信贷、资产管理、项目投资、经贸咨询、技术推广、企业管理咨询、房地产信息咨询的专业机构。 众财宝的全资投资方是中投基金，中投基金是一家国际性的投资基金管理有限公司。作为中国金融创新的先行者，中投基金具备雄厚的资金支持、专业的精英团队、一流的金融产品体系、一流的风险控制体系、一流的客户服务体系，截至目前中投基金投资额度已达数亿美金。 众财宝集理财创意规划、个人信用服务、公益理财服务为一体，结合全球金融发展与互联网技术创新，力求改善国内微型金融环境。我们致力于为中小企业提供融资新渠道，更为个人提供创新型投资理财服务。在健全的风险管控体系基础上，为中小企业主及个人客户提供专业、可信赖的投融资咨询管理服务，实现财富增值。 我们致力于成为国内领先的P2P微金融服务机构和可信赖的财富增值伙伴。 选择中投，选择未来。</p>
                    	<div class="img_r"><img src="images/logo.png" alt="logo" /></div>
                        <span>平台介绍</span><p class="line"></p>
                        <p>众财宝网络平台的业务模式是把经过平台严格审核的符合平台信用标准的借款人与理财人进 行配对，并为理财人提供贷后管理服务, 同时也通过专业、严格的信用审核系统，完善的担保，保证金体系来最大限 度地降低理财人的投资风险。</p>
                        <div class="img"><img src="images/about03.jpg" alt="安全" class="pt" /><img src="images/about04.jpg" alt="高效" class="pt" /><img src="images/about05.jpg" alt="专业" /></div>
                        <span>企业形象</span><p class="line"></p>
                        <div class="img"><img src="images/about06.jpg" alt="形象" /></div>
                        <p class="symple">红色：热情、朝气；中国红——红红火火</p>
                        <p class="symple" style="margin-bottom:20px;">LOGO：古钱币  有进有出  “圆”源不断</p>
                        <span>合作伙伴</span><p class="line"></p>
                        <p>中投集团（亚洲）基金管理有限公司（简称“中投集团”）是以资本为主要联络 纽带的大型投资基金管理集团，集团公司干2013年正式成立。缤团核心企业一中投国汇 （北京）投资基金管理有很公司在国内拥有十余年的役融资经验。
经过十余年的磨砺与蜕变.集团不断完善发展战略，优化资产结构，构建资本运营 与实业经营互动的业务框架，投资领域涉及能源、新农业、医疗产业、生物医商、现代 化制造、房地产、酒店以及高新技术产业。业务涵盖：资产管理、理财规划、私募股权、上市融资、资本运营、国际贸易、文化、艺术交流等。 中投集团旗下已拥有7家全资子公司及2个自有品牌.其中7 家豆腐平公司分别 为中投国汇(北京1 投资基金管理有限公司、中按国汇(北京)资产管理有限公司、 中投恒汇{北京l 资本管理有限公司、中经华贸{北京l 投资管理有限公司、中投汇倍 { 北京l 投资基金管理有限公司、北京君王事时代文化传播有限公司、北京天地太扳回际 商贸有限公司，自有皮包类品牌..法拉奇 中技集团'íIi持"诚信务实、锐意i革取、开拓创新、追求卓越"的经~l里念.合理拓 展企业多元化业务.不断构建新的商业银式.使集团取得离效、持久、创新俭地发展. 为中役外景私人会所 亨，成为客户推蒜、员工热爱、具备核心竞争力的多元化集团公司I l'i终实现中tlt集团高</p>
                    </div>
                    <div class="right_nr" style="display:none;">
                    	<span>公司理念</span><p class="line"></p>
                        <p class="ln">经营理念：信誉第一 顾客至上<br>企业理念：智融中投 国汇天下<br>人才理念：想干事，能干事，会干事，干成事</p>
                        <p class="ln_des">想干事：体现于工作态度，热爱事业，富有工作激情，公司为想干事的员工提供机会。<br>
能干事：体现在综合素质，努力学习，具备良好素养，公司为能干事的员工创造条件。<br>
会干事：体现在工作能力，勇于实践，善于解决问题，公司为会干事的员工搭建平台。<br>
干成事：体现在工作绩效，务求实效，创造良好业绩，公司为干成事的员工彰显价值。</p>
                        <span>企业宗旨</span><p class="line"></p>
                        <div class="img aim"><img src="images/about07.jpg" alt="宗旨" /></div>                        
                        <span>领导致辞</span><p class="line"></p>
                        <p class="title">尊敬的各界人士：</p>
                        <p class="leader_words">欢迎您走进众财宝（北京）资产管理有限公司，我谨代表公司董事局及全体员工对您的关怀表示诚挚的谢意和热切的欢迎！ 公司在国家金融政策的引导下，积极参与P2P信贷领域的发展，成立之初就以行业的高标准严格自律。得益于投资人的信任和支持，众财宝在近年来发展迅猛，已发行的P2P理财产品，得到市场的检和良好反馈。身为众财宝的董事长，我深感有责任和董事会全体成员一道，以“诚信 高效 创新 共赢”的精神自律，格尽职守、勤勉敬业，保证公司经营管理的规范运作，监督公司管理团队严格按照相关法律法规更好的服务于投资人，把实现投资人利益最大化的管理总值落实到实处。 我们正以“积硅步，行万里”的执着，把握中国金融市场的时代机遇众财宝立志打造一流金融公司的目标和中国经济一同成长，成为值得投资者信赖的财富管理合作伙伴！</p>
                    </div>
                    <div class="right_nr" style="display:none;" id="contact">
                    	<span>联系我们</span><p class="line"></p>                        
                        <p class="contact">服务热线： 400-007-1378<br>官方微信： ztgh888<br>官方微博： http://e.weibo.com/ztgh888/<br>官方网址： www.zt9898.com www.ztguohui.com<br>沈阳公司： 沈阳市和平区胜利南大街61号SK大厦1201<br>总部地址： 北京市东三环南路甲52号顺迈金钻商务中心群楼1、2、3、9层<br>
干成事：体现在工作绩效，务求实效，创造良好业绩，公司为干成事的员工彰显价值。</p>
                        <div class="map" id="dituContent"></div> 
                    </div>
                    <div class="right_nr" style="display:none;">
                    	<span>集团动态</span><p class="line"></p>                        
                        <div>
                        	<ul class="ui-list-news">
                        <li class="ui-list-item fn_clear">
                            <p class="decoration"></p>
                            <p class="fleft text">
                            	<a class="text-big rrd-dimgray" href="#" target="_blank">众财宝2014年12月12日系统维护公告</a>
                            </p><p class="fleft darkgray" id="date">2014-12-11</p>
                        </li>
                        <li class="ui-list-item fn_clear">
                            <p class="decoration"></p>
                            <p class="fleft text">
                            	<a class="text-big rrd-dimgray" href="#" target="_blank">众财宝2014年12月12日系统维护公告</a>
                            </p><p class="fleft darkgray" id="date">2014-12-11</p>
                        </li>
                        <li class="ui-list-item fn_clear">
                            <p class="decoration"></p>
                            <p class="fleft text">
                            	<a class="text-big rrd-dimgray" href="#" target="_blank">众财宝2014年12月12日系统维护公告</a>
                            </p><p class="fleft darkgray" id="date">2014-12-11</p>
                        </li>
                        <li class="ui-list-item fn_clear">
                            <p class="decoration"></p>
                            <p class="fleft text">
                            	<a class="text-big rrd-dimgray" href="#" target="_blank">众财宝2014年12月12日系统维护公告</a>
                            </p><p class="fleft darkgray" id="date">2014-12-11</p>
                        </li>
                        <li class="ui-list-item fn_clear">
                            <p class="decoration"></p>
                            <p class="fleft text">
                            	<a class="text-big rrd-dimgray" href="#" target="_blank">众财宝2014年12月12日系统维护公告</a>
                            </p><p class="fleft darkgray" id="date">2014-12-11</p>
                        </li>
                        <li class="ui-list-item fn_clear">
                            <p class="decoration"></p>
                            <p class="fleft text">
                            	<a class="text-big rrd-dimgray" href="#" target="_blank">众财宝2014年12月12日系统维护公告</a>
                            </p><p class="fleft darkgray" id="date">2014-12-11</p>
                        </li>
                        <li class="ui-list-item fn_clear">
                            <p class="decoration"></p>
                            <p class="fleft text">
                            	<a class="text-big rrd-dimgray" href="#" target="_blank">众财宝2014年12月12日系统维护公告</a>
                            </p><p class="fleft darkgray" id="date">2014-12-11</p>
                        </li>
                        <li class="ui-list-item fn_clear">
                            <p class="decoration"></p>
                            <p class="fleft text">
                            	<a class="text-big rrd-dimgray" href="#" target="_blank">众财宝2014年12月12日系统维护公告</a>
                            </p><p class="fleft darkgray" id="date">2014-12-11</p>
                        </li>
                    </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<!--main结束-->
<!--footer start-->
    <div class="ui-footer" id="footer">
    	<div class="footer_container">
        <!--友情链接-->
        	<div class="ui-footer-section fn_clear">
            	<h4 class="friend-text">友情链接</h4>
                <ul class="ui-footer-links fn_clear w850">
                	<li class="fn_left"><a class="gray" href="#">财经道</a></li>
                    <li class="fn_left"><a class="gray" href="#">融360理财</a></li>
                    <li class="fn_left"><a class="gray" href="#">58投资担保</a></li>
                    <li class="fn_left"><a class="gray" href="#">网贷之家</a></li>
                    <li class="fn_left"><a class="gray" href="#">慧聪金融</a></li>
                    <li class="fn_left"><a class="gray" href="#">银率网</a></li>
                </ul>
            </div>
            <!--公司介绍&客户服务-->
            <div class="ui-footer-section fn_clear">
            	<div class="ui-footer-links w700 grid">
                    <ul class="fn_clear">
                        <li class="fn_left"><a class="gray" target="_blank">公司介绍</a></li>
                        <li class="fn_left"><a class="gray" href="#">安全保障</a></li>
                        <li class="fn_left"><a class="gray" href="#">社会责任</a></li>
                        <li class="fn_left"><a class="gray" href="#">帮助中心</a></li>
                        <li class="fn_left"><a class="gray" href="#">联系我们</a></li>
                    </ul>
                    <ul class="fn_clear icons">
                        <li class="fn_left"><h4 class="guest">客户服务</h4></li>
                        <li class="fn_left contact1"><a class="wb" href="#"></a></li>
                        <li class="fn_left contact2"><a class="wx" href="#"></a></li>
                        <li class="fn_left contact3"><a class="online" href="#"></a></li>
                    </ul>
                  </div>
                  <div class="service grid">
                  	<p>客服电话</p>
                    <h4 class="ui-footer-phone">400-007-1378</h4>
                    <p>9:00-21:00</p>
                  </div>
            </div>
            <!--版权信息&信誉资质-->
            <div class="ui-footer-section last">
            	<div class="ui-footer-copyright">
                	<span class="ui-footer-contact">&copy; 2014 众财宝 All rights reserved</span>
                    <span class="ui-footer-contact has-separator">中投国汇（北京）资产管理有限公司</span>
                    <span class="ui-footer-contact has-separator">京ICP备 13038534号</span>
                </div>
            </div>
        </div>
    </div>
<!--main 结束-->
<!--footer start-->
    <div class="ui-footer" id="footer">
    	<div class="footer_container">
        <!--友情链接-->
        	<div class="ui-footer-section fn_clear">
            	<h4 class="friend-text">友情链接</h4>
                <ul class="ui-footer-links fn_clear w850">
                	<li class="fn_left"><a class="gray" href="#">财经道</a></li>
                    <li class="fn_left"><a class="gray" href="#">融360理财</a></li>
                    <li class="fn_left"><a class="gray" href="#">58投资担保</a></li>
                    <li class="fn_left"><a class="gray" href="#">网贷之家</a></li>
                    <li class="fn_left"><a class="gray" href="#">慧聪金融</a></li>
                    <li class="fn_left"><a class="gray" href="#">银率网</a></li>
                </ul>
            </div>
            <!--公司介绍&客户服务-->
            <div class="ui-footer-section fn_clear">
            	<div class="ui-footer-links w700 grid">
                    <ul class="fn_clear">
                        <li class="fn_left"><a class="gray" target="_blank">公司介绍</a></li>
                        <li class="fn_left"><a class="gray" href="#">安全保障</a></li>
                        <li class="fn_left"><a class="gray" href="#">社会责任</a></li>
                        <li class="fn_left"><a class="gray" href="#">帮助中心</a></li>
                        <li class="fn_left"><a class="gray" href="#">联系我们</a></li>
                    </ul>
                    <ul class="fn_clear icons">
                        <li class="fn_left"><h4 class="guest">客户服务</h4></li>
                        <li class="fn_left contact1"><a class="wb" href="#"></a></li>
                        <li class="fn_left contact2"><a class="wx" href="#"></a></li>
                        <li class="fn_left contact3"><a class="online" href="#"></a></li>
                    </ul>
                  </div>
                  <div class="service grid">
                  	<p>客服电话</p>
                    <h4 class="ui-footer-phone">400-007-1378</h4>
                    <p>9:00-21:00</p>
                  </div>
            </div>
            <!--版权信息&信誉资质-->
            <div class="ui-footer-section last">
            	<div class="ui-footer-copyright">
                	<span class="ui-footer-contact">&copy; 2014 众财宝 All rights reserved</span>
                    <span class="ui-footer-contact has-separator">中投国汇（北京）资产管理有限公司</span>
                    <span class="ui-footer-contact has-separator">京ICP备 13038534号</span>
                </div>
            </div>
        </div>
    </div>
<!--footer end-->
</div>

  </body>
  <script type="text/javascript">
window.onload=function(){
	document.getElementById("contact").style.display="none";
	}
    //创建和初始化地图函数：
    function initMap(){
        createMap();//创建地图
        setMapEvent();//设置地图事件
        addMapControl();//向地图添加控件
        addMarker();//向地图中添加marker
    }
if(document.getElementById("contact").style.display="block"){
    
    //创建地图函数：
    function createMap(){		
        var map = new BMap.Map("dituContent");//在百度地图容器中创建一个地图
        var point = new BMap.Point(116.468809,39.893464);//定义一个中心点坐标
        map.centerAndZoom(point,17);//设定地图的中心点和坐标并将地图显示在地图容器中
        window.map = map;//将map变量存储在全局
    }
}

    
    //地图事件设置函数：
    function setMapEvent(){
        map.enableDragging();//启用地图拖拽事件，默认启用(可不写)
        map.enableScrollWheelZoom();//启用地图滚轮放大缩小
        map.enableDoubleClickZoom();//启用鼠标双击放大，默认启用(可不写)
        map.enableKeyboard();//启用键盘上下左右键移动地图
    }
    
    //地图控件添加函数：
    function addMapControl(){
        //向地图中添加缩放控件
	var ctrl_nav = new BMap.NavigationControl({anchor:BMAP_ANCHOR_TOP_LEFT,type:BMAP_NAVIGATION_CONTROL_LARGE});
	map.addControl(ctrl_nav);
        //向地图中添加缩略图控件
	var ctrl_ove = new BMap.OverviewMapControl({anchor:BMAP_ANCHOR_BOTTOM_RIGHT,isOpen:1});
	map.addControl(ctrl_ove);
        //向地图中添加比例尺控件
	var ctrl_sca = new BMap.ScaleControl({anchor:BMAP_ANCHOR_BOTTOM_LEFT});
	map.addControl(ctrl_sca);
    }
    
    //标注点数组
    var markerArr = [{title:"顺迈金钻",content:"北京市东三环南路甲52号顺迈金钻商务中心",point:"116.468854|39.893464",isOpen:0,icon:{w:23,h:25,l:46,t:21,x:9,lb:12}}
		 ];
    //创建marker
    function addMarker(){
        for(var i=0;i<markerArr.length;i++){
            var json = markerArr[i];
            var p0 = json.point.split("|")[0];
            var p1 = json.point.split("|")[1];
            var point = new BMap.Point(p0,p1);
			var iconImg = createIcon(json.icon);
            var marker = new BMap.Marker(point,{icon:iconImg});
			var iw = createInfoWindow(i);
			var label = new BMap.Label(json.title,{"offset":new BMap.Size(json.icon.lb-json.icon.x+10,-20)});
			marker.setLabel(label);
            map.addOverlay(marker);
            label.setStyle({
                        borderColor:"#808080",
                        color:"#333",
                        cursor:"pointer"
            });
			
			(function(){
				var index = i;
				var _iw = createInfoWindow(i);
				var _marker = marker;
				_marker.addEventListener("click",function(){
				    this.openInfoWindow(_iw);
			    });
			    _iw.addEventListener("open",function(){
				    _marker.getLabel().hide();
			    })
			    _iw.addEventListener("close",function(){
				    _marker.getLabel().show();
			    })
				label.addEventListener("click",function(){
				    _marker.openInfoWindow(_iw);
			    })
				if(!!json.isOpen){
					label.hide();
					_marker.openInfoWindow(_iw);
				}
			})()
        }
    }
    //创建InfoWindow
    function createInfoWindow(i){
        var json = markerArr[i];
        var iw = new BMap.InfoWindow("<b class='iw_poi_title' title='" + json.title + "'>" + json.title + "</b><div class='iw_poi_content'>"+json.content+"</div>");
        return iw;
    }
    //创建一个Icon
    function createIcon(json){
        var icon = new BMap.Icon("http://app.baidu.com/map/images/us_mk_icon.png", new BMap.Size(json.w,json.h),{imageOffset: new BMap.Size(-json.l,-json.t),infoWindowOffset:new BMap.Size(json.lb+5,1),offset:new BMap.Size(json.x,json.h)})
        return icon;
    }
    
    initMap();//创建和初始化地图
</script>
</html>
