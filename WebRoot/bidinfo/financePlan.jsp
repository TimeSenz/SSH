<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="dao.Userinfo" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
Userinfo user=(Userinfo)session.getAttribute("userinfo");
String loginflag="0";
if(loginflag!=null){
    loginflag=(String)session.getAttribute("loginflag");
}

%>

<!doctype html>
<html>
<head>
<meta http-equiv="content-type" content="text/html" charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>众财宝-您的贴心理财专！网络投资平台！网络贷款平台！</title>
<meta name="keywords" content="众财宝|理财|投资|贷款|P2P贷款|小额投资|金融投资|如何理财投资">
<meta name="description" content="众财宝(www.zhongcaibao.net)是一家从事P2P信贷、资产管理、项目投资、经贸咨询、技术推广、企业管理咨询、房地产信息咨询的专业机构，为中小企业提供融资新渠道，更为个人提供创新型投资理财服务。">
<link type="text/css" rel="stylesheet" href="../css/common.css">
<link type="text/css" rel="stylesheet" href="../css/bor_details.css">
<link rel="Shortcut Icon" href="../images/zcb-icon.ico">
<script type="text/javascript" language="javascript" src="../js/png.js"></script>
<!--[if IE 6]>
<script src="js/png.js" type="text/javascript"></script>
<script type="text/javascript">
   EvPNG.fix('img,.top-container-left a,.icons a,.ui-nav-dropdown span'); 
</script>
<![endif]-->
<script src="../js/jquery-1.6.4.min.js"></script>
<script src="../js/tabMenu.js"></script>
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
    <table>
  
  <tr>
 
 <td><s:property value="bidinfo.bidtype"/></td>
  <td><s:property value="bidinfo.reason"/></td>
  
    <s:if test="%{bidinfo.repaytype=='月返息'}">
  
     <td>月返息：<s:property value="  bidinfo.number*bidinfo.profit/12/100"/></td>
  </s:if>
   <s:if test="%{bidinfo.repaytype=='等额本息'}">
  
     <td>等额本息：</td>
  </s:if>
  
  </tr>

         
  <tr>
  <td>标的总额</td>
  <td>年利率</td>
  <td>还款期限</td>
  <td>最小投资金额</td>
  <td>剩余金额</td>
  </tr>
   <tr>
   <td><s:property value="financeplan.number"/></td> 
   <td><s:property value="financeplan.profit"/></td> 
   <td><s:property value="financeplan.deadline"/></td> 
   <td><s:property value="100"/></td> 
   <td><s:property value="financeplan.money"/></td> 
   <s:property value="financeplan.state"/>
   </tr>	
    
   <tr>
     <s:if test="%{bidinfo.state=='未满标'}">
   <td> <input type="text" name="money" id="money"/> </td>
   <td><input type="submit" value="购买"/></td>
   
      </s:if>
       <s:if test="%{bidinfo.state=='已满标'}">
 
   <td>已满标</td>
   
      </s:if>
       <s:if test="%{bidinfo.state=='还款中'}">
 
   <td>还款中</td>
   
      </s:if>
   <td>  <a href="javascript:history.back(-1)">返回上一页</a></td>
   </tr>

   
   </table>
  <body>
   <br/>
   <br/>
   保障方式：<s:property value="financeplan.insurance"/><br/>
   计划名称：<s:property value="financeplan.planname"/><br/>
   锁定期：<s:property value="financeplan.lockup"/><br/>
   开放日期：<s:property value="financeplan.opening"/><br/>
   锁定结束日期：<s:property value="financeplan.lockend"/><br/>
   单笔额度上限：<s:property value="financeplan.spent"/><br/>
  收益方式：<s:property value="financeplan.repaytype"/><br/>
  计划介绍：<s:property value="financeplan.planinfo"/><br/>
  加入条件：<s:property value="financeplan.terms"/><br/>
<div class="pg-container">
<!--头部-->
  <%@include file="../pub/pub_top.jsp" %> 
