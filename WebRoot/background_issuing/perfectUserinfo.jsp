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
    
    <title>风控 后台发标 完善用户信息</title>
    
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
          <li class="cur"><strong class="icon2"><span><a href="/ZhongCaiBao/bidinfo/findAll.action?currentPage=1">所有标</a></span></strong></li>
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
            新建标
          </div>

          <div class="mod_table_main">
          <h3 class="main_h3">完善用户信息</h3>

            <form  action="<%=path %>/userinfo/modify.action" class="form1" style="width:1000px;margin:0 auto;padding-left:0">
              <input type="hidden" name="userid" value="<s:property value="userinfo.userid"/>" > 
            <ul>
              <li><strong>用户名:</strong><s:property value="userinfo.name"/></li>
              <li><strong>年龄:</strong><s:textfield  name="userinfo.age" cssClass="input"></s:textfield></li>
             <li><strong>学历:</strong><s:textfield  name="userinfo.highedu" cssClass="input"></s:textfield></li>
             <li><strong>学校:</strong><s:textfield  name="userinfo.greduate" cssClass="input"></s:textfield></li>
             <li><strong>婚姻:</strong><s:textfield  name="userinfo.mairital" cssClass="input"></s:textfield></li>
             <li><strong>工作城市:</strong><s:textfield  name="userinfo.address" cssClass="input"></s:textfield></li>
             <li><strong>公司行业:</strong><s:textfield  name="userinfo.company" cssClass="input"></s:textfield></li>
             <li><strong>公司规模:</strong><s:textfield  name="userinfo.comsize" cssClass="input"></s:textfield></li>


              <li><strong>岗位职位:</strong><s:textfield  name="userinfo.job" cssClass="input"></s:textfield></li>
             <li><strong>收入范围:</strong><s:textfield  name="userinfo.income" cssClass="input"></s:textfield></li>
       
             <li><strong>工作时间:</strong><s:textfield  name="userinfo.worktime" cssClass="input"></s:textfield></li>
             </ul>
             <ul>
             <li></li>
             <li><strong>房产:</strong><select name="userinfo.homecon" id="">
                                <option value="1">有</option>
                                <option value="0">无</option>
                                </select></li>
             <li><strong>房贷:</strong><select name="userinfo.homeloan" id="">
                                <option value="1">有</option>
                                <option value="0">无</option>
                                </select></li>
              <li><strong>车产:</strong><select name="userinfo.carcon" id="">
                                <option value="1">有</option>
                                <option value="0">无</option>
                                </select>
                                </li>
             <li><strong>车贷:</strong><select name="userinfo.carloan" id="">
                                <option value="1">有</option>
                                <option value="0">无</option>
                              </select></li>
             <li><strong>信用报告:</strong><select name="userinfo.crreport" id="">
                                <option value="1">有</option>
                                <option value="0">无</option>
                              </select></li>

             <li><strong>身份认证:</strong>
                          <select name="userinfo.degreecon" id="">
                                <option value="1">有</option>
                                <option value="0">无</option>
                              </select>

             </li>
             <li><strong>工作认证:</strong><select name="userinfo.workcon" id="">
                                
                                <option value="1">有</option>
                                <option value="0">无</option>
                              </select></li>
             <li><strong>收入认证:</strong><select name="userinfo.incomecon" id="">
                                
                                <option value="1">有</option>
                                <option value="0">无</option>
                              </select></li>
             <li><strong>实地认证:</strong><select name="userinfo.fieldcon" id="">
                                
                                <option value="1">有</option>
                                <option value="0">无</option>
                              </select></li>
             <li><strong>信用等级:</strong><select  name="userinfo.remark">
             	
             	                <option value="AA">AA</option>
                                <option value="A">A</option>
                                <option value="B">B</option>
                                <option value="C">C</option>
                                <option value="D">D</option>
                                <option value="E">E</option>
                                <option value="HR">HR</option>
             </select></li>
             <li><input  type="submit" value="确认"/ class="btn"></li>

            </ul>

            </form>
           

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