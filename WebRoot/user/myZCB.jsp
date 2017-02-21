<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
    <title>我的众财宝</title>
    <link type="text/css" rel="stylesheet" href="../css/fund.css" /> 
  <link type="text/css" rel="stylesheet" href="../css/common.css" /> 
  <link rel="Shortcut Icon" href="../images/zcb-icon.ico">
  <script src="../js/jquery-1.6.4.min.js"></script> 
  <script src="../js/fund.js"></script>
  <script type="text/javascript" language="javascript" src="../js/png.js"></script>
<!--[if IE 6]>
<script src="js/png.js" type="text/javascript"></script>
<script type="text/javascript">
   EvPNG.fix('img,.top-container-left a,.icons a,.ui-nav-dropdown span'); 
</script>
<![endif]-->
  </head>  
  <body>
  <div class="pg-container">
<!--头部-->
	<%@include file="../pub/pub_top.jsp" %> 
<!--头部end-->
<div class="fund_main"> 
        <p class="top_title"><span><a href="/ZhongCaiBao">首页</a></span>&nbsp;&gt;&nbsp;我的众财宝 </p> 
     
    <div class="fund_main_w fn_clear">
<!--左侧栏-->
	<div class="left"> 
    <div class="top"> 
       <ul> 
        <li class="one"><span class="cur"><strong class="cur1">我的众财宝</strong></span></li> 
        <li class="two"><a href="/ZhongCaiBao/userinfo/personRecords.action?currentPage=1"><span><strong>资金管理</strong></span></a> 
         <ol style="display:none"> 
          <li class="cur"><a href="/ZhongCaiBao/userinfo/personRecords.action?currentPage=1">交易记录</a></li> 
          <li><a href="/ZhongCaiBao/userinfo/user.action?user=recharge">充值</a></li> 
          <li><a href="/ZhongCaiBao/userinfo/user.action?user=withdraw">提现</a></li>  
         </ol> </li> 
        <li class="three"><a href="/ZhongCaiBao/userinfo/user.action?user=myManage"><span><strong>我的理财</strong></span></a>
          <ol style="display:none"> 
          <li class="cur"><a href="/ZhongCaiBao/userinfo/user.action?user=myManage&currentPage=1">我的债权<i>（协议）</i></a></li> 
          <li><a href="/ZhongCaiBao/userinfo/user.action?user=myJxlc&currentPage=1">精选理财</a></li> 
          <li><a href="/ZhongCaiBao/userinfo/user.action?user=myTzsb&currentPage=1">投资散标</a></li>
         </ol> 
        </li> 
        <li class="four"><a href="/ZhongCaiBao/userinfo/user.action?user=myBorrow"><span><strong>我的借款</strong></span></a></li> 
        <li class="five"><a href="/ZhongCaiBao/userinfo/personCenter.action?id=<s:property value="#session.userinfo.userid"/>"><span><strong>账户管理</strong></span></a>
         <ol style="display:none;"> 
          <li class="cur">安全信息</li> 
          <li >基础信息</li>
         </ol> 
         </li> 
       </ul> 
    </div> 
      <img src="../images/img.jpg" alt="" /> 
     </div>
     <!--我的众财宝start-->
     <div id="fund_main1"> 
      <div class="right"> 
       <div class="top"> 
        <div class="top_w"> 
         <dl> 
          <dt>
           <img src="../images/img1.jpg" alt="" />
          </dt> 
          <dd> 
           <h2><em><s:property value="#session.userinfo.nickname"/></em><span style="display: inline-block;vertical-align: middle;">，您好</span></h2> 
           <p>
              <span id="phone" style="display:none;"><s:property value="#session.userinfo.phone" /></span>
              <span id="auth" style="display:none;float:left;"><a><img src="../images/big_phone1.jpg" title="绑定手机，已绑定" /></a></span>
              <span id="noauth" style="display:none;float:left;"><a href="/ZhongCaiBao/userinfo/personCenter.action"><img src="../images/big_phone.jpg" title="绑定手机，未绑定" /></a></span>
              <span id="identify" style="display:none;"><s:property value="#session.userinfo.name" /></span>
              <span id="auth1" style="display:none;float:left;"><a><img src="../images/big_ren1.jpg" title="实名认证，已设置" /></a></span>
              <span id="noauth1" style="display:none;float:left;"><a href="/ZhongCaiBao/userinfo/personCenter.action"><img src="../images/big_ren.jpg" title="实名认证，未设置" /></a></span>
              <span id="txmm" style="display:none;"><s:property value="#session.userinfo.moneykey" /></span>
              <span id="auth2" style="display:none;float:left;"><a><img src="../images/anquan.jpg" title="提现密码，已设置" /></a></span>
              <span id="noauth2" style="display:none;float:left;"><a href="/ZhongCaiBao/userinfo/personCenter.action"><img src="../images/anquan1.jpg" title="提现密码，未设置" /></a></span>
           <p>安全等级：<span>中</span><a href="/ZhongCaiBao/userinfo/personCenter.action?id=<s:property value="#session.userinfo.userid"/>">（立即提升）</a></p> 
          </dd> 
         </dl> 
         <ul> 
          <li> <p><span>资产总额：<strong><i id="round1" class="width100white"><s:property value="#session.userinfo.zye"/></i>元</strong></span><a href="/ZhongCaiBao/userinfo/user.action?user=recharge" class="add">充值</a>账户余额：<strong style="font-size:26px;color:#d45757" class="amount"><i id="round" class="width100white" style="width:140px;"><s:property value="#session.userinfo.xjye"/></i>元</strong> </p> </li> 
          <li> <p><span>预期收益：<strong><i id="round2" class="width100white"><s:property value="#session.userinfo.yqsy"/></i>元</strong> </span>交易金额：<strong class="amount"><i id="round3" class="width100white" style="width:140px;"><s:property value="#session.userinfo.jyje"/></i>元</strong> </p> </li> 
         </ul> 
        </div> 
        <script>
        status("phone","auth","noauth");
        status("identify","auth1","noauth1");
        status1("txmm","auth2","noauth2");
