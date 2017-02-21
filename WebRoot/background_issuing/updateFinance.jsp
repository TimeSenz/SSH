<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>风控 后台发标 修改精选理财信息</title>
    
  <meta http-equiv="pragma" content="no-cache">
  <meta http-equiv="cache-control" content="no-cache">
  <meta http-equiv="expires" content="0">    
  <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
  <meta http-equiv="description" content="This is my page">
  <link type="text/css" rel="stylesheet" href="css/common.css">
    <link type="text/css" rel="stylesheet" href="css/houtai.css">
    <link rel="Shortcut Icon" href="../images/zcb-icon.ico">
  <script src="js/jquery-1.6.4.min.js"></script>

  <!--
  <link rel="stylesheet" type="text/css" href="styles.css">
  -->

  </head>
  
  <body  onload="showTime()">
      <div class="wrap">
  <div class="nav">
      <div class="logo">
        <a href=""></a>
      </div>
      <ul class="ul">
        <li class="cur"><a href="/ZhongCaiBao/background_issuing/addBidinfo.jsp">后台发标</a></li>
      </ul>
      <p class="p"><a href="/ZhongCaiBao/root/choiceLogin.jsp">退出</a></p>
  </div>
  <div class="main">
    <div class="aside">
      <div class="aside_top">
        <input type="text" placeholder="搜索">
        <dl>
          <dt></dt>
          <dd><p><s:property value="#session.rootinfo.name"/><span><a>欢迎您</a></span></p>
          <p><span>新消息(<i>0</i>)</span><span>日报(<i>0</i>)</span></p></dd>
        </dl>
      </div>
      <div class="aside_main">
        <ul>
          <li ><strong class="icon1"><span><a href="/ZhongCaiBao/bidinfo/addBid.action" >新建标</a></span></strong></li>
          <li><strong class="icon2"><span><a href="/ZhongCaiBao/bidinfo/findAll.action?currentPage=1">所有标</a></span></strong></li>
          <li><strong class="icon3"><span><a href="/ZhongCaiBao/bidinfo/findByState.action?a=1&&currentPage=1" >已上标</a></span></strong></li>
          <li><strong class="icon4"><span><a href="/ZhongCaiBao/bidinfo/findByState.action?a=2&&currentPage=1" >待上标</a></span></strong></li>
         <s:if test="#session.riskinfo.bidper==1">
          <li ><strong class="icon10"><span><a href="/ZhongCaiBao/bidinfo/findAllFinanceplan.action">精选理财计划</a></span></strong></li>
  </s:if>
                    <li><strong class="icon6"><span><a href="/ZhongCaiBao/riskinfo/findFdxx.action?currentPage=1">借款人审核</a></span></strong></li>
            <ol class="ol2" style="display:none">
                <li class="cur"><span><a href="/ZhongCaiBao/riskinfo/findFdxx.action?currentPage=1">汇房贷</a></span></li>
                <li><span><a href="/ZhongCaiBao/riskinfo/findClxx.action?currentPage=1">汇车贷</a></span></li>
                <li><span><a href="/ZhongCaiBao/riskinfo/findHxd.action?currentPage=1">汇信贷</a></span></li>
              </ol>
        </ul>
      </div>
    </div>
    <div class="article">
      <div class="activity_opacity" style="display:none"></div>
      <div class="article_top">
        <div id="time" class="p"></div>
        <ul>
          <li>您当前的位置:</li>
          <li><a href="">首页</a>></li>
          <li>后台发标</li>
        </ul>
      </div>
      <div id="mod_table">
        <div class="mod_table">
          <div class="mod_title">
            修改精选理财信息
          </div>
          <div class="mod_table_main">

   <form action="bidinfo/upSureFinance.action">
   <ul class="add">
                             <!--  
                             <li><strong>计划名称：</strong><input type="text" name="finplan.name"  value=<s:property value="userinfo.name"/>></li>
                               <li><strong>计划详情：</strong><input type="text"  name="finplan.reason"  value=<s:property value="bidinfo.reason"/>></li>
                              <li><strong>贷款金额：</strong><input type="text"  name="finplan.number"  value=<s:property value="bidinfo.number"/>></li>
                              <li><strong>贷款期限：</strong><input type="text" name="finplan.deadline"  value=<s:property value="bidinfo.deadline"/>></li>
                              <li><strong>收益：</strong><input type="text" name="finplan.profit"  value=<s:property value="bidinfo.profit"/>></li>
                               <li><strong>贷款金额：</strong><s:textfield name="finplan.number"  value="%{bidinfo.number}"  autocomplete="off"></s:textfield></li>
                              <li><strong>贷款期限：</strong><s:textfield name="finplan.deadline"  value="%{bidinfo.deadline}"  autocomplete="off"></s:textfield></li>
                              -->
                              <li><strong>计划名称：</strong><s:textfield name="finplan.planname"  value="%{userinfo.name}"  autocomplete="off"></s:textfield></li>
                               <li><strong>计划简述：</strong><s:textfield name="finplan.planinfo"  value="%{bidinfo.reason}"  autocomplete="off"></s:textfield></li>
                             
                              <li><strong>计划收益：</strong><s:textfield name="finplan.profit"  value="%{bidinfo.profit}"  autocomplete="off"></s:textfield></li>
                               <input type="hidden"  id="id" name="id" value=<s:property value="bidinfo.id"/>>
                              <li><strong>还款类型：</strong>
                              <select name="finplan.repaytype" id="" >
                                 <option value=<s:property value="bidinfo.repaytype"/>>--<s:property value="bidinfo.repaytype"/>（未更改）--</option>
                                <option value="月返息">月返息</option>
                                <option value="等额本息">等额本息</option>
                                <option value="到期还本付息">到期还本付息</option>
                              </select>
                             </li>
  
  
   </ul>
   <div class="mod_h3" style="float:left;position:inherit">
          <a class="mod_h3_a">绑定散标</a>
        </div>
   <div style="display:none" class="table_test">
     
   
 
   <table border="0" id="table_test">
   <!--  <tr><input type="button" value="新建标" onclick="add()"/></tr> -->

   <tr>
   <th>编号</th>
   <th>用户编号</th>
   <th>贷款原因</th>
   <th>贷款金额</th>
   <th>期限</th>
   <th>标状态</th>
   <th>创建时间</th>
   <th>收益</th>
   <th>剩余金额</th>
   <th>开始时间</th>
   <th>结束时间</th>
   <th>逾期情况</th>
   <th>还款类型</th>
   <th>标的类型</th>
   <th>预览图</th>
   <th>备注</th>
   <th>进度</th>
   <th>操作</th>
   </tr>
   <s:iterator value="bidinfolist" var="bidinfo">
   <tr>
   <td><s:property value="#bidinfo.id"/></td> 
   <td><s:property value="#bidinfo.userid"/></td> 
   <td><s:property value="#bidinfo.reason"/></td>
   <td><s:property value="#bidinfo.number"/></td> 
   <td><s:property value="#bidinfo.deadline"/></td> 
   <td><s:property value="#bidinfo.state"/></td> 
   <td><s:date name="#bidinfo.created" format="yyyy-MM-dd HH:mm:ss" /></td> 
   <td><s:property value="#bidinfo.profit"/></td> 
   <td><s:property value="#bidinfo.money"/></td> 
   <td><s:date name="#bidinfo.start" format="yyyy-MM-dd HH:mm:ss"/></td> 
   <td><s:date name="#bidinfo.end" format="yyyy-MM-dd HH:mm:ss"/></td> 
   <td><s:property value="#bidinfo.overdue"/></td> 
   <td><s:property value="#bidinfo.repaytype"/></td> 
   <td><s:property value="#bidinfo.bidtype"/></td>
   <td><s:property value="#bidinfo.picture"/></td> 
   <td><s:property value="#bidinfo.remark"/></td> 
   <td><s:property value="#bidinfo.rate"/></td> 
    <s:if test="%{#bidinfo.state=='未上标'}">
  <td><!-- <s:a href="bidinfo/changeState.action?id=%{#bidinfo.id}">上标</s:a>
      <s:a href="userinfo/findById.action?userinfo=%{#bidinfo.userid}">完善信息</s:a> -->
     <input type="checkbox" name="bidinfo" value="<s:property value="#bidinfo.id"/>"/>
   
     
  </td>
  </s:if>
   </tr>
   </s:iterator>
   
   <s:iterator value="bdsblist" var="bdsb">
   <tr>
   <td><s:property value="#bdsb.id"/></td> 
   <td><s:property value="#bdsb.userid"/></td> 
   <td><s:property value="#bdsb.reason"/></td>
   <td><s:property value="#bdsb.number"/></td> 
   <td><s:property value="#bdsb.deadline"/></td> 
   <td><s:property value="#bdsb.state"/></td> 
   <td><s:date name="#bdsb.created" format="yyyy-MM-dd HH:mm:ss" /></td> 
   <td><s:property value="#bdsb.profit"/></td> 
   <td><s:property value="#bdsb.money"/></td> 
   <td><s:date name="#bdsb.start" format="yyyy-MM-dd HH:mm:ss"/></td> 
   <td><s:date name="#bdsb.end" format="yyyy-MM-dd HH:mm:ss"/></td> 
   <td><s:property value="#bdsb.overdue"/></td> 
   <td><s:property value="#bdsb.repaytype"/></td> 
   <td><s:property value="#bdsb.bidtype"/></td>
   <td><s:property value="#bdsb.picture"/></td> 
   <td><s:property value="#bdsb.remark"/></td> 
   <td><s:property value="#bdsb.rate"/></td> 
   
  <td>
     <input type="checkbox"   checked="true"   name="bidinfo" value="<s:property value="#bdsb.id"/>"/>
  </td>
 
   </tr>
   </s:iterator>
   </table>
   
   <div class="mod_h3" style="float:left;position:inherit">
        <input type="submit"  value="确认" style="margin-top:10px;">
        </div>
         
        </div>
   </form>
           

          </div>
        </div>
        
       
      </div>
    </div>
  </div>
</div>

<script>
    $(function(){
    $('.pagination .click').click(function(){
      $(this).addClass('current').siblings().removeClass('current')
    })
  })
  $(document).ready(function(){ 
  odd= {"background":"#fff","color":"#000"};//奇数样式 
  even={"background":"#f8f8f8","color":"#000"};//偶数样式 
  odd_even("#table_test",odd,even); 
  }); 
  function odd_even(id,odd,even){ 
  $(id).find("tr").each(function(index,element){ 
  if(index%2==1) 
  $(this).css(odd); 
  else 
  $(this).css(even); 
  }); 

  $(".mod_h3_a").click(function(){
       $(".table_test").toggle();
      })
  } 
</script>
  </body>
</html>