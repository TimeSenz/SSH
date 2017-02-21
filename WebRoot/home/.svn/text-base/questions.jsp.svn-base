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
<title>帮助中心</title>
<meta name="keywords" content="众财宝|理财|投资|贷款|P2P贷款|小额投资|金融投资|如何理财投资">
<meta name="description" content="众财宝(www.zhongcaibao.net)是一家从事P2P信贷、资产管理、项目投资、经贸咨询、技术推广、企业管理咨询、房地产信息咨询的专业机构，为中小企业提供融资新渠道，更为个人提供创新型投资理财服务。">
<link type="text/css" rel="stylesheet" href="../css/common.css">
<link type="text/css" rel="stylesheet" href="../css/about.css">
<link rel="Shortcut Icon" href="../images/zcb-icon.ico">
<style>
  .newbie-bd-container {float:left;width:802px;}
  .text-con{display: none;}
.newbie-bd-padd {float: left;width: 817px;min-height: 620px;_height:620px;
border-left: 1px solid #e2e2e2;
}
.section {padding:0 24px;border:1px solid #dcdcdc;margin-bottom:21px;background:#fff;}
.section h2 {font:normal 23px/45px "Microsoft YaHei";height:45px;padding:18px 0 0 0;color:#5a5a5a;}
.section h3 {font:normal 19px/45px "Microsoft YaHei";height:45px;padding-bottom:1px;color:#f29860;background:url(../images/img/newbie-line.png) no-repeat bottom left;}
.section p {padding:12px 0;font:normal 14px/22px "Microsoft YaHei";color:#5D5D5D;}
.text-pic { width:612px; height:275px;background:url(../images/img/text-pic.png) no-repeat; margin:30px auto;}
.text-pic span {color:#f29860;font-size:18px;}
.text-pic1 {font:normal 14px/22px "Microsoft YaHei";color:#5D5D5D;padding-bottom:30px;overflow:hidden;zoom:1;}
.text-pic1 span {float:left;width:280px;height:65px;}
.text-pic1 div {float:right;width:465px;height:134px;background:url(../images/img/text-pic1.png) no-repeat 38px 36px;}
.section .h-right {text-align:right;background:url(../images/img/newbie-line-right.png) no-repeat bottom right;}
.text-pic2 {padding:60px 0 90px 320px;background:url(../images/img/text-pic2.png) no-repeat 43px 25px;line-height:22px;}
.text-pic3 {padding:155px 0 17px 0;background:url(../images/img/text-pic3.png) no-repeat 220px 34px;line-height:22px;}
.text-pic4 {padding:83px 0 33px 386px;background:url(../images/img/text-pic4.png) no-repeat 144px 28px;line-height:22px;}
.san ul {padding:33px 0 0 0;overflow:hidden;zoom:1;}
.san li {width:33%;float:left;}
.san-pic1,.san-pic2,.san-pic3 {height:86px;}
.san-pic1 {background:url(../images/img/san-1.png) no-repeat center;}
.san-pic2 {background:url(../images/img/san-2.png) no-repeat center;}
.san-pic3 {background:url(../images/img/san-3.png) no-repeat center;}
.san-text {margin-top:31px;font:normal 14px/30px "Microsoft YaHei";height:30px;text-align:center;}
.san-text a,.san-text a:hover {color:#F29860;}
.now-licai {height:27px;}
.now-licai a{display:block;width:98px;height:27px;background:url(../images/img/now-licai.png) no-repeat;margin:0 auto;font:normal 14px/26px "Microsoft YaHei";color:#fff;text-align:center;}
.now-licai a:hover {color:#fff;}
.san-bot-text {height:22px;line-height:22px;padding:30px 0 12px 0;text-align:center;}
.posi {position:relative;padding-bottom:20px;}
.posi h2 {margin-bottom:115px;}
.posi-pic {position:absolute;width:205px;height:132px;background:url(../images/img/posi-pic.png) no-repeat;top:48px;left:298px;}

.newbie-bd-padd .about_icon{ background:#CCCBD2;display: inline;float: left;height: 13px;margin: 14px 19px 14px 9px;width:13px;}
.newbie-bd-padd .urls{ width:686px; overflow:hidden;}
.newbie-bd-padd .urls li{height:40px; line-height:40px; border:1px solid #FFF;border-bottom:1px solid #dddddd; overflow:hidden; cursor:pointer;}
.newbie-bd-padd .urls em{width:8px; height:40px; display:inline-block; float:left;}
.newbie-bd-padd .urls li:hover{ border:1px solid #f89a4d; background:url(../images/design/compang_partners_bg.png) repeat; border-left:none;}


.newbie-bd-padd h2 {height:45px;padding-top:18px;font:normal 18px/45px "Microsoft YaHei";}
.newbie-bd-padd h3 {font:normal 14px/26px "Microsoft YaHei";color:#5d5d5d;}
.newbie-bd-padd ul {padding:0 0 30px 0;}
.list-option .text-con {line-height:22px;display:none;padding: 7px 0;}
.list-option .text-con1 {line-height:22px;margin: 10px 0;}
.list-option span:hover {cursor:pointer;}
.main-box {padding:0 24px;background:#fff;}
.list-option .text-con p{margin-left:22px;font-size: 12px;}
.main-box #zc{height: 32px;border-bottom: 2px #28a7e1 solid;line-height: 32px;color: #28a7e1;font-weight: normal;font-size: 16px;padding-top:18px;margin-bottom:10px;}
.main-box em{color: #aa1423;font-style: normal;}
</style>
<script src="../js/jquery-1.6.4.min.js"></script>
<script type="text/javascript">
$(function(){
$('.tab_btn_con a').click(function(){

var index=$(this).index();
$(this).addClass('cur').siblings().removeClass('cur');
  $('.newbie-bd-padd .main-box').eq(index).show().siblings().hide();
})
})
</script>

  </head>
  
  <body>

<div class="pg-container">
<!--头部-->
<%@include file="../pub/pub_top.jsp" %> 
<!--头部end-->
<!--main开始-->
    <div class="questions">
        <div class="w1000">
  <div class="con fn_clear" style="margin-top:30px;">
                <!--左侧Tab-->
                <div class="tab_btn_con fleft">
                    <a href="javaScript:;" class="btn cur">常见问题</a>
                    <a href="javaScript:;" class="btn">注册与认证</a>
                    <a href="javaScript:;" class="btn">充值与提现</a>
                    <a href="javaScript:;" class="btn">安全保障</a>
                    <a href="javaScript:;" class="btn">法律法规</a>
                    <a href="javaScript:;" class="btn">账户安全</a>                     
                    <a href="javaScript:;" class="btn">资金安全</a>                     
                </div>
                <!--右侧 内容-->
                <div class="newbie-bd-padd">
            <div class="main-box">
              <h2>常见问题</h2> 
              <ul>
                                                                <li class="list-option">
                  <h3><span>1、众财宝是什么平台？</span></h3>
                  <div class="text-con"><p>&nbsp;&nbsp;&nbsp; 众财宝是为有投资需求的投资人和缺乏融资渠道的借款人，搭建的公平、透明、安全、高效的互联网金融服务平台。</p></div>
                </li>
                                <li class="list-option">
                  <h3><span style="color: rgb(93, 93, 93);">2、众财宝平台采取什么运营模式？</span></h3>
                  <div class="text-con"><p>&nbsp;&nbsp;&nbsp; 众财宝采用O2O模式，借助线下优秀的业务开发团队，担保公司、小额贷款公司等机构挖掘优质借款人，或借款人在众财宝平台上自助提交借款申请，经过严格的风险审核程序通过后，将项目信息移植到线上平台，供全国各地的线上投资人投标。</p>
</div>
                </li>
                 <li class="list-option">
                  <h3><span style="color: rgb(93, 93, 93);">3、众财宝平台精选理财计划是什么？</span></h3>
                  <div class="text-con"><p>&nbsp;&nbsp;&nbsp; 精选理财计划是众财宝为高端客户设置的一项专属投资理财计划，通过整合借款期限相近，借款利率相似的数个优质借款人，形成每一期众财宝精选理财计划，为理财人提供高收益、低风险的全新理财投资体验。</p>
</div>
                </li>
                <li class="list-option">
                  <h3><span style="color: rgb(93, 93, 93);">4、本金和收益如何得到保障?</span></h3>
                  <div class="text-con"><p>入围合作机构与众财宝对每个借款项目经过四项严格审核。<br>
&nbsp;&nbsp;&nbsp;1. 入围合作机构针对每笔借款，进行线下实地考察，对借款人信息进行交叉验证以及真实性验证；<br>
&nbsp;&nbsp;&nbsp;2. 20多项必备资料审核，包括但不限于借款人银行流水、征信报告、财产证明、房产证明、工作证明等；<br>
&nbsp;&nbsp;&nbsp;3. 借款人及联系人背景的详细调查<br>
&nbsp;&nbsp;&nbsp;4. 借款人还款能力评估。<br>
通过上述机构对借款人的严格审核后，该借款人被推荐到众财宝平台，再经过众财宝风控审核团队根据自身的风控标准对借款人进行反欺诈查询、身份信息验证、信息交叉验证、黑名单查询、法院被执行人查询等多项信息查询验证，以保证合作机构提供的借款真实可信。</p></div>
                </li>                                              
                              </ul>
            </div>



            <div class="main-box" style="display:none">
              <h2>注册与认证</h2> 
              <ul><li class="list-option">为保障投资人的收益安全，请在注册后，绑定您常用的手机号、提现银行账户号、设置支付密码。</li>
                                <li class="list-option">
                  <h3><span style="color: rgb(93, 93, 93);">1、进入注册页面，<a href="/ZhongCaiBao/userinfo/user.action?user=register">注册</a></span></h3>
                  <div class="text-con" style="display:block"><p><img src="../images/questions1.jpg"></p></div>
                </li>
                <li class="list-option">
                  <h3><span style="color: rgb(93, 93, 93);">2、账户注册成功后，完成实名认证</span></h3>
                                    <div class="text-con" style="display:block"><p><img src="../images/questions2.jpg"></p></div>
                  
                </li>
                                <li class="list-option">
                  <h3><span>3、登录账户，进行实名认证、手机绑定、</span></h3>
                  <div class="text-con" style="display:block"><p><img src="../images/questions3.jpg"></p></div>
                  
                </li>
        </ul>
            </div>
            <div class="main-box" style="display:none">
              <h2>充值</h2> 
              <ul>
                                <li class="list-option">
                  <h3><span style="color: rgb(93, 93, 93);">1、进入注册页面，
                  <s:if test="%{#session.userinfo==null}">
                  <a href="/ZhongCaiBao/userinfo/user.action?user=login">资金管理</a></s:if><s:else>
                  <a href="/ZhongCaiBao/userinfo/personCenter.action?id=%{#session.userinfo.userid}">资金管理</a></s:else></span></h3>
                  
                </li>
                 <li class="list-option">
                  <h3><span style="color: rgb(93, 93, 93);">2、选择银行，输入充值金额，点击“立即充值”，进入银行页面</span></h3>
                  
                </li>
                <li class="list-option">
                  <h3><span style="color: rgb(93, 93, 93);">3、支付成功后，可看到余额，充值流水</span></h3>
                  
                </li>
                   <h2>提现</h2>  
                   <li class="list-option">
                  <h3><span style="color: rgb(93, 93, 93);">1、资金管理 ->  进入提现菜单</span></h3>
                  
                </li>  
                <li class="list-option">
                  <h3><span style="color: rgb(93, 93, 93);">2、申请提现 -> 等待审核 -> 第三方放款</span></h3>
                </li>
                <li class="list-option">
                  <h3><span style="color: rgb(93, 93, 93);">3、查看提现记录</span></h3>
                  
                </li>   
                <li class="list-option">
                <center style="margin-top: 50px;">充值/提现过程中遇到困难，请致电客服：400-007-1378</center>
                </li>        
        </ul>
            </div>
                <div class="main-box"style="display:none">
              <h2>安全保障</h2> 
              <ul>
                                                                <li class="list-option">
                  <h3><span>1、身份验证</span></h3>
                  <div class="text-con"><p>&nbsp;&nbsp;&nbsp; 众财宝平台采用第三方认证的“身份通”验证服务。“身份通”是依托“全国公民身份信息系统”，为中国公民自主展示真实身份而提供的身份信息服务。详细信息请参见身份网 (www.id5.cn) 的有关介绍。<br>
                  <em>&nbsp;&nbsp;&nbsp;注意：身份认证后不允许更改用户名，身份证号信息。</em></p></div>
                </li>
                                <li class="list-option">
                  <h3><span style="color: rgb(93, 93, 93);">2、提现银行账号</span></h3>
                  <div class="text-con"><p>&nbsp;&nbsp;&nbsp;提现银行账号可以是任何第三方支付平台认可的，连通的银联卡账号。</p>
</div>
                </li>
                 <li class="list-option">
                  <h3><span style="color: rgb(93, 93, 93);">3、提现密码</span></h3>
                  <div class="text-con"><p>&nbsp;&nbsp;&nbsp;提现密码可通过手机或邮箱找回，如有疑问请致电：400-007-1378处理。</p>
</div>
                </li>
                <li class="list-option">
                  <h3><span style="color: rgb(93, 93, 93);">4、登录密码与提现密码</span></h3>
                  <div class="text-con"><p> &nbsp;&nbsp;&nbsp;1.建议密码6位以上，至少含有英文与数字，结合大小写、符合可进一步提升安全性；<br>&nbsp;&nbsp;&nbsp;2.建议密码每30天更换一次，尽可能不用生日，身份证号等信息；<br>&nbsp;&nbsp;&nbsp;3.登录密码与提现密码尽可能不同；<br>&nbsp;&nbsp;&nbsp;4.不要将个人信息透露给他人；<br>好的密码习惯可以让你的账号更安全。</p></div>
                </li>
                   </ul>
            </div>
            <div class="main-box" style="display:none">
              <h2>法律法规</h2> 
              <ul>
                <li class="list-option">
                  <h3><span>1、关于理财人及借款人双方民间借贷关系的合法性</span></h3>
                  <div class="text-con"><p> &nbsp;&nbsp;&nbsp;根据《合同法》第196条规定“借款合同是借款人向贷款人借款，到期返还借款并支付利息的合同”，《合同法》允许自然人等普通民事主体之间发生借贷关系，并允许出借方到期可以收回本金和符合法律规定的利息。</p></div>
                </li>
                                <li class="list-option">
                  <h3><span style="color: rgb(93, 93, 93);">2、关于众财宝平台提供居间撮合服务的合法性</span></h3>
                  <div class="text-con"><p>&nbsp;&nbsp;&nbsp;根据《合同法》第23章关于“居间合同”的规定，特别是第424条规定的“居间合同是居间人向委托人报告订立合同的机会或者提供订立合同的媒介服务，委托人支付报酬的合同”，众财宝平台作为合法设立的中介服务机构，为民间借贷提供撮合，使借贷双方形成借贷关系并收取相关报酬的居间服务有着明确的法律基础。</p>
</div>
                </li>
                 <li class="list-option">
                  <h3><span style="color: rgb(93, 93, 93);">3、关于电子合同的合法性</span></h3>
                  <div class="text-con"><p>&nbsp;&nbsp;&nbsp;根据《合同法》和《电子签名法》的规定，当事人可以采用合同书、信件和数据电文（包括电报、电传、传真、电子数据交换和电子邮件）等形式订立合同，并通过以电子形式所含、所附用于识别签名人身份并表明签名人认可其中内容的数据电文等电子签名方式进行签署，当事人不能仅因合同采用电子签名、数据电文的形式就否定其法律效力。</p>
</div>
                </li>
                <li class="list-option">
                  <h3><span style="color: rgb(93, 93, 93);">4、关于理财人通过众财宝平台获得的出借理财收益的合法性</span></h3>
                  <div class="text-con"><p> &nbsp;&nbsp;&nbsp;根据最高人民法院《关于人民法院审理借贷案件的若干意见》第6条：“民间借贷的利率可以适当高于银行的利率，各地人民法院可以根据本地区的实际情况具体掌握，但最高不得超过银行同类贷款利率的四倍（包含利率本数）。超出此限度的，超出部分的利息不予保护。”众财宝平台的出借投资收益未超过银行同类贷款利率的四倍，为合法利息收益，受到法律保护。</p></div>
                </li>
                   </ul>
            </div>
            <div class="main-box" style="display:none">
              <h2>账户安全</h2> 
              <ul>
                                                                <li class="list-option1" style="margin-top:30px;">
                  <div class="text-con1"><p>请牢记众财宝平台官方地址：www.zhongcaibao.net</p></div>
                </li>
                <li class="list-option">
                  <div class="text-con1"><p>不要点击来历不明的链接访问众财宝，谨防网站钓鱼和欺诈。我们建议您将众财宝平台官方地址加入浏览器收藏夹，以方便您的下次登录。</p>
</div>
                </li>
                 <li class="list-option">
                  <div class="text-con1"><p>为您的众财宝平台个人账户设置高强度的登录密码。</p>
</div>
                </li>
                <li class="list-option">
                   <div class="text-con1"><p>您在密码设置时，最好使用数字和字母混合，不要使用纯数字或纯字母，且密码长度要在6位以上，最好大小写并用。</p></div>
                </li>
                <li class="list-option">
                   <div class="text-con1"><p>注重电脑运行环境的安全。</p></div>
                </li>
                <li class="list-option">
                   <div class="text-con1"><p>及时为您的电脑进行系统更新、安装安全补丁，以防系统漏洞被黑客利用。</p></div>
                </li>
                 <li class="list-option">
                   <div class="text-con1"><p>为您的电脑安装杀毒软件或防火墙，并定期为电脑进行查毒、杀毒。</p></div>
                </li>
                 <li class="list-option">
                   <div class="text-con1"><p>时刻注意保护个人隐私。</p></div>
                </li>
                 <li class="list-option">
                   <div class="text-con1"><p>用户在平台上交流的过程中，不要向其他用户透露自己真实姓名与住址等，以防个人信息被盗取造成损失。</p></div>
                </li>
                 <li class="list-option">
                   <div class="text-con1"><p>避免私下交易。</p></div>
                </li>
                 <li class="list-option">
                   <div class="text-con1"><p>私下交易的约束力极低，造成逾期的风险非常高，同时您的个人信息将有可能被泄漏，存在遭遇诈骗甚至受到严重犯罪侵害的隐患。</p></div>
                </li>
                   </ul>
            </div>
            <div class="main-box" style="display:none">
              <h2>资金安全</h2> 
              <ul>
                                                                <li class="list-option">
                   <div class="text-con1"><p>众财宝平台依据银监会对P2P的指导原则，坚决不经手投资人及借款人的资金，平台资金全部托管于第三方支付公司丰付。</p></div>
                </li>
                                <li class="list-option">
                  <h3><span style="color: rgb(93, 93, 93);">1、资金托管方介绍</span></h3>
                  <div class="text-con"><p>&nbsp;&nbsp;&nbsp;丰付为北京数码视讯支付技术有限公司的支付品牌。北京数码视讯支付技术有限公司成立于2008年12月，为北京数码视讯科技股份有限公司的全资子公司。<br>
                  &nbsp;&nbsp;&nbsp;北京数码视讯支付技术有限公司成立之初，借助母公司在广电行业的雄厚实力，瞄准广电行业，发力数字电视支付，自主研发了数字电视支付系统，获得了电视支付1.0软件著作权，并且公司电视支付系统通过人民银行银行卡检测中心的检测认证，并于2012年6月获得人民银行颁发的全国数字电视支付和互联网支付《支付业务许可证》，成为全国首家获得全国范围数字电视支付和互联网支付的支付公司。</p>
</div>
                </li>
                 <li class="list-option">
                  <h3><span style="color: rgb(93, 93, 93);">2、什么是第三方托管</span></h3>
                  <div class="text-con"><p>&nbsp;&nbsp;&nbsp;第三方资金托管是伴随网贷发展而出现的一种新型支付业务，在一定程度上可防范网贷平台恶意挪用投资人资金。众财宝平台通过丰付提供的支付平台进行结算，投资人资金通过丰付直接进入借款人账户，众财宝平台不接触投资人与借款人的资金，确保投资人的资金安全，同时也为众财宝平台提供稳定的运营条件。</p>
</div>
                </li>
                <li class="list-option">
                  <h3><span style="color: rgb(93, 93, 93);">3、第三方托管的优势</span></h3>
                  <div class="text-con"><p>&nbsp;&nbsp;&nbsp;（1）避免资金归属不清。账户信息在网贷平台和第三方托管平台上同时存在，网贷平台无法修改用户在第三方托管账户中的资金。<br>&nbsp;&nbsp;&nbsp;（2）资金管理更加严格，第三方托管账户中的资金仅可以向对应的用户实名银行卡和项目借款人转账，避免了网贷平台进行资金错配，用赤字账户掩盖风险。
第三方托管流程</p></div>
                </li>
                <li class="list-option">
                  <div class="text-con1"><p>网融管家是丰付针对P2P行业面临的监管风险、安全风险而打造的一款资金安全管理产品。通过建立独立资金账户体系，集合基础的收、付款产品，实现了信息流与资金流的分离、用户资金与平台资金的独立。最大程度的保证了用户资金安全，同时充分满足P2P平台投资借款需求。搭建了一个P2P资金托管、结算的智能化流转账户体系。</p></div>
                </li>
                   </ul>
            </div>

          </div>
                <script>
            $(function(){
              $('.list-option span').click(function(){
                if($(this).parents('.list-option').find('.text-con').css('display') == 'block'){
                  $(this).css({color:'#5D5D5D'});
                }else{
                  $(this).css({color:'#28a7e1'});
                }
                $(this).parents('.list-option').find('.text-con').slideToggle(400);
                $(this).parents('.list-option').siblings().find('.text-con').slideUp(400);
                $(this).parents('.list-option').siblings().find('span').css({color:'rgb(93, 93, 93)'});
              });

              $('.list-option span').hover(function(){
                $(this).css({color:'#28a7e1'});
              },function(){
                $(this).css({color:'#5D5D5D'});
                if($(this).parents('.list-option').find('.text-con').css('display') == 'block'){
                  $(this).css({color:'#28a7e1'});
                }
              });

            });
          </script>
            </div>
</div>
<!--footer start-->
    <%@include file="../pub/pub_footer.jsp" %> 
<!--footer end-->

  </body>
</html>
