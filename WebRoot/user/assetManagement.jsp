<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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

Integer totalPage=(Integer)request.getAttribute("totalPage");
Integer areaPage=(Integer)request.getAttribute("areaPage");
Integer currentPage=(Integer)request.getAttribute("currentPage");
%>

<!doctype html>
<html>
<head>
<meta http-equiv="content-type" content="text/html" charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>交易记录</title>
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
  </head>
  
  <body >

  
  <div class="pg-container">
<!--头部-->
  <%@include file="../pub/pub_top.jsp" %> 
<!--头部end-->
<div class="fund_main"> 
        <p class="top_title"><span><a href="/ZhongCaiBao">首页</a></span>&nbsp;&gt;&nbsp;资金管理&nbsp;&gt;&nbsp;交易记录</p> 
    <div class="fund_main_w fn_clear">
<!--左侧栏-->
      <div class="left">
      <div class="top"> 
       <ul> 
        <li class="one"><a href="/ZhongCaiBao/userinfo/user.action?user=myZCB"><span><strong>我的众财宝</strong></span></a></li> 
        <li class="two"><a href="/ZhongCaiBao/userinfo/personRecords.action?currentPage=1"><span class="cur"><strong class="cur1">资金管理</strong></span></a> 
         <ol> 
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
     <div id="fund_main" style="display:block">
<!--资金管理-交易记录start-->
  <div class="right right_1"> 
        <div class="top"> 
         <div class="top_r"> 
          <table> 
           <thead> 
           </thead>
           <colgroup>
            <col /> 
            <col style="width:60px;font-size: 30px;" /> 
            <col /> 
            <col style="width:60px;font-size: 30px;" /> 
            <col /> 
            <col style="width:60px;font-size: 30px;" /> 
            <col /> 
           </colgroup>
           <tbody>
            <tr> 
             <th> 
              <dl> 
               <dt>
                总账户：
               </dt> 
               <dd>
                <span id="round"><s:property value="#session.userinfo.zye"/></span>元
               </dd> 
              </dl> </th> 
             <th>=</th> 
             <th> 
              <dl> 
               <dt>
                账户余额：
               </dt> 
               <dd>
                <span id="round1"><s:property value="#session.userinfo.xjye"/></span>元
               </dd> 
              </dl> </th> 
             <th>+</th> 
             <th> 
              <dl> 
               <dt>
                交易金额：
               </dt> 
               <dd>
                <span id="round2"><s:property value="#session.userinfo.jyje"/></span>元
               </dd> 
              </dl> </th> 
             <th>+</th> 
             <th> 
              <dl> 
               <dt>
                预期收益：
               </dt> 
               <dd>
                <span id="round3"><s:property value="#session.userinfo.yqsy"/></span>元
               </dd> 
              </dl> </th> 
            </tr>  
           </tbody>
          </table> 
         </div> 
         <script>
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

         <div class="top_t"> 
          <p><span><a href="/ZhongCaiBao/userinfo/user.action?user=recharge">充值</a><a href="/ZhongCaiBao/userinfo/user.action?user=withdraw">提现</a></span>提现成功总金额：<strong><i><s:property value="#session.userinfo.withdrawal"/></i>元</strong></p> 
         </div> 
        </div> 
        <div class="fund_main2" style="padding:0 15px"> 
         <!-- <ol class="fund_ol"> 
          <li>查询类型
          <select name="" id="" autocomplete="off">
                <option >所有</option>
                <option >充值</option>
                <option >投标成功</option>
                <option >招标成功</option>
                <option >偿还本息</option>
                <option >回收本息</option>
                <option >提前还款</option>
                <option >提前回收</option>
                <option >成功提现</option>
                <option >身份验证手续费</option>
                <option >提现手续费</option>
                <option >借款管理费</option>
                <option >逾期管理费</option>
                <option >担保费用</option>
                <option >实地审核费用</option>
                <option >委托待查费用</option>
                <option >人工充值</option>
                <option >返还服务费</option>
                <option >加入U计划</option>
                <option >U计划回款</option>
                <option >出售债权</option>
                <option >购买债权</option>
                <option >债权转让管理费</option>
              </select>
            </li> 
          <li> 查询时间<select name="" id=""><option value="">2014</option><option >2015</option><option >2016</option></select> 年<select name="" id=""><option value="">1</option><option value="">2</option><option value="">3</option><option value="">4</option><option value="">5</option><option value="">6</option><option value="">7</option><option value="">8</option><option value="">9</option><option value="">10</option><option value="">11</option><option value="">12</option></select> 月 到<select name="" id=""><option value="">2014</option><option >2015</option><option >2016</option></select></select> 年<select name="" id=""><option value="">1</option><option value="">2</option><option value="">3</option><option value="">4</option><option value="">5</option><option value="">6</option><option value="">7</option><option value="">8</option><option value="">9</option><option value="">10</option><option value="">11</option><option value="">12</option></select>月</li> 
          <li><span><a href="">查询</a></span></li> 
          <li><a href="">导出查询结果</a></li> 
         </ol>  -->
         <table> 
          <colgroup>
           <col style="width:100px;" /> 
           <col style="width:100px;" /> 
           <col style="width:100px;" /> 
           <col style="width:100px;" /> 
           <col style="width:100px;" /> 
           <col style="width:150px;" /> 
          </colgroup>
         
         <s:form name="f2">
          
          <input type="hidden"  id="maxPage" name="maxPage" />
          <input type="hidden"  id="userLength" name="userLength" />
          <input type="hidden"  id="areaPage" name="areaPage" value='<%=areaPage%>'/>
          <input type="hidden" id="totalPage" name="totalPage" value='<%=totalPage %>' />
            <table>
           <tr> 
            <th style="width:180px;">时间</th> 
            <th style="width:100px;">类型明细</th> 
            <th style="width:100px;">收入</th> 
            <th style="width:100px;">支出</th> 
            <th style="width:100px;">结余</th> 
            <th style="width:100px;">备注</th> 
           </tr> 
    
           </table>
           <table id="listJson">
           </table>
   <div class="pagination Pagination1">
   <a href="javascript:;" onclick="up()">上一页</a>
<input type="hidden"  id="currentPage" name="currentPage" value='<%=currentPage%>'/>
   <input  id="pageSize"  type="hidden" value="10"/> 

    <a href="javascript:;" onclick="down()">下一页</a>
    </div>

          </s:form>

         </table> 
        </div> 
       </div> 
   
<!--资金管理-交易记录end-->
  </div>
</div>
</div>
  <!--footer start-->
    <%@include file="../pub/pub_footer.jsp" %> 
<!--footer end-->
  
  </body>
</html>
