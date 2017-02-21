<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="dao.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>风控 后台发标 精选理财计划</title>
    
  <meta http-equiv="pragma" content="no-cache">
  <meta http-equiv="cache-control" content="no-cache">
  <meta http-equiv="expires" content="0">    
  <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
  <meta http-equiv="description" content="This is my page">
  <link type="text/css" rel="stylesheet" href="css/common.css">
    <link type="text/css" rel="stylesheet" href="css/houtai.css">
    <link type="text/css" rel="stylesheet" href="css/bor_details.css">
    <link rel="Shortcut Icon" href="../images/zcb-icon.ico">
     <script src="js/jquery-1.6.4.min.js"></script>
  <!--
  <link rel="stylesheet" type="text/css" href="styles.css">
  -->
  <script  type="text/javascript">

   
   function add(){
    
         document.forms[0].action="<%=path%>/background_issuing/addBidinfo.jsp";
         document.forms[0].submit();
     
   }
 
     function submit(){
     document.getElementById("form").submit();
      document.Form1.submit()
  }

function thisRow(r){
  
  //获得当前点击行的id
  
  //取得div 的 id = s 的 显示或隐藏

  //判断 div 如果是隐藏  就变为显示   反之 
  
  if($(r).next()[0].style.display!="none")
  {
    $(r).parents("tbody").next().show();

  } else {
    $(r).parents("tbody").next().hide();

  }
  
  

}
 $(function (){
      $('.showOneFinance .close').click(function(){
        $('.showOneFinance').hide();
      })
    })


   </script>
   <script type="text/javascript">
var p_tag,inputs,selectInputs=[];
onload = function(){
    p_tag = document.getElementById("inputsParent");
    inputs = p_tag.getElementsByTagName("input");
    for(var i=0; i<inputs.length; i++){
        if(inputs[i].checked == true) selectInputs.push(inputs[i]);
    }
    document.title = selectInputs.length;
}

function disableCheckBox() { 
var obj = document.getElementsByName("conFinance_info");

for(var i=0;i<obj.length;i++) 
{ 
if ( !obj[i].checked ) 
obj[i].disabled = true; 
} 
} 
function ableCheckBox() { 
var obj = document.getElementsByName("conFinance_info");
for(var i=0;i<obj.length;i++) 
obj[i].disabled = false; 
} 

function check() 
{ 
var obj = document.getElementsByName("conFinance_info");
var sun=0; 

for(var i=0;i<obj.length;i++) 
{ 
if(obj[i].type=="checkbox" && 
obj[i].checked) 
sun++; 

if( sun< 3 ) 
{ 
ableCheckBox(); 
//break; 
} 
else if(sun == 4 ) 
{ 
disableCheckBox();
event.srcElement.checked=true; 
break;
} 
else if(sun > 4 ) 
{ 
event.srcElement.checked=false; 
break; 
} 
} 
} 
/*function check_count(th){
    var i=n=0;
    if(th.checked == true)
    {
        selectInputs.push(th);
        if(selectInputs.length > 3){
            selectInputs[0].checked = false;
            selectInputs.shift();
        }
    }else{
        if(selectInputs.length>0){
            for(var i=0; i<selectInputs.length; i++){
                if(th == selectInputs[i]) selectInputs.splice(i,1);
            }
        }else{
            th.checked = true;
            return false;
        }
    }
}*/
  function checkbox(){

var checkArray = document.getElementsByName("conFinance_info");
var checkNum = 0;
for(var i=0;i<checkArray.length;i++)
{
 if(checkArray[i].checked)
 {
  checkNum ++;
 }
}
if(checkNum != 4 )
{
 alert('只能选中4个');
 return false;
}
    }
