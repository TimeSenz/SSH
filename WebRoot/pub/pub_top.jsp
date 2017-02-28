<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
    <script type="text/javascript" language="javascript" src="js/pub.js"></script>    
<script type="text/javascript" language="javascript" src="../js/pub.js"></script>
<div class="opict" style="display:none;"></div>
<!--头部-->
	<div id="header" class="ui-header">
    <!--静态显示tell-->
    	<div class="ui-header-top">
        	<div class="container top-container">
            	<div class="top-container-left fleft"><span class="hotline-icon fleft"></span><span class="hotline">热线电话：400-007-1378</span>
                <div class="media"><a href="http://wpa.qq.com/msgrd?v=3&amp;uin=954430024&amp;site=qq&amp;menu=yes" class="qq-icon" target="_blank"></a><a href="javascript:;" class="weixin-icon"></a><a href="http://weibo.com/zhongtouguohui" class="weibo-icon" target="_blank"></a></div></div>
                <div class="top-container-right fright"><a href="/ZhongCaiBao/app/ZhongCaiBao.apk">下载众财宝手机安卓版APP</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="/ZhongCaiBao">首页</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="/ZhongCaiBao/home/home.action?home=questions">帮助</a>&nbsp;&nbsp;|&nbsp;&nbsp;
                  <s:if test="%{#session.userinfo==null}">
                    <a href="/ZhongCaiBao/user/login.jsp">我的众财宝</a> 
                  </s:if>
                  <s:else>                      
                    <s:a href="/ZhongCaiBao/userinfo/user.action?user=myZCB">我的众财宝</s:a>
                  </s:else>
                </div>
            </div>
        </div>
        <div class="ui-header-main">
            <div class="container main-container">
                <div class="ui-header-logo grid" style="margin-right: 0px;">
                    <a href="/ZhongCaiBao"></a><span></span>
                </div>
                <div class="ui-header-nav grid">
                    <ul class="ui-nav">
                        <li class="ui-nav-item ui-nav-item-x">
                        <a class="ui-nav-item-link rrd-dimgray" href="/ZhongCaiBao/home/home.action?home=lenders"><span>我要理财</span><span class="arrow-down"> </span></a>
                            <ul class="ui-nav-dropdown ui-nav-dropdown-invest" style="display:none;">
                                <li class="ui-nav-dropdown-angle"><span> </span></li>
                                <li class="ui-nav-dropdown-item"><a class="rrd-dimgray" href="/ZhongCaiBao/bidinfouser/findAllBidinfo.action?currentPage=1">投资散标</a></li>
                                <li class="ui-nav-dropdown-item"><a class="rrd-dimgray" href="/ZhongCaiBao/bidinfo/showAllFinance.action">精选理财</a></li>
                                <!-- <li class="ui-nav-dropdown-item"><a class="rrd-dimgray" href="/ZhongCaiBao/bidinfo/rzzp.jsp">融资租赁</a></li>
                                <li class="ui-nav-dropdown-item"><a class="rrd-dimgray" href="/ZhongCaiBao/bidinfo/zqzr.jsp">债权转让</a></li> -->
                            </ul>
                        </li>
                        <li class="ui-nav-item ui-nav-item-x">
                        <a class="ui-nav-item-link rrd-dimgray" href="/ZhongCaiBao/home/home.action?home=borrowed"><span>我要借款</span><span class="arrow-down"> </span></a>
                            <ul class="ui-nav-dropdown ui-nav-dropdown-invest" style="display:none;">
                                <li class="ui-nav-dropdown-angle"><span> </span></li>
                                <li class="ui-nav-dropdown-item"><a href="/ZhongCaiBao/userinfo/loans.action?loan=hcd" class="rrd-dimgray">汇车贷</a></li>
                                 <li class="ui-nav-dropdown-item"><a href="/ZhongCaiBao/userinfo/loans.action?loan=hfd" class="rrd-dimgray">汇房贷</a></li>
                                 <li class="ui-nav-dropdown-item"><a href="/ZhongCaiBao/userinfo/loans.action?loan=hxd" class="rrd-dimgray">汇信贷</a></li>
                            </ul>
                        </li>
                        <li class="ui-nav-item"><a class="ui-nav-item-link rrd-dimgray" href="/ZhongCaiBao/home/home.action?home=New"><span>新手指引</span></a></li>
                        <li class="ui-nav-item ui-nav-item-x"><a class="ui-nav-item-link rrd-dimgray" href="/ZhongCaiBao/about/about.action?flag=com"><span>关于我们</span><span class="arrow-down"> </span></a>
                            <ul class="ui-nav-dropdown ui-nav-dropdown-invest" style="display:none;">
                                <li class="ui-nav-dropdown-angle"><span> </span></li>
                                <li class="ui-nav-dropdown-item"><a href="/ZhongCaiBao/about/about.action?flag=com" class="rrd-dimgray">公司简介</a></li>
                                <li class="ui-nav-dropdown-item"><a href="/ZhongCaiBao/newsinfo/findByHuan.action?currentPage=1" class="rrd-dimgray">还款公告</a></li>
                                <li class="ui-nav-dropdown-item"><a href="/ZhongCaiBao/newsinfo/findByGong.action?currentPage=1" class="rrd-dimgray">新闻公告</a></li>
                                <li class="ui-nav-dropdown-item"><a href="/ZhongCaiBao/newsinfo/findByDong.action?currentPage=1" class="rrd-dimgray">最新动态</a></li>
                                <li class="ui-nav-dropdown-item"><a href="/ZhongCaiBao/newsinfo/findByMei.action?currentPage=1" class="rrd-dimgray">媒体报道</a></li>
                                <!-- <li class="ui-nav-dropdown-item"><a href="" class="rrd-dimgray">业绩报告</a></li>
                                <li class="ui-nav-dropdown-item"><a href="" class="rrd-dimgray">监管报告</a></li> -->
                                <li class="ui-nav-dropdown-item"><a href="/ZhongCaiBao/about/about.action?flag=cooperate" class="rrd-dimgray">合作伙伴</a></li>                                
                                <li class="ui-nav-dropdown-item"><a href="/ZhongCaiBao/home/home.action?home=questions" class="rrd-dimgray">帮助中心</a></li>
                                <li class="ui-nav-dropdown-item"><a href="/ZhongCaiBao/about/about.action?flag=recruit" class="rrd-dimgray">招贤纳士</a></li>
                                <li class="ui-nav-dropdown-item"><a href="/ZhongCaiBao/about/about.action?flag=contact" class="rrd-dimgray">联系我们</a></li>
                                <!-- <li class="ui-nav-dropdown-item"><a href="/ZhongCaiBao/about/about.action?flag=structure" class="rrd-dimgray">集团架构</a></li>
                                <li class="ui-nav-dropdown-item"><a href="/ZhongCaiBao/about/about.action?flag=culture" class="rrd-dimgray">企业文化</a></li>
                                
                                <li class="ui-nav-dropdown-item"><a href="/ZhongCaiBao/about/about.action?flag=supports" class="rrd-dimgray">公司理念</a></li> -->
                               
                            </ul>
                        </li>
                    </ul>
                </div>
                <a href="/ZhongCaiBao/home/join.jsp" id="join"></a>
                <div class="ui-header-main-right grid">
                    <ul class="fn-right">
                    
    <s:if test="%{#session.userinfo==null}">
          <li class="ui-nav-item"><a class="ui-nav-item-link blue" href="/ZhongCaiBao/userinfo/user.action?user=register">注册</a></li>
                        <li class="ui-nav-item"><a class="ui-nav-item-link gray" href="/ZhongCaiBao/userinfo/user.action?user=login">登录</a></li>
          </s:if>
          <s:else>
            <ul class="ui-nav">
                        <li class="ui-nav-item ui-nav-item-x">
		                       	<s:a cssClass="ui-nav-item-link rrd-dimgray" href="/ZhongCaiBao/userinfo/user.action?user=myZCB">
			                       	<span>您好，<em><s:property value="#session.userinfo.nickname"/></em></span>
			                       	<span class="arrow-down"> </span>
		                       	</s:a>
		                            <ul class="ui-nav-dropdown ui-nav-dropdown-invest" style="display:none;">
		                                <li class="ui-nav-dropdown-angle"><span> </span></li>
		                                <!-- href="/ZhongCaiBao/userinfo/user.action?user=assetManagement"     href="/ZhongCaiBao/user/assetManagement.jsp"-->
		                                <li class="ui-nav-dropdown-item"><a class="rrd-dimgray" href="/ZhongCaiBao/userinfo/user.action?user=recharge">充值</a></li>
		                                <li class="ui-nav-dropdown-item"><a class="rrd-dimgray" href="/ZhongCaiBao/userinfo/user.action?user=withdraw">提现</a></li>
		
		                                <li class="ui-nav-dropdown-item"><a class="rrd-dimgray" href="/ZhongCaiBao/userinfo/personRecords.action?currentPage=1">资金管理</a></li>
		                                <li class="ui-nav-dropdown-item"><a class="rrd-dimgray" href="/ZhongCaiBao/userinfo/user.action?user=myManage&currentPage=1">我的理财</a></li>
		                                <li class="ui-nav-dropdown-item"><a class="rrd-dimgray"  href="/ZhongCaiBao/userinfo/user.action?user=myBorrow&currentPage=1">我的借款</a></li>
		                                <li class="ui-nav-dropdown-item"><a href="/ZhongCaiBao/userinfo/logout.action" class="rrd-dimgray">退出</a></li>
		                            </ul>
                        </li>
          </s:else>
                    </ul>
                </div>
        	</div>   
    	</div>
    </div>
<!--头部end-->