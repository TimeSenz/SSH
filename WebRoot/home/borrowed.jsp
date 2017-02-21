<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="dao.Userinfo" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>我要借款产品介绍</title>
    <meta http-equiv="content-type" content="text/html" charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link type="text/css" rel="stylesheet" href="css/index.css">
    <link type="text/css" rel="stylesheet" href="css/common.css">
    <link type="text/css" rel="stylesheet" href="css/borrow.css">
    <link rel="Shortcut Icon" href="../images/zcb-icon.ico">
    <script src="js/jquery-1.6.4.min.js"></script>
  </head>
  
  <body>
<div class="pg-container">
<!--头部-->
<%@include file="../pub/pub_top.jsp" %>
<!--头部end-->
<!--main 开始-->
	<div class="main_box">
        <div class="w1000">
        <!--顶部标题-->
        	<p class="top_title"><span><a href="/ZhongCaiBao">首页</a></span>&nbsp;&gt;&nbsp;我要借款</p>
        <!--申请介绍-->
            <div class="intro_box">
            	<div class="fleft intro house">
                	<img src="images/borrow_house.jpg" />
                    <div class="des">
                    	<h3>汇房贷</h3>
                        <p>为有资金需求的借款人提供房产抵押的便捷咨询服务，获得资金。房产便捷融资，成就辉煌事业，享受幸福人生！最高可达抵押物（评估价值）的70%，房产一抵、二抵均可，抵押权证（他项权证）办理完当天到账。汇房贷是你值得信赖的房屋抵押借款服务平台。</p>                        
                    </div>
                    <a href="/ZhongCaiBao/userinfo/loans.action?loan=hfd" class="req_btn">在线申请</a>
                </div>
                <div class="fleft intro car">
                	<img src="images/borrow_car.jpg" />
                    <div class="des">
                    <h3>汇车贷</h3>
                    <p>为有资金需求的借款人提供相关信用咨询、车辆评估、抵押借款方案、协议管理、回款管理等多方面的服务，借款人以自有车辆为抵押物通过宜车贷服务从出借人处获得出借资金。客户资金资金最快当天到账，满足短期资金需求；GPS服务无需押车，办理抵押手续后仍可自由行驶；押车服务办理手续简便，收费低。</p>
                    </div>
                    <a href="/ZhongCaiBao/userinfo/loans.action?loan=hcd" class="req_btn">在线申请</a>
                </div>
                <div class="fleft intro">
                	<img src="images/borrow_credit.jpg" />
                    <div class="des">
                    <h3>汇信贷</h3>
                    <p>众财宝推出P2P咨询服务平台，为有资金需求的借款人和有理财需求的出借人搭建了一个轻松、便捷、安全、透明的网络互动平台。个人借款人在网上发布借款请求，通过信用评估后，获得出借人的信用借款资金支持，用以改变自己的生活，实现信用的价值；而个人出借人获得经济收益和精神回报双重收获。专为城市白领人群打造，五大优势，轻松借钱。</p>
                    </div>
                    <a href="/ZhongCaiBao/userinfo/loans.action?loan=hxd" class="req_btn">在线申请</a>
                </div>            
            </div>
        <!--我要借款-->
        	<div class="borrow_box">
            	<p class="title">我要借款</p>
                <div class="step"><img src="images/step.jpg"></div>
            </div>
        <!--借款说明-->
        	<div class="borrow_box next">
            	<p class="title">借款说明</p>
                <div>
                <span>申请条件：</span>
                <ul>
                    <li>1、中国（不含港澳台）公民,年龄在22-55周岁之间；</li>
                    <li>2、汇车贷借款人须满足：拥有对车辆的所有权；在业务开展城市长期居住和工作；车龄10年以内。</li>
                    <li>3、汇房贷借款人须满足：本人名下大产权房或商业产权；二次抵押，房屋的抵押第一权利人必须是银行；借款人需要有一套或一套以上名下所有权住房（至少一套是本市所有权房）。</li>
                    <li>4、汇信贷借款人须满足：在现工作单位连续工作满6个月；信用记录近6个月，无重大违约记录；借款人在业务开展城市长期居住和工作；月工资收入3000元人民币以上；实际经营1年以上（适用汇业贷）。</li>
                </ul>
                <table>
                    <tr><th>借款额度：</th><td>信贷30万以内，抵押贷根据抵押物金额估价计算</td></tr>
                    <tr><th>借款利率：</th><td>最低1%</td></tr>
                    <tr><th>借款期限：</th><td>1-18个月</td></tr>
                    <tr><th>审核时间：</th><td>1-5个工作日</td></tr>
                    <tr><th>还款方式：</th><td>等额本息/到期还本付息（抵押贷专属）</td></tr>
                    <tr><th>平台管理费：</th><td>0.5%</td></tr>
                </table>
                <img src="images/bor_des.jpg">
                </div>
            </div>
        </div>
    </div>
<!--main 结束-->
<!--footer start-->
 <%@include file="../pub/pub_footer.jsp" %>   
<!--footer end-->
</div>
</body>
</html>