</script> 
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
          <li><strong class="icon1"><span><a href="/ZhongCaiBao/bidinfo/addBid.action" >新建标</a></span></strong></li>
          <li><strong class="icon2"><span><a href="/ZhongCaiBao/bidinfo/findAll.action?currentPage=1">所有标</a></span></strong></li>
          <li><strong class="icon3"><span><a href="/ZhongCaiBao/bidinfo/findByState.action?a=1&&currentPage=1" >已上标</a></span></strong></li>
          <li><strong class="icon4"><span><a href="/ZhongCaiBao/bidinfo/findByState.action?a=2&&currentPage=1" >待上标</a></span></strong></li>
                   <s:if test="#session.riskinfo.bidper==1">
          <li class="cur"><strong class="icon10"><span><a href="/ZhongCaiBao/bidinfo/findAllFinanceplan.action">精选理财计划</a></span></strong></li>
  </s:if>
          
          <li><strong class="icon6"><span><a href="/ZhongCaiBao/riskinfo/findFdxx.action">借款人审核</a></span></strong></li>
            <!-- <li><strong class="icon4"><span><a href="/ZhongCaiBao/riskinfo/findFdxx.action">汇房贷</a></span></strong></li>
            <li><strong class="icon4"><span><a href="/ZhongCaiBao/riskinfo/findClxx.action">汇车贷</a></span></strong></li>
            <li><strong class="icon4"><span><a href="/ZhongCaiBao/riskinfo/findHxd.action">汇信贷</a></span></strong></li> -->
            <ol class="ol2" style="display:none">
                <li class="cur"><a href="/ZhongCaiBao/riskinfo/findFdxx.action">汇房贷</a></li>
                <li><span><a href="/ZhongCaiBao/riskinfo/findClxx.action">汇车贷</a></span></li>
                <li><span><a href="/ZhongCaiBao/riskinfo/findHxd.action">汇信贷</a></span></li>
              </ol>
        </ul>
      </div>
    </div>
    <div class="article">

   <!--  <div class="showOneFinance" style="display:block">
     <a class="close" onclick="close();"><img src="images/close.png"></a>
     <div class="records" id="span">
           
   
                       </div>
   </div> -->
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
            精选理财计划
          </div>
          <div class="mod_table_main">
       <s:form id="form"  action="bidinfo/conFinanceplan.action" onSubmit="return checkbox()">
       <div class="mod_h3">
          <a href="bidinfo/findActBid.action" class="a">添加精选理财</a>
        </div>
        
        <div class="mod_h4">
        <input type="submit"value="确定理财计划" class="a">
        </div>
   <table border="0" class="table_test">
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
   <th>备注</th>
   <th>进度</th>
   <th>操作</th>
   </tr>
   <!--  
   <s:iterator value="bidinfolist" var="bidinfo">
   <tr  class="showOneFinance1">
   <td><s:property value="#bidinfo.id"/></td> 
   <td><s:property value="#bidinfo.userid"/></td> 
   <td><s:property value="#bidinfo.reason"/></td>
   <td><s:property value="#bidinfo.number"/></td> 
   <td><s:property value="#bidinfo.deadline"/></td> 
   <td><s:property value="#bidinfo.state"/></td> 
   <td><s:date name="#bidinfo.created" format="yyyy-MM-dd" /></td> 
   <td><s:property value="#bidinfo.profit"/></td> 
   <td><s:property value="#bidinfo.money"/></td> 
   <td><s:date name="#bidinfo.start" format="yyyy-MM-dd" /></td> 
   <td><s:date name="#bidinfo.end" format="yyyy-MM-dd" /></td> 
   <td><s:property value="#bidinfo.overdue"/></td> 
   <td><s:property value="#bidinfo.repaytype"/></td> 
   <td><s:property value="#bidinfo.bidtype"/></td>
   <td><s:property value="#bidinfo.picture"/></td> 
   <td><s:property value="#bidinfo.remark"/></td> 
   <td><s:property value="#bidinfo.rate"/></td> 
    <s:if test="%{#bidinfo.state=='未上标'}">
  <td><s:a href="bidinfo/changeState.action?id=%{#bidinfo.id}" cssClass="title1" title="上标"></s:a>
      <s:a href="userinfo/findById.action?userinfo=%{#bidinfo.userid}" cssClass="title3" title="完善信息"></s:a>
  </td>
  </s:if>
   </tr>
   </s:iterator>
   --> 
  <s:if test="finance_bid_list.size==0">
		<tr><td style="border:none;border: none;position: absolute;left: 50%;font-size: 25px;top: 230px;color:#555">暂无数据</td></tr>
   </s:if>
     <s:elseif test="%{#finance_bid_list==''}">
		<tr><td style="border:none;border: none;position: absolute;left: 50%;font-size: 25px;top: 230px;color:#555">暂无数据</td></tr>
   </s:elseif>
    <s:iterator value="finance_bid_list" var="vo"  status="st">
   <tbody id="showOneFinance<s:property value='#st.index'/>"  >
   <td  class="table_test1"> 
   <label > <s:if test="%{#vo.bid_plan.state=='未满标'}">
   <input type="checkbox" name="conFinance_info" onclick="check()"   value="<s:property value="#vo.bid_plan.id"/>" class="check"/>
   </s:if>
    <s:if test="%{#vo.bid_plan.state=='已满标'}">
    <input type="checkbox" name="aa" value="<s:property value="#vo.bid_plan.id"/>"  disabled/>
   </s:if>
     <s:if test="%{#vo.bid_plan.state=='已下线'}">
    <input type="checkbox" name="aa"  value="<s:property value="#vo.bid_plan.id"/>"  disabled/>
   </s:if>
  <s:if test="%{#vo.bid_plan.state=='未上标'}">
    <input type="checkbox"  name="conFinance_info" onclick="check()"  value="<s:property value="#vo.bid_plan.id"/>" class="check"/>
   </s:if>
   <s:property value="#vo.bid_plan.id"/></label></td> 
   <td><s:property value="#vo.bid_plan.userid"/></td> 
   <td><s:property value="#vo.bid_plan.reason"/></td>
   <td><s:property value="#vo.bid_plan.number"/></td> 
   <td><s:property value="#vo.bid_plan.deadline"/></td> 
   <td><s:property value="#vo.bid_plan.state"/></td> 
   <td><s:date name="#vo.bid_plan.created" format="yyyy-MM-dd HH:mm:ss" /></td> 
   <td><s:property value="#vo.bid_plan.profit"/></td> 
   <td><s:property value="#vo.bid_plan.money"/></td> 
   <td><s:date name="#vo.bid_plan.start" format="yyyy-MM-dd HH:mm:ss"/></td> 
   <td><s:date name="#vo.bid_plan.end" format="yyyy-MM-dd HH:mm:ss" /></td> 
   <td><s:property value="#vo.bid_plan.overdue"/></td> 
   <td><s:property value="#vo.bid_plan.repaytype"/></td> 
   <td><s:property value="#vo.bid_plan.picture"/></td> 
   <td onclick="thisRow(this)" style="cursor: pointer;"><span class="span"><s:property value="#vo.bid_plan.remark"/></span></td> 
   <td><s:property value="#vo.bid_plan.rate"/></td> 
  
    
    <s:if test="%{#vo.bid_plan.state=='未上标'}">
  <td><!-- <s:a href="bidinfo/changeState.action?id=%{#vo.bid_plan.id}" cssClass="title1" title="上标"></s:a> -->
    <!--   <s:a href="userinfo/findById.action?userinfo=%{#vo.bid_plan.userid}" cssClass="title3" title="完善信息"></s:a> -->
    <s:a href= "bidinfo/updateFinance.action?id=%{#vo.bid_plan.id}">修改</s:a>
  </td>
  </s:if>
 <!--   <s:if test="%{#vo.bid_plan.state=='未满标'}">
  <td>
      <s:a href="userinfo/findById.action?userinfo=%{#bidinfo.bid_plan.userid}" cssClass="title3" title="完善信息"></s:a> 
  </td>
  </s:if>
 -->
    <s:if test="%{#vo.bid_plan.state=='未满标'}">
 <td> <s:a href= "bidinfo/offlineFinance.action?id=%{#vo.bid_plan.id}">下线</s:a></td>
   </s:if>
   
      <s:if test="%{#vo.bid_plan.state=='已满标'}">
 <td> <s:a href= "bidinfo/offlineFinance.action?id=%{#vo.bid_plan.id}">下线</s:a></td>
   </s:if>
   </tbody>

