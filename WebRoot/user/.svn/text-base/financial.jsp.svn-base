<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="dao.Userinfo" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
Userinfo user=(Userinfo)session.getAttribute("userinfo");
String loginflag="0";
if((String)session.getAttribute("loginflag")!=null){
 loginflag=(String)session.getAttribute("loginflag");
}
%>

<!doctype html>
<html>
<head>
<meta http-equiv="content-type" content="text/html" charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>myZCB</title>
    <link rel="Shortcut Icon" href="../images/zcb-icon.ico">
    <link type="text/css" rel="stylesheet" href="../css/fund.css" /> 
  <link type="text/css" rel="stylesheet" href="../css/common.css" /> 
  <script src="../js/jquery-1.6.4.min.js"></script> 
  <script src="../js/fund.js"></script>
  <script type="text/javascript" language="javascript" src="../js/png.js"></script>
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
  </head>
  
  <body>
  <div class="pg-container">
<!--头部-->
	<%@include file="../pub/pub_top.jsp" %> 
<!--头部end-->
<div class="fund_main"> 
    <h3 class="fund_h3"> <span>首页 〉</span>我的众财宝 </h3> 
    <div class="fund_main_w fn_clear">
<!--左侧栏-->
	<div class="left"> 
      <div class="top"> 
       <ul> 
        <li class="one"><a href="/ZhongCaiBao/user/myZCB.jsp"><span><strong>我的众财宝</strong></span></a></li> 
        <li class="two"><a href="/ZhongCaiBao/user/assetManagement.jsp"><span><strong>资金管理</strong></span></a> 
         <ol style="display:none"> 
          <li class="cur">交易记录</li> 
          <li>充值</li> 
          <li>提现</li> 
         </ol> </li> 
        <li class="three"><a href="/ZhongCaiBao/user/myManage.jsp"><span><strong>我的理财</strong></span></a>
          <ol style="display:none"> 
          <li class="cur"><a href="/ZhongCaiBao/user/myManage.jsp">我的债权<i>（协议）</i></a></li> 
          <li><a href="/ZhongCaiBao/user/myJxlc.jsp">精选理财</a></li> 
          <li><a href="/ZhongCaiBao/user/myTzsb.jsp">投资散标</a></li>
          <li><a href="/ZhongCaiBao/user/myRzzl.jsp">融资租赁</a></li>
          <li><a href="/ZhongCaiBao/user/myZqzr.jsp">债权转让</a></li>
          <li><a href="/ZhongCaiBao/user/myLctj.jsp">理财统计</a></li>
         </ol> 
        </li> 
        <li class="four"><a href="/ZhongCaiBao/user/myBorrow.jsp"><span><strong>我的借款</strong></span></a></li> 
        <li class="five"><a href="/ZhongCaiBao/userinfo/personCenter.action?id=<%=user.getUserid() %>"><span><strong>账户管理</strong></a></span>
        <ol style="display:none;"> 
          <li class="cur">安全信息</li> 
          <li >基础信息</li>
         </ol> 
         </li> 
        <li class="six"><a href="/ZhongCaiBao/user/financial.jsp"><span class="cur"><strong class="cur1">理财劵</strong></span></a></li> 
       </ul> 
    </div>  
      <img src="../images/img.jpg" alt="" /> 
     </div>
     <!--理财劵start-->
      <div class="fund_main6 right">
         <div class="top">
           <h3>邀请返券</h3>
           <dl>
             <dt>
               <ul>
                 <li>用投资劵<br><span class="fa9028"><i>1</i>张</span></li>
                 <li>可用投资券总额<br><span class="fa9028"><i>50</i>元</span></li>
                 <li>已用投资券总额<br><span><i>0</i>元</span></li>
                 <li>过期投资券<br><span><i>0</i>元</span></li>
               </ul>
             </dt>
             <dd>
               <table>
               <col style="width:65px;">
               <col style="width:150px;">
               <col style="width:160px;">
               <col style="width:167px;">
                 <tbody>
                   <tr style="margin-bottom:20px;">
                     <th>方式一</th>
                     <th style="font-size:12px;">通过社交网站邀请好友</th>
                     <th><a href=""><img src="../images/weixin1.jpg" alt=""></a><a href=""><img src="../images/weibo.jpg" alt=""></a><a href=""><img src="../images/qq.jpg" alt=""></a><a href=""><img src="../images/renren.jpg" alt=""></a></th>
                     <th style="font-size:10px;color:#7c7c7c">通过社交网站每成功邀请一位好友投资您可获<span><i>50</i>元</span>投资券，上不封顶！</th>
                   </tr>
                   <tr>
                     <th>方式二</th>
                     <th style="font-size:12px;">复制邀请链接发给好友</th>
                     <th><a href="" class="buttom">复制链接</a></th>
                     <th style="font-size:10px;color:#7c7c7c">复制链接发给好友,每成功邀请一位好友投资,您可获<span><i>50</i>元</span>投资券，上不封顶！</th>
                   </tr>
                 </tbody>
               </table>
             </dd>
           </dl>
         </div>
         <div class="center">
             <ul class="center_li" style="position: relative;bottom: -1px;z-index: 999999;">
               <li class="cur">邀请列表</li>
               <li>我的理财劵</li>

             </ul>
              <div class="main" id="main">
                <div class="main1">
                    <div class="fund_main2" style="padding:25px 15px 0 15px;"> 
                     <table cellspacing="0"> 
                      <colgroup>
                       <col style="width:100px;"> 
                       <col style="width:100px;"> 
                       <col style="width:100px;"> 
                       <col style="width:100px;"> 
                       <col style="width:100px;">  
                      </colgroup>
                      <thead> 
                       <tr> 
                        <th>邀请用户</th> 
                        <th>用户注册时间</th> 
                        <th>用户状态</th> 
                        <th>邀请奖励</th> 
                        <th>是否生效</th> 
                       </tr> 
                      </thead> 
                      <tbody> 
                       <tr> 
                        <td>20142</td> 
                        <td>2014-12-12</td> 
                        <td>已认证</td> 
                        <td>52.00元</td> 
                        <td>是</td> 
                       </tr> 
                       <tr style="background: #fafafa"> 
                        <td>20142</td> 
                        <td>2014-12-12</td> 
                        <td>已认证</td> 
                        <td>52.00元</td> 
                        <td>是</td> 
                       </tr> 

                      </tbody> 
                     </table>  
                    </div>
                </div>
                <div class="main1" style="display:none">
                    <div class="fund_main2"> 
                     <ol class="fund_ol"> 
                      <li class="center_a">理财劵状态 <a href="javaScript:;" class="cur">全部</a> <a href="javaScript:;">可用</a><a href="javaScript:;">已用</a><a href="javaScript:;">已过期</a></li> 
                     </ol> 
                     <table cellspacing="0"> 
                      <colgroup>
                       <col > 
                       <col style="width:110px;"> 
                       <col style="width:110px;"> 
                       <col style="width:110px;"> 
                       <col style="width:110px;"> 
                       <col style="width:110px;"> 
                      </colgroup>
                      <thead> 
                       <tr> 
                        <th><span>卡号</span></th> 
                        <th>原始投资金额</th> 
                        <th>年利率</th> 
                        <th>待收本息</th> 
                        <th>月收本息</th> 
                        <th>期数</th> 
                       </tr> 
                      </thead> 
                      <tbody> 
                       <tr> 
                        <td><span>20142</span></td> 
                        <td>1000.00(5份)</td> 
                        <td>12% </td> 
                        <td>52.00</td> 
                        <td>4.40</td> 
                        <td>12/12 </td> 
                       </tr> 
                       <tr style="background: #fafafa"> 
                        <td><span>20142</span></td> 
                        <td>1000.00(5份)</td> 
                        <td>12% </td> 
                        <td>52.00</td> 
                        <td>4.40</td> 
                        <td>12/12 </td> 
                       </tr> 
                      </tbody> 
                     </table> 
                   
                    </div>
                </div>
              </div>
           </div>
       </div>
     <!--理财劵end--> 
     </div>
</div> 
  <!--footer start-->
    <%@include file="../pub/pub_footer.jsp" %> 
<!--footer end-->
</div>   
  </body>
</html>

