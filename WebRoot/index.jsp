<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="dao.Userinfo" %>
<!doctype html>
<html>
<head>
<meta http-equiv="content-type" content="text/html" charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>众财宝-众财宝|理财|投资|贷款|P2P贷款|小额投资|金融投资|如何理财投资</title>
<meta name="keywords" content="众财宝|理财|投资|贷款|P2P贷款|小额投资|金融投资|如何理财投资">
<meta name="description" content="众财宝（ http://www.zhongcaibao.net/），中投国汇集团旗下企业，由中投国汇（北京）资产管理有限公司运营，创新O2O模式，以线上线下相结构的模式，致力于为有资金需求的借款者和有闲散资金的投资者搭建了诚信、规范、专业、透明的互联网金融服务平台。">
<link type="text/css" rel="stylesheet" href="../css/index.css">
<link type="text/css" rel="stylesheet" href="../css/common.css">
<link rel="Shortcut Icon" href="../images/zcb-icon.ico">
<script type="text/javascript" language="javascript" src="../js/png.js"></script>
<!--[if IE 6]>
<script src="js/png.js" type="text/javascript"></script>
<script type="text/javascript">
   EvPNG.fix('img,.top-container-left a,.icons a,.ui-nav-dropdown span'); 
</script>
<![endif]-->
<script src="../js/jquery-1.6.4.min.js"></script>
<script src="../js/banner.js"></script>
<script src="../js/changeNum.js"></script>
<script src="../js/index.js"></script>
<script language="JavaScript">

$(function(){

function MSIE(){
 	//$("body").hide();
 	//$("body").after('<a class="c-btn c-btn-primary OP_LOG_BTN" href="http://www.baidu.com/link?url=LJjoOEu2wbijcV1H21ndYaJ_4fcY2hdGu_HHmqIiV8fr92IGDAZMRuzoaesTsn7PnakmCSgvwv2z9cEF6Ru63TZv-jQjgIRs1A7-teVimiS" target="_blank">立即下载</a>');
alert("众财宝温馨提示：您现在使用的是低版本内核 的IE浏览器，网站的用户体验或将受到部分影响，推荐您使用chrome谷歌浏览器");


}
function getOs()
{
var OsObject = "";
if(navigator.userAgent.indexOf("MSIE")>0) {
//body.hide()
MSIE();
return "MSIE";

}
if(isFirefox=navigator.userAgent.indexOf("Firefox")>0){
//alert("Firefox");
return "Firefox";
}
if(isSafari=navigator.userAgent.indexOf("Safari")>0) {
//alert("Safari");
return "Safari";
}
if(isCamino=navigator.userAgent.indexOf("Camino")>0){
//alert("Camino");
return "Camino";

}
if(isMozilla=navigator.userAgent.indexOf("Gecko/")>0){
//alert("Gecko");
return "Gecko";

}

}
getOs();


})

</script>
<script>
//loging
function load(){
function hide(){
	$("#loging").hide();
}
function show(){
	$("#logings").show();
}
	 loading=setTimeout(
	 function(){
		 //$("#loging").hide();
		hide();
	 },1000		
	);  
	 loadings=setTimeout(
			 function(){
				 clearInterval(loading);
				 show();
				 //$(".roll-news").children().hide();
				//alert("www1")
			 },1000	
			); 

	 
}
</script>
  </head>
  
  <body onload="load()">

