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
    <title>我的借款</title>
    <link rel="Shortcut Icon" href="../images/zcb-icon.ico">
    <link type="text/css" rel="stylesheet" href="../css/common.css" />
    <link type="text/css" rel="stylesheet" href="../css/fund.css" /> 
   
  <script src="../js/jquery-1.6.4.min.js"></script> 
  <script src="../js/fund.js"></script>
  <script type="text/javascript" language="javascript" src="../js/png.js"></script>
<script src="js/png.js" type="text/javascript"></script>
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
            <p class="top_title"><span><a href="/ZhongCaiBao">首页</a></span>&nbsp;&gt;&nbsp;我的借款</p> 
    <div class="fund_main_w fn_clear">
<!--左侧栏-->
	<div class="left"> 
      <div class="top"> 
       <ul> 
        <li class="one"><a href="/ZhongCaiBao/userinfo/user.action?user=myZCB"><span><strong>我的众财宝</strong></span></a></li> 
        <li class="two"><a href="/ZhongCaiBao/userinfo/personRecords.action?currentPage=1"><span><strong>资金管理</strong></span></a> 
         <ol style="display:none"> 
          <li class="cur"><a href="/ZhongCaiBao/userinfo/personRecords.action?currentPage=1">交易记录</a></li> 
          <li><a href="/ZhongCaiBao/userinfo/user.action?user=recharge">充值</a></li> 
          <li><a href="/ZhongCaiBao/userinfo/user.action?user=withdraw">提现</a></li>  
         </ol> </li> 
        <li class="three"><a href="/ZhongCaiBao/userinfo/user.action?user=myManage&currentPage=1"><span><strong>我的理财</strong></span></a>
          <ol style="display:none"> 
          <li class="cur"><a href="/ZhongCaiBao/userinfo/user.action?user=myManage&currentPage=1">我的债权<i>（协议）</i></a></li> 
          <li><a href="/ZhongCaiBao/userinfo/user.action?user=myJxlc&currentPage=1">精选理财</a></li> 
          <li><a href="/ZhongCaiBao/userinfo/user.action?user=myTzsb&currentPage=1">投资散标</a></li>
         </ol> 
        </li> 
        <li class="four"><a href="/ZhongCaiBao/userinfo/user.action?user=myBorrow"><span class="cur"><strong class="cur1">我的借款</strong></span></a></li> 
        <li class="five"><a href="/ZhongCaiBao/userinfo/personCenter.action?id=<s:property value="#session.userinfo.userid"/>"><span><strong>账户管理</strong></span></a>
         <ol style="display:none;"> 
          <li class="cur">安全信息</li> 
          <li >基础信息</li>
         </ol> 
         </li> 
<!--         <li class="six"><a href="/ZhongCaiBao/user/financial.jsp"><span><strong>理财劵</strong></span></a></li> 
        -->       </ul> 
    </div> 
      <img src="../images/img.jpg" alt="" /> 
     </div>
     <!--我的借款start-->
 <div class="fund_main3 fund_main4 right" >
          <div class="center">
            <div class="main1">
                      <div class="fund_main2"> 
                      
                      <h3 style="margin-left:15px";>我的借款</h3>
                       <!-- <ol class="fund_ol"> 
                                              <li class="center_a">筛选时间 <a href="javaScript:;" class="cur">全部</a> <a href="javaScript:;">最近7天</a><a href="javaScript:;">1个月</a><a href="javaScript:;">3个月</a></li> 
                                              <li> 选择日期<select name="" id=""><option value="">2014</option><option >2015</option><option >2016</option></select> 年<select name="" id=""><option value="">1</option><option value="">2</option><option value="">3</option><option value="">4</option><option value="">5</option><option value="">6</option><option value="">7</option><option value="">8</option><option value="">9</option><option value="">10</option><option value="">11</option><option value="">12</option></select> 月 到<select name="" id=""><option value="">2014</option><option >2015</option><option >2016</option></select></select> 年<select name="" id=""><option value="">1</option><option value="">2</option><option value="">3</option><option value="">4</option><option value="">5</option><option value="">6</option><option value="">7</option><option value="">8</option><option value="">9</option><option value="">10</option><option value="">11</option><option value="">12</option></select>月</li> 
                                         <li><span><a href="">查询</a></span></li> 
                                         <li><a href="">导出查询结果</a></li> 
                                            </ol> --> 
                       <table cellspacing="0"> 
                       
                         <colgroup>
                         <col style="width:100px;"> 
                         <col style="width:100px;"> 
                         <col style="width:100px;"> 
                         <col style="width:100px;"> 
                         <col style="width:100px;"> 
                         <col style="width:100px;"> 
                         <col style="width:100px;"> 
                         <col style="width:150px;"> 
                        </colgroup>
                        <thead> 
                         <tr> 
                          <th>借款ID</th> 
                          <th>加借款金额</th> 
                          <th>年利率</th> 
                          <th>待换本息</th> 
                          <th>月收本息</th>
                          <th>期数</th> 
                          <th>申请日期</th> 
                          <th>状态</th>
                         </tr> 
                        </thead> 
                        <tbody> 
                         <tr> 
                          <td><center style="display: block;text-align: center;
								font-size: 16px;
								color: #999;
								padding-top: 60px;position: relative;
								left: 380px;font-weight: bold;">暂无数据
								</center>
						  </td> 

                         </tr> 
                         
                        </tbody> 
                       </table> 
          
                      </div>
                  </div>
          </div>
       </div>
     <!--我的借款end--> 
     </div>
</div> 
  <!--footer start-->
    <%@include file="../pub/pub_footer.jsp" %> 
<!--footer end-->
</div>   
  </body>
</html>