var my_val=document.getElementById('round').innerHTML;
    a=Math.round(my_val*100)/100;
    document.getElementById("round").innerHTML=a
    var my_val=document.getElementById('round1').innerHTML;
    a=Math.round(my_val*100)/100;
    document.getElementById("round1").innerHTML=a
    var my_val=document.getElementById('round2').innerHTML;
    a=Math.round(my_val*100)/100;
    document.getElementById("round2").innerHTML=a
    var my_val=document.getElementById('round3').innerHTML;
    a=Math.round(my_val*100)/100;
    document.getElementById("round3").innerHTML=a
            </script>
        <div class="top_e"> 
         <p>温馨提示：<span>尽早完善您的真实手机号码、真实身份证号码和提现密码等内容，快速提高您的安全等级，最高程度的保障您的理财资金安全。</span></p> 
         <p style="padding: 5px 0 0 90px;"><span style="color:#D45757;">您的全部资金均由专业第三方机构托管，100%全程保障资金安全。</span></p>
        </div> 
       </div> 
       <div class="fund_main1"> 
        <h3>我的理财</h3> 
        <div class="fund_main1_w"> 
         <table cellspacing="0"> 
          <colgroup>
           <col /> 
           <col /> 
           <col /> 
           <col /> 
           <col /> 
           <col width="100px;" /> 
          </colgroup>
          <thead> 
           <tr> 
            <th>理财方式</th> 
            <th>账户资产</th> 
            <th>已赚金额</th> 
            <th>加权平均收益率</th> 
            <th>持有数量</th> 
            <th></th> 
           </tr> 
          </thead> 
          <tbody> 
      
           <tr> 
            <td>精选理财计划 </td> 
            <td><s:property value="#session.person_profit_choice.Finance_accounts"/></td> 
            <td><big><s:property value="#session.userinfo.choicePromoney"/></big></td> 
            <td><s:property value="#session.person_profit_choice.Avg_profit"/>%</td> 
            <td><s:property value="#session.person_profit_choice.Finance_accounts/100"/>份</td> 
            <td><a href="/ZhongCaiBao/userinfo/user.action?user=myJxlc&currentPage=1">详情</a></td> 
           </tr> 
           <tr> 
            <td>散标</td> 
            <td><s:property value="#session.person_profit_bulk.Finance_accounts"/></td> 
            <td><big><s:property value="#session.userinfo.bulkPromoney"/></big></td> 
            <td><s:property value="#session.person_profit_bulk.Avg_profit"/>%</td> 
            <td><s:property value="#session.person_profit_bulk.Finance_accounts/100"/>份</td> 
            <td><a href="/ZhongCaiBao/userinfo/user.action?user=myTzsb&currentPage=1">详情</a></td> 
           </tr> 
          </tbody> 
         </table> 
        </div> 
        <h3>借款账户</h3> 
        <div class="fund_main1_w" style="position: relative;"> 
         <table cellspacing="0"> 
          <colgroup>
           <col /> 
           <col /> 
           <col /> 
           <col /> 
           <col /> 
           <col width="150px;" /> 
          </colgroup>
          <thead> 
           <tr> 
            <th>借款标题</th> 
            <th>待还本金</th> 
            <th>待还利息</th> 
            <th>管理费</th> 
            <th>逾期费</th> 
            <th></th> 
           </tr> 
          </thead> 
          <tbody> 
          <tr> 
            <td></td> 
            <td></td> 
            <td>暂无数据</td> 
            <td></td> 
            <td></td> 
            <td></td> 
            
           </tr>
      
          </tbody> 
         </table> 
        </div> 
       </div> 
       <div class="fund_main1"> 
        <h4>项目推荐</h4> 
        <div class="fund_main1_w fund_main1_e"> 
         <table cellspacing="0"> 
          <colgroup>
           <col style="text-align:left" /> 
           <col /> 
           <col /> 
           <col /> 
           <col width="120px;" /> 
          </colgroup>
          <tbody> 
           <tr> 
            <td>轻松季盈 </td> 
            <td> 1,000起 </td> 
            <td><s:property value="allfinancelist[0].deadline"/>个月</td> 
            <td><s:property value="allfinancelist[0].profit"/>%</td> 
            <td><a href="/ZhongCaiBao/bidinfo/showOneFinance.action?id=<s:property value="allfinancelist[0].id"/>">详情</a></td> 
           </tr> 
           <tr> 
            <td>乐享六月 </td> 
            <td> 1,000起 </td> 
            <td><s:property value="allfinancelist[1].deadline"/>个月</td> 
            <td><s:property value="allfinancelist[1].profit"/>%</td> 
            <td><a href="/ZhongCaiBao/bidinfo/showOneFinance.action?id=<s:property value="allfinancelist[1].id"/>">详情</a></td> 
           </tr> 
           <tr> 
            <td>鎏金三季</td> 
            <td> 1,000起 </td> 
            <td><s:property value="allfinancelist[2].deadline"/>个月</td> 
            <td><s:property value="allfinancelist[2].profit"/>%</td> 
            <td><a href="/ZhongCaiBao/bidinfo/showOneFinance.action?id=<s:property value="allfinancelist[2].id"/>">详情</a></td> 
           </tr>
           <tr> 
            <td>国汇年丰</td> 
            <td> 1,000起 </td> 
            <td><s:property value="allfinancelist[3].deadline"/>个月</td> 
            <td><s:property value="allfinancelist[3].profit"/>%</td> 
            <td><a href="/ZhongCaiBao/bidinfo/showOneFinance.action?id=<s:property value="allfinancelist[3].id"/>">详情</a></td> 
           </tr>  
          </tbody> 
         </table> 
        </div> 
       </div> 
      </div> 
     </div> 
     <!--我的众财宝end--> 
     </div>
</div> 
  <!--footer start-->
    <%@include file="../pub/pub_footer.jsp" %> 
<!--footer end-->
</div>   
  </body>
</html>