<div class="pg-container">
<!--头部-->
<%@include file="../pub/pub_top.jsp" %><!--头部end-->
<!--图片轮播start-->
    <div class="roll-news"> 
    	<div class="login_box">
    		<div class="login">
         <div class="login_bg">
        	<ul class="login_list">
        	<span class="login_sanjiao1"></span>
				<li class="cur">我要投资</li>
				<li>我要借款</li>
			</ul>
        <div class="login_main">
          <div class="login_bg1">
            <h3>最高年化收益率</h3>
            <h2><em>12</em>%  ~  <em>17.0</em>%</h2>
            <h4><em>30</em>倍 活期存款收益</h4>
            <h4><em>4</em>倍 定期存款收益</h4>
            <s:if test="%{#session.userinfo==null}">
              <a href="/ZhongCaiBao/userinfo/user.action?user=login" class="button">马上加入</a>
              <p><span>已有账户？</span><a href="/ZhongCaiBao/userinfo/user.action?user=login">立即登录</a></p>
            </s:if>
            <s:else> 
              <a href="/ZhongCaiBao/home/home.action?home=lenders"  class="button">马上加入</a>
            </s:else>
              
          </div>
          <div class="login_bg1" style="display:none">
            <h3>最高年化收益率</h3>
            <h2><em>12</em>%  ~  <em>17.0</em>%</h2>
            <h4><em>30</em>倍 活期存款收益</h4>
            <h4><em>4</em>倍 定期存款收益</h4>
            <s:if test="%{#session.userinfo==null}">
              <a href="/ZhongCaiBao/userinfo/user.action?user=login" class="button">马上加入</a>
              <p><span>已有账户？</span><a href="/ZhongCaiBao/userinfo/user.action?user=login">立即登录</a></p>
            </s:if>
            <s:else> 
              <a href="/ZhongCaiBao/home/home.action?home=borrowed"  class="button">马上加入</a>
            </s:else>
              
          </div>
         </div>
        </div> 
        
      </div> 
      </div>
    		<ul id="loging">
		                    <li style="height: 375px;"><img src="../images/2222023L0-8.gif" style="margin-top: 120px;"></li>
		                  
		                </ul> 
		    <div id="logings" style="display:none">
		    	<ul id="banner_list">		                    
		                    <li style="background:url(../images/banner2.jpg) no-repeat 50% 50%;"><a href="/ZhongCaiBao/home/join.jsp"></a></li>

		                    <li style="background:url(../images/banner1.jpg) no-repeat 50% 50%;"><a href="javascript:;"></a></li>
		                    <li style="background:url(../images/banner3.jpg) no-repeat 50% 50%;"><a href="javascript:;"></a></li>
                            <li style="background:url(../images/banner4.jpg) no-repeat 50% 50%;"><a href="javascript:;"></a></li>
		                    <li style="background:url(../images/banner2.jpg) no-repeat 50% 50%;"><a href="/ZhongCaiBao/home/join.jsp"></a></li>

		                </ul>  
		            <div class="roll-news-index">  
		                <a href="javascript:;"></a>
		                <a href="javascript:;"></a>
		                <a href="javascript:;"></a>
                        <a href="javascript:;"></a>
		            </div>  
		    </div>
                
	</div>
