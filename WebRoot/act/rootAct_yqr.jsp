<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
Integer totalPage=(Integer)request.getAttribute("totalPage");
Integer areaPage=(Integer)request.getAttribute("areaPage");
Integer currentPage=(Integer)request.getAttribute("currentPage");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">

    <base href="<%=basePath%>">
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>root放款批准 借款人 放款已确认</title>
  <link type="text/css" rel="stylesheet" href="css/common.css">
  <link type="text/css" rel="stylesheet" href="css/houtai.css">
  <link rel="Shortcut Icon" href="../images/zcb-icon.ico">
  <script src="js/jquery-1.6.4.min.js"></script>
  <script>
  $(function(){
      $(".nav .ul li").click(function(){
        $(this).addClass('cur').siblings().removeClass('cur');
      })
      $(".aside_main ul div").click(function(){
        var index=$(this).index();
        $(this).find('.li').addClass('cur').parent('div').siblings().find('li').removeClass('cur');
        $(this).find('.li').siblings().show().parent('div').siblings().find('ol').hide();
        $('#mod_table_main .mod_table_main').eq(index).show().siblings().hide()

        

      })
      $(".aside_main ol li").click(function(){
        var index=$(this).index();
        $(this).addClass('cur').siblings().removeClass('cur');
      })
 

  })
  </script>
</head>
<body onload="showTime()">
<div class="wrap">
  <div class="nav">
      <div class="logo">
        <a href=""></a>
      </div>
      <ul class="ul">
        <li><a href="/ZhongCaiBao/rootact/records.action?currentPage=1">资金流水</a></li>
        <li class="cur"><a href="/ZhongCaiBao/rootact/rootAct.action?currentPage=1">放款批准</a></li>
        <li><a href="/ZhongCaiBao/finance/findAll.action">用户管理</a></li>
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
          <div>
              <li class="li cur"><strong class="icon5"><span><a href="/ZhongCaiBao/rootact/rootAct.action?currentPage=1">借款人</a></span></strong></li>
              <ol class="ol1">
                <li><a href="/ZhongCaiBao/rootact/rootAct.action?currentPage=1">放款</a></li>
                <li><a href="/ZhongCaiBao/rootact/rootActjn.action?currentPage=1">放款未批准</a></li>
                <li class="cur"><a href="/ZhongCaiBao/rootact/rootActjc.action?currentPage=1">放款已确认</a></li>
              </ol>
          </div>
          <div>
          <li style="border-top:1px solid #42424a" class="li" ><strong class="icon6"><span><a href="/ZhongCaiBao/rootact/rootActla.action?currentPage=1">理财人</a></span></strong></li>
          <ol class="ol2" style="display:none">
                <li class="cur"><a href="/ZhongCaiBao/rootact/rootActla.action?currentPage=1">放款</a></li>
                <li><a href="/ZhongCaiBao/rootact/rootActln.action?currentPage=1">放款未批准</a></li>
                <li><a href="/ZhongCaiBao/rootact/rootActlc.action?currentPage=1">放款已确认</a></li>
              </ol>
          </div>
        </ul>
      </div>
    </div>
    <div class="article">
      <div class="article_top">
        <div id="time" class="p"></div>
        <ul>
          <li>您当前的位置:</li>
          <li><a href="">首页</a>></li>
          <li>放款批准</li>
        </ul>
      </div>
      <div class="mod_table">
        <div class="mod_title">
          托管账户
        </div>
        <div id="mod_table_main">
          <div class="mod_table_main mod_table_main1">

  
  <div>
 <s:form name="f3">
    <input type="hidden" id="currentPage" name="currentPage" value='<%=currentPage %>' />
  <input type="hidden" id="areaPage" name="areaPage" value='<%=areaPage %>' />
  <input type="hidden" id="totalPage" name="totalPage" value='<%=totalPage %>' />
    <table border="0" id="table_test">
      <tr>
   <th>ID</th>
   <th>标ID</th>
   <th>详情</th>
   <th>借款人</th>
   <th>金额</th>
   <th>备注</th>
    <th>状态</th>
    <th>时间</th>
   </tr>
   <s:if test="jkr_confirm_list.size==0">
		<tr><td style="border:none;border: none;position: absolute;left: 50%;font-size: 25px;top: 230px;color:#555">暂无数据</td></tr>
   </s:if>
       <s:elseif test="%{jkr_confirm_list==''}">
		<tr><td style="border:none;border: none;position: absolute;left: 50%;font-size: 25px;top: 230px;color:#555">暂无数据</td></tr>
   </s:elseif>
   <s:iterator value="jkr_confirm_list" var="vo">
   <tr>
   <td><s:property value="#vo.id"/></td> 
   <td><s:property value="#vo.bidid"/></td> 
   <td><s:property value="#vo.bid_reason"/></td>
   <td><s:property value="#vo.jkr_name"/> </td> 
   <td><s:property value="#vo.zcrje"/></td> 
   <td><s:property value="#vo.remark"/></td>
    <td><s:property value="#vo.state"/> </td> 
   <td><s:date name="#vo.time" format="yyyy-MM-dd HH:mm:ss" /></td>
  <!--  <td><s:a href="bidinfo/findById.action?id=%{#vo.id}">开始出借</s:a></td> -->
    </tr>
   </s:iterator>
   </table>
   <s:if test="jkr_confirm_list.size!=0">
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
         f3.submit();
      }
    	  else if(parseInt( document.getElementById("currentPage").value)==parseInt( document.getElementById("totalPage").value)){
    		  alert("当前已经是最后一页");
    	  }
      }
         function findByPage(pp){
           document.getElementById("currentPage").value=pp;
             f3.submit();
         }
          function lastPage(){
        	  if(parseInt( document.getElementById("currentPage").value)>1){
             document.getElementById("currentPage").value= parseInt(document.getElementById("currentPage").value)-1;  
             if(parseInt(document.getElementById("currentPage").value)<(parseInt(document.getElementById("areaPage").value-1)*5)+1){
               document.getElementById("areaPage").value=   parseInt(document.getElementById("areaPage").value)-1;
             }
            f3.submit();
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
</div>
     <script src="js/houtai.js"></script>
  

</body>
</html>