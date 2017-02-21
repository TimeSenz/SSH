<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="dao.Userinfo" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
Integer totalPage=(Integer)request.getAttribute("totalPage");
Integer areaPage=(Integer)request.getAttribute("areaPage");
Integer currentPage=(Integer)request.getAttribute("currentPage");
%>

<!doctype html>
<html>
<head>
<meta http-equiv="content-type" content="text/html" charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>我的理财精选理财</title>
          <link rel="Shortcut Icon" href="../images/zcb-icon.ico"> 
     <link type="text/css" rel="stylesheet" href="../css/common.css" />
    <link type="text/css" rel="stylesheet" href="../css/fund.css" /> 
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
            <p class="top_title"><span><a href="/ZhongCaiBao">首页</a></span>&nbsp;&gt;&nbsp;我的理财&nbsp;&gt;&nbsp;精选理财 </p> 
    <div class="fund_main_w fn_clear">
<!--左侧栏-->
	<div class="left"> 
      <div class="top"> 
       <ul> 
        <li class="one"><a href="/ZhongCaiBao/userinfo/user.action?user=myZCB"><span><strong>我的众财宝</strong></span></a></li> 
        <li class="two"><a href="/ZhongCaiBao/userinfo/personRecords.action?currentPage=1"><span><strong>资金管理</strong></span></a> 
         <ol style="display:none"> 
          <li class="cur"><a href="/ZhongCaiBao/userinfo/personRecords.action?currentPage=1">交易记录</a></li> 
          <li><a href="/ZhongCaiBao/user/recharge.jsp">充值</a></li> 
          <li><a href="/ZhongCaiBao/userinfo/user.action?user=withdraw">提现</a></li>  
         </ol> </li> 
        <li class="three"><a href="/ZhongCaiBao/userinfo/user.action?user=myManage&currentPage=1"><span class="cur"><strong class="cur1">我的理财</strong></span></a>
          <ol> 
          <li><a href="/ZhongCaiBao/userinfo/user.action?user=myManage&currentPage=1">我的债权<i>（协议）</i></a></li> 
          <li class="cur"><a href="/ZhongCaiBao/userinfo/user.action?user=myJxlc&currentPage=1">精选理财</a></li> 
          <li><a href="/ZhongCaiBao/userinfo/user.action?user=myTzsb&currentPage=1">投资散标</a></li>
          <!-- <li><a href="/ZhongCaiBao/user/myRzzl.jsp">融资租赁</a></li>
          <li><a href="/ZhongCaiBao/user/myZqzr.jsp">债权转让</a></li>
          <li><a href="/ZhongCaiBao/user/myLctj.jsp">理财统计</a></li> -->
         </ol> 
        </li> 
        <li class="four"><a href="/ZhongCaiBao/userinfo/user.action?user=myBorrow"><span><strong>我的借款</strong></span></a></li> 
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
     <!--我的理财-精选理财start-->
      <div class="fund_main3">
        <div class="fund_main3_right1">
            <div class="right top">
              <dl>
              <dt>精选理财已赚金额</dt>
                      <dt style="color:#d45757;margin-bottom: 15px;"><i class="jine"><big style="font-size: 28px;"><s:property value="#session.userinfo.choicePromoney"/></big></i>元</dt>
                      <dd>利息收益    <i class="jine"><big><s:property value="#session.userinfo.choicePromoney"/></big></i>元 </dd>
                      <dd>债权转让盈亏   <i><big>0.00</big></i>元</dd>
                    </dl>
                    <dl style="border:none;width:480px;">
                      <dd>
                      <ul>
                        <!-- <li style="width:200px;"><span>收益再投资金额 <br><i>0.00</i>元</span></li> -->
                        <li style="width:150px;"><span>已提取金额 <br><i class="jine"><s:property value="#session.userinfo.withdrawal"/></i>元</span></li>
                        <li style="width:200px;"><span>持有中的数量 <br><i><b><s:property value="#session.person_profit_choice.Finance_accounts/1000"/></b></i>个</span></li>
                      </ul></dd>
                      <!-- <dd>   <ul>
                        <li style="width:200px;"><span>持有中的数量 <br><i>0</i>个</span></li>
                        <li style="width:150px;"><span>退出中的数量 <br><i>0</i>个</span></li>
                        <li style="width:110px;"><span>已退出的数量 <br><i>0</i>个</span></li>
                      </ul></dd> -->
              </dl>
                    
            </div>
           <div class="right center">
             <ul class="center_li1">
               <li class="cur">已购买</li>
               <!-- <li>退出中</li>
               <li>已退出</li>
               <li>预定中</li> -->
             </ul>
              <div class="main" id="main1">
                <div class="main1">
                    <div class="fund_main2"> 
                     <!-- <ol class="fund_ol"> 
                      <li class="center_a">筛选时间 <a href="javaScript:;" class="cur">全部</a> <a href="javaScript:;">最近7天</a><a href="javaScript:;">1个月</a><a href="javaScript:;">3个月</a></li> 
                      <li> 选择日期<select name="" id=""><option value="">2014</option><option >2015</option><option >2016</option></select> 年<select name="" id=""><option value="">1</option><option value="">2</option><option value="">3</option><option value="">4</option><option value="">5</option><option value="">6</option><option value="">7</option><option value="">8</option><option value="">9</option><option value="">10</option><option value="">11</option><option value="">12</option></select> 月 到<select name="" id=""><option value="">2014</option><option >2015</option><option >2016</option></select></select> 年<select name="" id=""><option value="">1</option><option value="">2</option><option value="">3</option><option value="">4</option><option value="">5</option><option value="">6</option><option value="">7</option><option value="">8</option><option value="">9</option><option value="">10</option><option value="">11</option><option value="">12</option></select>月</li> 
                               <li><span><a href="">查询</a></span></li> 
                               <li><a href="">导出查询结果</a></li> 
                     </ol>  -->
                     <s:form name="f2"> 
    <input type="hidden"  id="currentPage" name="currentPage" value='<%=currentPage%>'/>
   <input type="hidden"  id="areaPage" name="areaPage" value='<%=areaPage%>'/>
   <input type="hidden" id="totalPage" name="totalPage" value='<%=totalPage %>' />
   <input type="hidden" id="user" name="user" value="myJxlc" />
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
                        <th>理财名称</th> 
                        <th>加入金额</th> 
                        <th>年利率</th> 
                        <th>已赚金额</th> 
                        <th>投标数</th> 
                        <th>投标日期</th> 
                        <th>状态</th> 
                       </tr> 
                      </thead> 
                      <tbody> 
                       <s:iterator value="jxlclist" var="vo">
                       <tr> 
                        <td><span class="width100white"><s:property value="#vo.bidname"/></span></td> 
                        <td><span class="width100white"><b><s:property value="#vo.joinmoney"/></b>(<b><s:property value="#vo.joinmoney/1000"/></b>份)</span></td> 
                        <td><s:property value="#vo.profit"/> </td> 
                        <td><span class="width100white"><big><s:property value="#vo.earnmoney"/></big></span></td> 
                        <td><span><b><s:property value="#vo.joinmoney/1000"/></b></span></td> 
                        <td><s:date name="#vo.buytime" format="yyyy-MM-dd" /></td> 
                        <td><s:property value="#vo.state"/></td> 
                       </tr> 
                       </s:iterator>  
                       <!--  
                       <tr style="background: #fafafa"> 
                        <td>20142</td> 
                        <td>1000.00(5份)</td> 
                        <td>12% </td> 
                        <td>52.00</td> 
                        <td>200</td> 
                        <td>2014-11-08</td> 
                        <td>还款中</td>
                       </tr> 
                       -->
                      </tbody> 
                     </table> 
                     <s:if test="jxlclist.size!=0">
                       <div class="pagination Pagination1">
   <a href="javascript:alastPage()" >上一页</a>
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
    <a href="javascript:anextPage()">下一页</a>
    </div>
    </s:if>
      <script type="text/javascript">
      function anextPage(){
    	  if(parseInt( document.getElementById("currentPage").value)<parseInt( document.getElementById("totalPage").value)){
              document.getElementById("currentPage").value= parseInt(document.getElementById("currentPage").value)+1;  
              if(parseInt(document.getElementById("currentPage").value)>parseInt(document.getElementById("areaPage").value*5)){
                document.getElementById("areaPage").value=parseInt(document.getElementById("areaPage").value)+1;
              }
             f2.submit();
          }
        	  else if(parseInt( document.getElementById("currentPage").value)==parseInt( document.getElementById("totalPage").value)){
        		  alert("当前已经是最后一页");
        	  }
          }
         
      
         function findByPage(pp){
           document.getElementById("currentPage").value=pp;
             f2.submit();
         }
         
         
         
          function alastPage(){
        	  if(parseInt( document.getElementById("currentPage").value)>1){
                  document.getElementById("currentPage").value= parseInt(document.getElementById("currentPage").value)-1;  
                  if(parseInt(document.getElementById("currentPage").value)<(parseInt(document.getElementById("areaPage").value-1)*5)+1){
                    document.getElementById("areaPage").value=   parseInt(document.getElementById("areaPage").value)-1;
                  }
                 f2.submit();
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
          <div class="right bottom">
              <h3>精选理财</h3>
              <p>优选精选理财计划为平台挑选的精选项目</p>
          </div>
        </div>
      </div>
     <!--我的理财-精选理财end--> 
     </div>
</div> 
  <!--footer start-->
    <%@include file="../pub/pub_footer.jsp" %> 
<!--footer end-->
</div>   
  </body>
</html>