<!--图片轮播end-->
    <div class="container_middle">
        <!--精选理财start-->
            <div id="selected">    	
                <a class="selected1" href="/ZhongCaiBao/home/insurance.jsp">
                    <div class="r">
                        <dl>足额抵押物保障</dl>
                        <p>车、房抵押风险代偿</p><p>办理他项权证、公证手续</p>
                    </div>
                </a>
                <a class="selected2" href="/ZhongCaiBao/home/insurance.jsp">
                        <div class="r">
                            <dl>低门槛 高收益</dl>
                            <p>50元起投</p><p>40倍银行存款利息</p>
                        </div>
                </a>
                <a class="selected3" href="/ZhongCaiBao/home/insurance.jsp">
                        <div class="r">
                            <dl>第三方资金托管</dl>
                    <p>资金流向安全、透明</p><p>权威第三方资金托管</p>
                        </div>
                </a>
                <a class="selected4" href="/ZhongCaiBao/home/insurance.jsp">
                        <div class="r">
                            <dl>全方位安全保障</dl>
                    <p>5道风控安全防线</p><p>100%本金收益保障</p><p>多维度保障措施</p>
                        </div>
                </a>
            </div>
        <!--精选理财end-->
        <!--数据统计-->
           <!--  <div class="data">
                <span class="list-title">数据统计</span>
                <a class="more_data" href="more_data.html">更多数据>></a>
                <ul>
                    <li class="data-value"><p class="blue">64,562,000,00元</p><p>已撮合资金</p></li>
                    <li class="data-value"><p class="blue">41,892,000,00元</p><p>已偿还本金</p></li>
                    <li class="data-value"><p class="blue">821,153,70元</p><p>已支付收益</p></li>
                    <li class="data-value"><p class="blue">821,153,70元</p><p> 为投资人赚取收益</p></li>
                </ul>
            </div> -->
        <!--新闻公告-->
            <div class="news" id="news">                 
                  <form >
                  <a href="/ZhongCaiBao/newsinfo/findByGong.action?currentPage=1" class="a">更多公告</a>
                  <span class="list-title">新闻公告</span>
                <ul>
                  <s:iterator value="firstgonglist" var="vo">
                  <li><s:a href="/ZhongCaiBao/newsinfo/findOneById.action?id=%{#vo.id}" target="_blank"><s:property value="#vo.title"/></s:a><span class="right"><s:date name="#vo.time" format="yyyy-MM-dd" /></span></li>
                    
                 </s:iterator>
                </ul>
                 </form>         
            </div>
        
        <!--精选理财-->
            <div class="product">
                <div class="timer_container">
                    <span class="timer_title">满额计时</span>
                    <div id="timer"></div>
                </div>
                <div class="detail">
                    <!-- <span class="periods">(0069期)</span> -->
                    <p><a class="know_more" href="/ZhongCaiBao/bidinfo/showAllFinance.action">了解详情</a></p>
                </div>
                <!-- 精选理财详情 -->
                <!-- <div class="product_intro">
                    <ul class="intro">
                        <li>加入条件<br>1,000元</li>
                        <li>计划总额<br>2,000,000元</li>
                        <li>预期收益<br>8%-14%</li>
                    </ul>
                </div>
                <div class="product_list">    	
                    <div class="place product_list1">
                        <span class="profit"><s:property value="allfinancelist[0].profit"/></span>                      
                        <div class="product_r">
                            <p>
                                <s:property value="allfinancelist[0].deadline"/>个月  收益<span class="big"><s:property value="allfinancelist[0].profit"/>%</span><br>
                                <span class="small">剩余<s:property value="allfinancelist[0].money/1000"/>笔,每笔1千元</span>
                            </p>
                            <a class="product_list_btn" href="/ZhongCaiBao/bidinfo/showOneFinance.action?id=<s:property value="allfinancelist[0].id"/>">立即投资</a>
                        </div>
                    </div>    	
                    <div class="place product_list2">
                      <span class="profit"><s:property value="allfinancelist[1].profit"/></span>
                        <div class="product_r">
                            <p>
                                <s:property value="allfinancelist[1].deadline"/>个月  收益<span class="big"><s:property value="allfinancelist[1].profit"/>%</span><br>
                                <span class="small">剩余<s:property value="allfinancelist[1].money/1000"/>笔,每笔1千元</span>
                            </p>
                            <a class="product_list_btn" href="/ZhongCaiBao/bidinfo/showOneFinance.action?id=<s:property value="allfinancelist[1].id"/>">立即投资</a>
                        </div>
                    </div>    	
                    <div class="place product_list3">
                      <span class="profit"><s:property value="allfinancelist[2].profit"/></span>
                        <div class="product_r">
                            <p>
                                <s:property value="allfinancelist[2].deadline"/>个月  收益<span class="big"><s:property value="allfinancelist[2].profit"/>%</span><br>
                                <span class="small">剩余<s:property value="allfinancelist[2].money/1000"/>笔,每笔1千元</span>
                            </p>
                            <a class="product_list_btn" href="/ZhongCaiBao/bidinfo/showOneFinance.action?id=<s:property value="allfinancelist[2].id"/>">立即投资</a>
                        </div>
                    </div>   	
                    <div class="place product_list4">
                      <span class="profit"><s:property value="allfinancelist[3].profit"/></span>
                        <div class="product_r">
                            <p>
                                <s:property value="allfinancelist[3].deadline"/>个月  收益<span class="big"><s:property value="allfinancelist[3].profit"/>%</span><br>
                                <span class="small">剩余<s:property value="allfinancelist[3].money/1000"/>笔,每笔1千元</span>
                            </p>
                            <a class="product_list_btn" href="/ZhongCaiBao/bidinfo/showOneFinance.action?id=<s:property value="allfinancelist[3].id"/>">立即投资</a>
                        </div>
                    </div>
            </div> -->
            </div>
          <!-- 精选理财标详情 --> 
            <div class="select_product">
                            <ul class="product1">
                                <li class="no1 fleft">
                                    <ul class="desc">
                                        <li class="limit">1000元起投</li>
                                        <li class="deadline">期限<s:property value="allfinancelist[0].deadline"/>个月</li>
                                        <li class="intro">预期年化收益</li>
                                        <li class="profit"><s:property value="allfinancelist[0].profit"/>%</li>
                                    </ul>
                                    <a href="/ZhongCaiBao/bidinfo/showOneFinance.action?id=<s:property value="allfinancelist[0].id"/>">立即投资</a>
                                </li>
                                <li class="no2 fleft">
                                    <ul class="desc">
                                        <li class="limit">1000元起投</li>
                                        <li class="deadline">期限<s:property value="allfinancelist[1].deadline"/>个月</li>
                                        <li class="intro">预期年化收益</li>
                                        <li class="profit"><s:property value="allfinancelist[1].profit"/>%</li>
                                    </ul>
                                    <a href="/ZhongCaiBao/bidinfo/showOneFinance.action?id=<s:property value="allfinancelist[1].id"/>">立即投资</a>
                                </li>
                                <li class="no3 fleft">
                                    <ul class="desc">
                                        <li class="limit">1000元起投</li>
                                        <li class="deadline">期限<s:property value="allfinancelist[2].deadline"/>个月</li>
                                        <li class="intro">预期年化收益</li>
                                        <li class="profit"><s:property value="allfinancelist[2].profit"/>%</li>
                                    </ul>
                                    <a href="/ZhongCaiBao/bidinfo/showOneFinance.action?id=<s:property value="allfinancelist[2].id"/>">立即投资</a>
                                </li>
                                <li class="no4 fleft">
                                    <ul class="desc">
                                        <li class="limit">1000元起投</li>
                                        <li class="deadline">期限<s:property value="allfinancelist[3].deadline"/>个月</li>
                                        <li class="intro">预期年化收益</li>
                                        <li class="profit"><s:property value="allfinancelist[3].profit"/>%</li>
                                    </ul>
                                    <a href="/ZhongCaiBao/bidinfo/showOneFinance.action?id=<s:property value="allfinancelist[3].id"/>">立即投资</a>
                                </li>
                            </ul>
                        </div>
          <!--秒杀区--> 
            <div class="limit">
                <a href="/ZhongCaiBao/bidinfo/findById.action?id=21"><img src="../images/limit.jpg"></a>
            </div>       
          <!--交易列表-->
            <div class="deal-show fn_clear">
            	<div class="grid w980">
                	<div>
                    	<span class="list-title">交易列表</span>
                    </div>
                    <ul class="ui-list-loan ui-list-m">
                        <li class="fn_clear" id="loan-list-header">
                            <span class="ui-list-title fleft gray w260">借款标题</span>
                            <span class="ui-list-title fleft gray w80">标的类型</span>
                            <span class="ui-list-title fleft gray w120">年利率</span>
                            <span class="ui-list-title fleft gray w160">金额</span>
                            <span class="ui-list-title fleft gray w100">期限</span>
                            <span class="ui-list-title fleft gray w110">进度</span>
                            <span class="ui-list-title fleft gray w80"></span>
                        </li>
                        <li class="ui-list-item fn_clear" id="js_water_box">
                         <s:iterator value="bidinfolist" var="vo">
                        	<span class="ui-list-field fleft text-big w260">
                            	<a class="fleft w210 rrd-dimgray" href="/ZhongCaiBao/bidinfo/findById.action?id=${vo.id}"><s:property value="#vo.bid_reason"/></a>
                            </span>
                            <span class="ui-list-field fleft w80">
                            	<a class="creditlevel fwhite xin"> <s:property value="#vo.bid_bidtype"/></a>
                            </span>
                            <span class="ui-list-field fleft num w90 pr30">
                            	<em class="value"><s:property value="#vo.bid_profit"/></em>%
                                <input type="hidden" id="profit" name="name" value=<s:property value="#vo.bid_profit"/>>
                            </span>                            
                            <span class="ui-list-field fleft num w130 pr30">
                            	<em class="value"><s:property value="#vo.bid_money"/></em>元
                            </span>
                            <span class="ui-list-field fleft num w70 pr30">
                                <em class="value"> <s:property value="#vo.bid_deadline"/></em>个月
                            </span>
                           <!-- <span class="ui-list-field fleft num w70 pr30">
                            	<em class="value"> <s:property value="#vo.user_remark"/></em>级
                            </span>
                             --> 
                            <span class="ui-list-field fleft w110">
                            	<strong class="ui-progressbar-mid ui-progressbar-mid-100">
                                	<div class="outer">
                                    	<div class="water_container js_container">
                                            <img src="../images/wave_bac.png" width="37" height="37" />
                                        </div>
                                        <div class="wave_cont">
                                            <img src="../images/wave.gif" class="js_water_pic" />
                                        </div>
                                		<em class="js_rate"><s:property value="#vo.bid_rate"/></em><span class="pos">%</span>
                                    </div>
                                </strong>
                            </span>                            
                            <span class="ui-list-field fleft">
                            
                                    <s:if test="%{#vo.bid_state=='未满标'}">

                                            
                                             <a href="/ZhongCaiBao/bidinfo/findById.action?id=${vo.id}" class="provide1"><img src="../images/provide1.png" /></a>

                                    </s:if>
                                    
                                      <s:if test="%{#vo.bid_state=='还款中'}">

                                           
                                             <a href="/ZhongCaiBao/bidinfo/findById.action?id=${vo.id}" class="provide1"><img src="../images/provide2.png" /></a>

                                    </s:if>
                                    
                                      <s:if test="%{#vo.bid_state=='已满标'}">

                                          
                                             <a href="/ZhongCaiBao/bidinfo/findById.action?id=${vo.id}" class="provide1"><img src="../images/provide3.png" /></a>

                                    </s:if>                              
                            </span> 
                            </s:iterator>
                        </li>                        
                        <li class="ui-list-more">
                        	<a class="darkgray" href="/ZhongCaiBao/bidinfouser/findAllBidinfo.action?currentPage=1">查看更多交易列表>></a>
                        </li>
                    </ul>
                    
                </div>
            </div>
        <!--交易列表-->   
        <!-- 资讯动态 -->
        <div class="mod-news">
            <h1><span>资讯中心</span><a href="javascript:;" class="cur" title="最新动态">最新动态</a>｜<a href="javascript:;" title="媒体报道">媒体报道</a>｜<a href="javascript:;" title="还款公告">还款公告</a></h1>
            <div class="face-wrap">
                <!--hot info-->
                
              <div class="fl">
                  <div id="focus">
                      <ul>
                        <li class="pr">
                        	<a href="/ZhongCaiBao/newsinfo/findOneById.action?id=5" target="_blank" class="ggao_title">众财宝互联网金融平台正式上线...</a>
                        	<a href="/ZhongCaiBao/newsinfo/findOneById.action?id=5" target="_blank">
                        	<img class="scrollLoading" src="../images/3.jpeg"></a>
                        </li>
                        <li class="pr">
                        	<a href="/ZhongCaiBao/newsinfo/findOneById.action?id=7" target="_blank" class="ggao_title">全球最大P2P网贷公司Lending Club...</a><a href="/ZhongCaiBao/newsinfo/findOneById.action?id=7" target="_blank"><img class="scrollLoading" src="../images/1.jpeg"></a></li>
                        <li class="pr"><a href="/ZhongCaiBao/newsinfo/findOneById.action?id=6" target="_blank" class="ggao_title">万达宣布战略投资快钱...</a><a href="/ZhongCaiBao/newsinfo/findOneById.action?id=6" target="_blank"><img class="scrollLoading" src="../images/2.jpeg"></a></li>                        
                        <li class="pr"><a href="/ZhongCaiBao/newsinfo/findOneById.action?id=8" target="_blank" class="ggao_title">中产家庭年入50万元，理财投资...</a><a href="/ZhongCaiBao/newsinfo/findOneById.action?id=8" target="_blank"><img class="scrollLoading" src="../images/4.jpeg"></a></li>
                      </ul>
                  <div class="btnBg"></div><div class="btn"><span class="on"> </span><span class=""> </span><span> </span><span class=""> </span></div></div>
              </div>
                <!--end-->
            </div>

            <div id="new-list">
            <!-- 最新动态 -->
            <ul class="news-list">
              <s:iterator value="firstdonglist" var="vo">
                    <li class="news-list-item">
                      <p class="decoration"></p>
                        <s:a class="text-big rrd-dimgray" target="_blank" href="/ZhongCaiBao/newsinfo/findOneById.action?id=%{#vo.id}"><s:property value="#vo.title"/></s:a><div class="time"><span><s:date name="#vo.time" format="yyyy-MM-dd" /></span></div>
                    </li>
              </s:iterator>
            </ul>
            <!-- 媒体报道 -->
            <ul class="news-list" style="display:none;">
              <s:iterator value="firstmeilist" var="vo">
                    <li class="news-list-item">
                      <p class="decoration"></p>
                      <s:a cssClass="text-big rrd-dimgray" href="/ZhongCaiBao/newsinfo/findOneById.action?id=%{#vo.id}" target="_blank"><s:property value="#vo.title"/></s:a><div class="time"><span><s:date name="#vo.time" format="yyyy-MM-dd" /></span></div>

                    </li>
              </s:iterator>
            </ul>
            <!-- 还款公告 -->
            <ul class="news-list" style="display:none;">
              <s:iterator value="firsthuanlist" var="vo">
                    <li class="news-list-item">
                      <p class="decoration"></p>
                        <s:a class="text-big rrd-dimgray" target="_blank" href="/ZhongCaiBao/newsinfo/findOneById.action?id=%{#vo.id}"><s:property value="#vo.title"/></s:a><div class="time"><span><s:date name="#vo.time" format="yyyy-MM-dd" /></span></div>
                    </li>
              </s:iterator>
            </ul>
            </div>
        </div>     
  
    </div>     
    