<!--头部end-->
<!--main开始-->
    <div class="main_box">
        <div class="w1000">
            <p class="title"><span class="text-big">首页</span> 〉 投资散标列表 〉 借款详情</p>
            <a href="" class="fright back">返回投资散标列表>></a>          
            <div class="details_con clear">
                <div class="top"><span class="circle">信</span><em>投资创业</em><a href="" class="userName">用户名</a></div>
                <div class="fleft show_tz">
                    <table>
                        <tr class="cap"><td>标的总额<span>（元）</span></td><td>年利率</td><td>还款期限<span>（月）</span></td><td class="width_big">最小投资金额<span>（元）</span></td><td>剩余金额<span>（元）</span></td></tr>
                        <tr class="data"><td>50,000</td><td class="spe">13%</td><td class="spe">12</td><td class="spe">100</td><td class="width_big">40,000<span>(400份)</span></td></tr>
                    </table>                                                          
                </div>
                <img src="../images/jd.jpg" class="img" /><strong>18%</strong>
                <div class="fright time">剩余时间5天15小时58分</div> 
                <ul>
                    <li>保障方式 ：本金+利息</li>
                    <li>还款方式 ：按月付息</li>
                    <li>月返息 ： 541.67（元）<a class="fright assign">借款协议（范本）</a></li>
                </ul>

                <form> 
                    <div class="loan_des"><span>账户余额 0.00元</span><a href="/ZhongCaiBai/uer/cz.jsp" class="fright">充值</a></div>               
                    <input type="text" placeholder="输入金额需为100元的倍数" class="tz_num">
                    <input type="submit" value="立即投标" class="loan_btn">
                </form> 
            </div>
           
            <div class="info">
                <div class="info_nav_con">
                    <a href="javascript:;" class="info_nav fleft bit">标的详情</a><a href="javascript:;" class="info_nav fleft">投标记录</a>
                </div>
                <div class="info_main_con">
                    <div class="info_main1" style="display:block;">
                        <div class="bidInfo">
                        	<table>
								<tr><th width="15%">保障方式</th><td>100%本息保障计划</td></tr>
								<tr><th>计划名称</th><td>ZN141007期</td></tr>
								<tr><th>锁定期</th><td>3个月</td></tr>
								<tr><th>开放日期</th><td>2014-10-7 至 2014-10-10</td></tr>
								<tr><th>锁定结束日期</th><td>暂末锁定</td></tr>
								<tr><th>单笔额度上限</th><td>30,000元</td></tr>
								<tr><th>收益方式</th><td>利息复投：每月借款人所还利息用来重复投资<br>利息返还：每月借款人所还利息直接转到账户</td></tr>
								<tr><th>计划介绍</th><td>整存宝是以投资爱钱进平台现有零钱通项目为基础的，稳健、安全、便捷且透明度高的优选投资计划。投资所产生的收益可以选择自动提取或随每月回款的本金部分用于再投资。锁定期结束后，可以自由选择退出计划。</td></tr>
								<tr><th>加入条件</th><td>加入金额1000元起，以1000元的倍数递增</td></tr>
								<tr><th>协议文本</th><td><a href="">《整存宝协议》</a></td></tr>
                        	</table>
                        </div>
                    </div>
                    <div class="info_main2" style="display:none;"> 
                        <div class="records">
                            <table id="table_test">
                                <tr class="fwhite title"><th width="17%" class="round_angle_l">序号</td><th width="25%">理财人</td><th width="23%">投资金额</td><th class="round_angle_r">投资时间</td></tr>
                                <tr class="dark"><td>1</td><td>aaa</td><td>10,000</td><td>2014-10-8</td></tr>
                                <tr><td>2</td><td>aaa</td><td>10,000</td><td>2014-10-8</td></tr>
                                <tr class="dark"><td>3</td><td>aaa</td><td>10,000</td><td>2014-10-8</td></tr>
                                <tr><td>4</td><td>aaa</td><td>10,000</td><td>2014-10-8</td></tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript"> 
        $(document).ready(function(){ 
        odd= {"background":"#f1f1f1","color":"#000"};//奇数样式 
        even={"background":"#fff","color":"#000"};//偶数样式 
        odd_even("#table_test",odd,even); 
        }); 
        function odd_even(id,odd,even){ 
        $(id).find("tr").each(function(index,element){ 
        if(index%2==1) 
        $(this).css(odd); 
        else 
        $(this).css(even); 
        }); 
        } 
        </script> 
<!--main结束-->
<!--footer start-->
    <%@include file="../pub/pub_footer.jsp" %> 
<!--footer end-->
  </body>
</html>