<tbody  style="display:none" id="showOneFinance<s:property value='#st.index'/>"  class="showOneFinance showOneFinance1">
<div>
                   <tr class="fwhite title"><th width="20%" class="round_angle_l">借款标题</th><th width="20%">标的类型</th><th width="20%">借款金额</th><th width="20%">还款期限</th><th width="20%">年化收益率</th><th width="35%">详情</th><th class="close"></th></tr>
                                   <s:iterator value="#vo.bidinfolist" var="bid"> 
                                 <tr class="dark"><td><s:property value="#bid.reason"/></td><td><span class="creditlevel"><s:property value="#bid.bidtype"/></span></td><td><s:property value="#bid.number"/>元</td><td><s:property value="#bid.deadline"/>个月</td><td><s:property value="#bid.profit"/>%</td><td><a href="/ZhongCaiBao/bidinfo/findById.action?id=${bid.id}" style="width:90px">查看详细</a></td></tr>
                                 </s:iterator>
                           
          </div>                 


</tbody>
<!--    <TR>
<TD>
<div id="showOneFinance<s:property value='#st.index'/>" style="display:none">

   <tbody class="showOneFinance2">
 <tr class="fwhite title"><th width="17%" class="round_angle_l">借款标题</th><th width="15%">标的类型</th><th>借款金额</th><th>还款期限</th><th>年化收益率</th><th class="round_angle_r">详情</th></tr>
                               <s:iterator value="#vo.bidinfolist" var="bid"> 
                             <tr class="dark"><td><s:property value="#bid.reason"/></td><td><span class="creditlevel"><s:property value="#bid.bidtype"/></span></td><td><s:property value="#bid.number"/>元</td><td><s:property value="#bid.deadline"/>个月</td><td><s:property value="#bid.profit"/>%</td><td><a href="/ZhongCaiBao/bidinfo/findById.action?id=${bid.id}">查看详细</a></td></tr>
                             </s:iterator>
                             </tbody>

  </div>
</TD>
</TR> -->

   </s:iterator>

</table>
   
   <!--  
   <table border="2">
       完善用户信息<br>
       
       <tr><td>请选择用户:</td></tr>
       <tr><td>
    <select  name="userinfo" onChange="submit()">  
     <option value="qing">--请选择--</option>
      <s:iterator value="userinfolist" var="vo">
             <option value="<s:property value="#vo.userid"/>"><s:property value="#vo.userid"/><s:property value="#vo.name"/></option> 
      </s:iterator>
    </select> 
   </td></tr>
   
     </table> -->
  </s:form>



          </div>
        </div>
        
       
      </div>
    </div>
  </div>
</div>

     <script src="js/houtai.js"></script>
     <script type="text/javascript" language="javascript" src="js/abouts.js"></script>

  </body>
</html>