<!--footer start-->
    <%@include file="../pub/pub_footer.jsp" %> 
<!--footer end-->
</div>
<script>
$(function(){
	$(".login_list li").eq(0).click(function(){
		$(this).addClass('cur').siblings().removeClass('cur');
		$(".login_list li").siblings('.login_sanjiao2').removeClass('login_sanjiao2').addClass('login_sanjiao1');
		$(".login_main").find('.login_bg1').eq(0).css("display","block");
		$(".login_main").find('.login_bg1').eq(1).css("display","none");
	})
	$(".login_list li").eq(1).click(function(){
		$(this).addClass('cur').siblings().removeClass('cur');
		$(".login_list li").siblings('.login_sanjiao1').removeClass('login_sanjiao1').addClass('login_sanjiao2');
		$(".login_main").find('.login_bg1').eq(1).css("display","block");
		$(".login_main").find('.login_bg1').eq(0).css("display","none");
	})
})
</script>
<script>
//进度动态效果 
function getClass(obj,sClass){
        if(obj.getElementsByClassName){
          return obj.getElementsByClassName(sClass);
        }
        var arr=[];
        var re=new RegExp('\\b'+sClass+'\\b');
        var all=obj.getElementsByTagName('*');
        for(var i=0;i<all.length;i++){
          if(re.test(all[i].className)){
            arr.push(all[i]);
          }
        }
        return arr;
      }
    var oParent=document.getElementById('js_water_box');
    //var oCont=getClass(oParent,'js_container');
    var oWater=getClass(oParent,'js_water_pic');
    var parsent=getClass(oParent,'js_rate');
    //alert(parsent[0].innerHTML);
    for(var i=0;i<oWater.length;i++){
        //alert(-(37*parseInt(parsent[i].innerHTML)));
        oWater[i].style.bottom=-(37*(1-parsent[i].innerHTML/100))+'px';
        }	
	//倒计时 
        var oDiv=document.getElementById('timer');        
        clearInterval(timer);
        time();
        timer = setInterval(time,1000);
</script>
</body>
</html>

