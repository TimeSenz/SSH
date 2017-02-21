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
    
    <title>风控 后台发标 修改标信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
     <link type="text/css" rel="stylesheet" href="css/common.css">
    <link type="text/css" rel="stylesheet" href="css/houtai.css">
    <link rel="Shortcut Icon" href="../images/zcb-icon.ico">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body onload="showTime()">
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
          <li  class="cur"><strong class="icon2"><span><a href="/ZhongCaiBao/bidinfo/findAll.action?currentPage=1">所有标</a></span></strong></li>
          <li ><strong class="icon3"><span><a href="/ZhongCaiBao/bidinfo/findByState.action?a=1&&currentPage=1" >已上标</a></span></strong></li>
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
            修改标信息
          </div>
          <div class="mod_table_main">
            <h3 class="main_h3">修改标信息</h3>
                  <s:form  action="/bidinfo/saveBid.action" cssClass="form1">
               <ul>
                              <li><strong>请选择借款人:</strong><select  name="bidinfo.userid" >  
                               <option value=<s:property value="bidinfo.userid"/>>--用户：<s:property value="bidinfo.userid"/>（未更改）--</option>
                                <s:iterator value="userinfolist" var="vo">
                                       <option value="<s:property value="#vo.userid"/>"><s:property value="#vo.userid"/><s:property value="#vo.name"/></option> 
                                </s:iterator>
                              </select></span></li>
                               <li><strong>贷款原因：</strong><input type="text" name="bidinfo.reason" class="input" value=<s:property value="bidinfo.reason"/>></li>
                              <li><strong>贷款金额：</strong><input type="text" name="bidinfo.number"  class="input"value=<s:property value="bidinfo.number"/>></li>
                              <li><strong>贷款期限：</strong><input type="text" name="bidinfo.deadline"  class="input"value=<s:property value="bidinfo.deadline"/>></li>
                              <li><strong>贷款详情：</strong><input type="text" name="bidinfo.contents"  class="input"value=<s:property value="bidinfo.contents"/>></li>
                              <li><strong>收益：</strong><input type="text" name="bidinfo.profit"  class="input"value=<s:property value="bidinfo.profit"/>></li>
                              <li><strong>还款类型：</strong>
                              <select name="bidinfo.repaytype" id="" >
                                 <option value=<s:property value="bidinfo.repaytype"/>>--<s:property value="bidinfo.repaytype"/>（未更改）--</option>
                                <option value="月返息">月返息</option>
                                <option value="等额本息">等额本息</option>
                                <option value="到期还本付息">到期还本付息</option>
                              </select>


                             </li>
                              <li><strong>标的类型：</strong><!-- <s:select name="bidinfo.bidtype" list="#{'信':'信','抵':'抵','债':'债','租':'租'}" value="'信'"/> --><select name="bidinfo.bidtype" id="">
                                
                                <option value="信">信</option>
                                <option value="抵">抵</option>
                                <option value="债">债</option>
                                <option value="租">租</option>
                              </select>
                              <span id="span8s" class="spans"></span></li></li>
                              <li><strong>备注：</strong><input type="text"  name="bidinfo.remark" class="input"value=<s:property value="bidinfo.remark"/>></li>
                              <s:hidden name="bidinfo.state"  value="未上标"/>
                              <li><input type="submit" name="submit" class="btn" value="确认" /></li>
                            </ul><!-- <table>
                               <tr><td>编      号：</td><td><s:textfield  name="bidinfo.id"></s:textfield></td></tr>
                              
                               
                               <tr><td>请选择借款人:</td></tr>
                               <tr><td>
                            <select  name="bidinfo.userid" >  
                             <option value="qing">--请选择--</option>
                              <s:iterator value="userinfolist" var="vo">
                                <option value="<s:property value="#vo.userid"/>"><s:property value="#vo.userid"/><s:property value="#vo.name"/></option> 
                              </s:iterator>
                            </select> 
                               </td>
                               
                               </tr>
                               <tr><td>贷款原因：</td><td><s:textfield  name="bidinfo.reason"></s:textfield></td></tr>
                               <tr><td>贷款金额：</td><td><s:textfield  name="bidinfo.number"></s:textfield></td></tr>
                               <tr><td>期      限：</td><td><s:textfield  name="bidinfo.deadline"></s:textfield></td></tr>
                               <tr><td>标 状 态: </td><td><s:textfield  value="未上标"></s:textfield></td></tr> 
                               <tr><td>收      益：</td><td><s:textfield  name="bidinfo.profit"></s:textfield></td></tr>
                               <tr><td>剩余金额：</td><td><s:textfield  name="bidinfo.money"></s:textfield></td></tr>
                               <tr><td>逾期情况：</td><td><s:textfield  name="bidinfo.overdue"></s:textfield></td></tr>
                               <tr><td>还款类型： <s:select name="bidinfo.repaytype" list="#{'月返息':'月返息','等额本息':'等额本息','到期还本付息':'到期还本付息'}" value="'月返息'"/></td></tr>  
                               <tr><td>标的类型： <s:select name="bidinfo.bidtype" list="#{'信':'信','抵':'抵','债':'债','租':'租'}" value="'信'"/></td></tr>
                            <tr><td>预 览  图：</td><td><s:textfield  name="bidinfo.picture"></s:textfield></td></tr>
                               <tr><td>备       注：</td><td><s:textfield  name="bidinfo.remark"></s:textfield></td></tr>
                               <tr><td>进     度：</td><td><s:textfield  name="bidinfo.rate"></s:textfield></td></tr>
                               <s:hidden name="bidinfo.state"  value="未上标"/>
                               <tr><input  type="submit" value="确认"  /></tr>
                            </table>  -->
                                  </s:form>

           

          </div>
        </div>
        
       
      </div>
    </div>
  </div>
</div>
<script>
    function showTime() { 
  var now = new Date(); 
  var nowTime = now.toLocaleString(); 
  var year = now.getFullYear(); //年
  var month = now.getMonth()+1; //月
  var date = now.getDate(); //年
  var time = nowTime.substring(10,20); //截取时间 
  var week = now.getDay(); //星期 
   var hour = now.getHours(); //小时 
  var minute = now.getMinutes(); //分 
  var second = now.getSeconds(); //秒  

  //判断星期几 
  var weeks = ["日","一","二","三","四","五","六"]; 
  var getWeek = "星期" + weeks[week]; 
document.getElementById('time').innerHTML =year +"年"+ month +"月"+date +"日"+"  "+hour+":"+minute+":"+second+"&nbsp;&nbsp;"+ getWeek;
  setTimeout('showTime()',1000); 
} 
</script>
  </body>
</html>
   