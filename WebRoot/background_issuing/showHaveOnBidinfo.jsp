<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="dao.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
Integer totalPage=(Integer)request.getAttribute("totalPage");
Integer areaPage=(Integer)request.getAttribute("areaPage");
Integer currentPage=(Integer)request.getAttribute("currentPage");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>风控 后台发标 已上标</title>
    
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
 <script src="js/jquery-1.6.4.min.js"></script>
  <script  type="text/javascript">
   function add(){
         document.forms[0].action="<%=path%>/background_issuing/addBidinfo.jsp";
         document.forms[0].submit();
   }
     function submit(){
     document.getElementById("form").submit();
      document.Form1.submit()
  }
   </script> 
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
          <li><strong class="icon2"><span><a href="/ZhongCaiBao/bidinfo/findAll.action?currentPage=1">所有标</a></span></strong></li>
          <li  class="cur"><strong class="icon3"><span><a href="/ZhongCaiBao/bidinfo/findByState.action?a=1&&currentPage=1" >已上标</a></span></strong></li>
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
            已上标
          </div>
          <div class="mod_table_main">
       <s:form id="form" name="f" >
       <div class="mod_h3"> 
          <a href="bidinfo/addBid.action" >新建标</a>
        </div>
  <input type="hidden" id="currentPage" name="currentPage" value='<%=currentPage %>' />
  <input type="hidden" id="areaPage" name="areaPage" value='<%=areaPage %>' />
  <input type="hidden" id="totalPage" name="totalPage" value='<%=totalPage %>' />
   <table border="0" id="table_test">
   <!--  <tr><input type="button" value="新建标" onclick="add()"/></tr> -->

   <tr>
   <th>编号</th>
    <th>用户编号</th>
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
   <s:if test="haveonbidlist.size==0">
		<tr><td style="border:none;border: none;position: absolute;left: 50%;font-size: 25px;top: 230px;color:#555">暂无数据</td></tr>
   </s:if>
     <s:elseif test="%{#haveonbidlist==''}">
		<tr><td style="border:none;border: none;position: absolute;left: 50%;font-size: 25px;top: 230px;color:#555">暂无数据</td></tr>
   </s:elseif>
   <s:iterator value="haveonbidlist" var="bidinfo">
   <tr>
   <td><s:property value="#bidinfo.id"/></td> 
      <td><s:property value="#bidinfo.comname"/></td>
   <td><s:property value="#bidinfo.userid"/></td> 
   <td><s:property value="#bidinfo.reason"/></td>
   <td><s:property value="#bidinfo.number"/></td> 
   <td><s:property value="#bidinfo.deadline"/></td> 
   <td><s:property value="#bidinfo.state"/></td> 
   <td><s:date name="#bidinfo.created" format="yyyy-MM-dd HH:mm:ss"/></td> 
   <td><s:property value="#bidinfo.profit"/></td> 
   <td><s:property value="#bidinfo.money"/></td> 
   <td><s:date name="#bidinfo.start" format="yyyy-MM-dd HH:mm:ss" /></td> 
   <td><s:date name="#bidinfo.end" format="yyyy-MM-dd HH:mm:ss" /></td> 
   <td><s:property value="#bidinfo.overdue"/></td> 
   <td><s:property value="#bidinfo.repaytype"/></td> 
   <td><s:property value="#bidinfo.bidtype"/></td>
   <td><span class="span"><s:property value="#bidinfo.remark"/></span></td> 
   <td><s:property value="#bidinfo.rate"/></td> 
   <s:if test="%{#bidinfo.state=='未满标'}">
  <td><s:a href="bidinfo/changeState.action?id=%{#bidinfo.id}" cssClass="title11" title="未满标"></s:a>
      <s:a href="userinfo/findById.action?userinfo=%{#bidinfo.userid}" cssClass="title3" title="完善信息"></s:a>
  </td>
  </s:if>
  <s:if test="%{#bidinfo.state=='已满标'}">
  <td><s:a href="bidinfo/changeState.action?id=%{#bidinfo.id}" cssClass="title11" title="已满标"></s:a>
      <s:a href="userinfo/findById.action?userinfo=%{#bidinfo.userid}" cssClass="title3" title="完善信息"></s:a>
  </td>
  </s:if>

   <s:if test="%{#bidinfo.state=='还款中'}">
  <td>
  </td>
  </s:if>
   </tr>
   </s:iterator>
   </table>
   <s:if test="haveonbidlist.size!=0">
  <div class="pagination Pagination1">
    <a href="javascript:lastPage()" >上一页</a>
    <%
         if(totalPage.intValue()<=5){
          for(int i=1;i<=totalPage.intValue();i++){
        	  if(i==currentPage.intValue()){
     			 %>
     			  <a href="javascript:findByPage('<%=i%>')" class="clicktrue" ><%=i%></a>
     			<%
     		  }else{
     		  %>
     		    <a href="javascript:findByPage('<%=i%>')" class="click" ><%=i%></a>
     		  <% 
     		  }
         }
         }
          else{ if(areaPage.intValue()*5<=totalPage.intValue()){
        	  for(int i= (areaPage.intValue()-1)*5+1;i<=areaPage.intValue()*5;i++){
        		  if(i==currentPage.intValue()){
        			 %>
        			  <a href="javascript:findByPage('<%=i%>')" class="clicktrue" ><%=i%></a>
        			<%
        		  }else{
        		  %>
        		    <a href="javascript:findByPage('<%=i%>')" class="click" ><%=i%></a>
        		  <% 
        		  }
        	  }
          }
               else {
        	       for(int i= (areaPage.intValue()-1)*5+1;i<=totalPage.intValue();i++){
        	    	   if(i==currentPage.intValue()){
        		  %>
    			  <a href="javascript:findByPage('<%=i%>')" class="clicktrue" ><%=i%></a>
    			<%
    		     }else{
    		     %>
    		    <a href="javascript:findByPage('<%=i%>')" class="click" ><%=i%></a>
    		  <% 
    		     }
        	  }
          }
          }
       %>
    <a href="javascript:nextPage()">下一页</a>
    </div>
    </s:if>
      <script type="text/javascript">
      function nextPage(){
    	  if(parseInt( document.getElementById("currentPage").value)<parseInt( document.getElementById("totalPage").value)){
          document.getElementById("currentPage").value= parseInt(document.getElementById("currentPage").value)+1;  
          if(parseInt(document.getElementById("currentPage").value)>parseInt(document.getElementById("areaPage").value*5)){
            document.getElementById("areaPage").value=parseInt(document.getElementById("areaPage").value)+1;
          }
         f.submit();
      }
    	  else if(parseInt( document.getElementById("currentPage").value)==parseInt( document.getElementById("totalPage").value)){
    		  alert("当前已经是最后一页");
    	  }
      }
         function findByPage(pp){
           document.getElementById("currentPage").value=pp;
             f.submit();
         }
          function lastPage(){
        	  if(parseInt( document.getElementById("currentPage").value)>1){
             document.getElementById("currentPage").value= parseInt(document.getElementById("currentPage").value)-1;  
             if(parseInt(document.getElementById("currentPage").value)<(parseInt(document.getElementById("areaPage").value-1)*5)+1){
               document.getElementById("areaPage").value=   parseInt(document.getElementById("areaPage").value)-1;
             }
            f.submit();
         }
        	  else if(parseInt( document.getElementById("currentPage").value)==1){
        		  alert("当前已经是第一页");
        	  }
          }
      </script>
  </s:form>

           

          </div>
        </div>
        
       
      </div>
    </div>
  </div>
</div>
<script src="js/houtai.js"></script>
  </body>
</html>