<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 1.0 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
Integer totalPage=(Integer)request.getAttribute("totalPage");
Integer areaPage=(Integer)request.getAttribute("areaPage");
Integer currentPage=(Integer)request.getAttribute("currentPage");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>短信模版</title>
 <base href="<%=basePath%>">
    <link type="text/css" rel="stylesheet" href="css/common.css">
    <link type="text/css" rel="stylesheet" href="css/houtai.css">
    <link rel="Shortcut Icon" href="../images/zcb-icon.ico">
  <script  type="text/javascript">
   function add(){
         document.forms[0].action="<%=path%>/root/addSms.jsp";
         document.forms[0].submit();
   }
   </script>
</head>
<body   onload="showTime()">

<div class="wrap">
    <div class="nav">
      <div class="logo">
        <a href=""></a>
      </div>
      <ul class="ul">
        <li class="cur"><a href="javaScript:;">短信模版</a></li>
      </ul>
      <p class="p"><a href="/ZhongCaiBao/root/choiceLogin.jsp">退出</a></p>
  </div>
  <div class="main">
      <div class="aside">
      <div class="aside_top">
        <input type="text" placeholder="搜索">
        <dl>
          <dt></dt>
          <dd><p><s:property value="#session.cusinfo.name"/><span><a>欢迎您</a></span></p>
          <p><span>新消息(<i>0</i>)</span><span>日报(<i>0</i>)</span></p></dd>
        </dl>
      </div>
      <div class="aside_main">
         <ul>
          
          
          
          
          
          
          <li><strong class="icon11"><span><a href="/ZhongCaiBao/newsinfo/findAllByDong.action?currentPage=1">新闻动态</a></span></strong></li>
          <li><strong class="icon11"><span><a href="/ZhongCaiBao/newsinfo/findAllByGong.action?currentPage=1">新闻公告</a></span></strong></li>
          <li><strong class="icon11"><span><a href="/ZhongCaiBao/newsinfo/findAllByHuan.action?currentPage=1">还款公告</a></span></strong></li>
          <li><strong class="icon11"><span><a href="/ZhongCaiBao/newsinfo/findAllByMei.action?currentPage=1">媒体报道</a></span></strong></li>
          <li><strong class="icon11"><span><a href="/ZhongCaiBao/root/showCoupon.jsp">优惠券</a></span></strong></li>
          <li  class="cur"><strong class="icon11"><span><a href="/ZhongCaiBao/sms/findAll.action?currentPage=1">短信模版</a></span></strong></li>
          <li><strong class="icon11"><span><a href="/ZhongCaiBao/userinfo/findAll.action?currentPage=1">发送短信</a></span></strong></li>
   	      <ol class="ol2" style="display:none">
                <li><span><a href="/ZhongCaiBao/userinfo/findAll.action?currentPage=1">所有用户</a></span></li>
                <li><span><a href="/ZhongCaiBao/lcract/findAllLCR.action?currentPage=1">理财人</a></span></li>
                <li ><span><a href="/ZhongCaiBao/jkract/findAllJKR.action?currentPage=1">借款人</a></span></li>
              </ol>
          
          
          
        </ul>
      </div>
    </div>
    <div class="article">
        <div class="article_top">
          <div id="time" class="p"></div>
          <ul>
            <li>您当前的位置:</li>
            <li><a href="">首页</a>></li>
            <li>新闻动态</li>
          </ul>
        </div>
        <div id="mod_table">
            <div class="mod_table">
                <div class="mod_title">
               新闻动态
                </div>
                <div class="mod_table_main">
                        <s:form>
                        <div class="mod_h3"> 
                           <input type="button" value="新增" onclick="add()" />
                          </div>
                        </s:form>
                        
                        
                          <s:form name="f1">
                             <input type="hidden"  id="currentPage" name="currentPage" value='<%=currentPage%>'/>
                              <input type="hidden"  id="areaPage" name="areaPage" value='<%=areaPage%>'/>
                               <input type="hidden" id="totalPage" name="totalPage" value='<%=totalPage %>' />
                           <table>
                           
                           <tr>
                           <th>编号</th>
                           <th style="width:320px;">标题</th>
                           <th>录入人</th>
                           <th>预览</th>
                           <th>修改</th>
                           <th>删除</th>
                           </tr>
                           <s:if test="smslist.size==0">
		<tr><td style="border:none;border: none;position: absolute;left: 50%;font-size: 25px;top: 230px;color:#555">暂无数据</td></tr>
   </s:if>
     <s:elseif test="%{#smslist==''}">
		<tr><td style="border:none;border: none;position: absolute;left: 50%;font-size: 25px;top: 230px;color:#555">暂无数据</td></tr>
   </s:elseif>
                           <s:iterator value="smslist" var="vo">
                           <tr>
                           <td><s:property value="#vo.id"/></td>  
                           <td ><span class="span" style="width:320px;"><s:property value="#vo.remark"/></span></td>   
                          
                           <td><s:property value="#vo.cusinfo"/></td> 
                           <td title="预览"><s:a href="sms/findoneById.action?id=%{#vo.id}" cssClass="title5"></s:a></td>
                           <td title="修改"><s:a href="sms/findById.action?id=%{#vo.id}" cssClass="title2"></s:a></td>
                           <td><s:a href="sms/deleteSms.action?id=%{#vo.id}" onClick="{if(confirm('确实要删除吗？')){return true;}return false;}" cssClass="title4">删除</s:a></td>
                           </tr>
                           
                           </s:iterator>
                           </table>
                           <s:if test="smslist.size!=0">
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
             f1.submit();
          }
        	  else if(parseInt( document.getElementById("currentPage").value)==parseInt( document.getElementById("totalPage").value)){
        		  alert("当前已经是最后一页");
        	  }
          }
         
      
         function findByPage(pp){
           document.getElementById("currentPage").value=pp;
             f1.submit();
         }
         
         
         
          function alastPage(){
        	  if(parseInt( document.getElementById("currentPage").value)>1){
                  document.getElementById("currentPage").value= parseInt(document.getElementById("currentPage").value)-1;  
                  if(parseInt(document.getElementById("currentPage").value)<(parseInt(document.getElementById("areaPage").value-1)*5)+1){
                    document.getElementById("areaPage").value=   parseInt(document.getElementById("areaPage").value)-1;
                  }
                 f1.submit();
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
<!-- 

   <s:form>
   <table>
     <tr>
      <td><input type="button" value="新增" onclick="add()" /></td>
     </tr>
   </table>
   </s:form>
  
  
  <s:form name="f1">
   <table border="2">
   <tr>新闻动态</tr>
   <tr>
   <td>编号</td>
   <td>标题</td>
   <td>时间</td>
   <td>录入人</td>
   <td>预览</td>
   <td>修改</td>
   <td>删除</td>
   </tr>
   <s:iterator value="donglist" var="vo">
   <tr>
   <td><s:property value="#vo.id"/></td>  
   <td><s:property value="#vo.title"/></td> 
      <td><s:date name="#vo.time" format="yyyy-MM-dd" /></td> 
   <td><s:property value="#vo.cusinfo"/></td> 
   <td><s:a href="newsinfo/findoneById.action?id=%{#vo.id}" cssClass="title2">预览</s:a></td>
   <td><s:a href="newsinfo/findById.action?id=%{#vo.id}" cssClass="title2">修改</s:a></td>
   <td><s:a href="newsinfo/deleteNewsinfo.action?id=%{#vo.id}" onClick="{if(confirm('确实要删除吗？')){return true;}return false;}" cssClass="title4">删除</s:a></td>
   </tr>
   </s:iterator>
   </table>
  </s:form>


 <s:form name="f2">
   <table border="2">              
   <tr>新闻公告</tr>
   <tr>
   <td>编号</td>
   <td>标题</td>
   <td>时间</td>
   <td>录入人</td>
   <td>预览</td>
   <td>修改</td>
   <td>删除</td>
   </tr>
   <s:iterator value="gonglist" var="vo">
   <tr>
   <td><s:property value="#vo.id"/></td>  
   <td><s:property value="#vo.title"/></td> 
   <td><s:date name="#vo.time" format="yyyy-MM-dd" /></td>
   <td><s:property value="#vo.cusinfo"/></td> 
   <td><s:a href="newsinfo/findoneById.action?id=%{#vo.id}" cssClass="title2">预览</s:a></td>
   <td><s:a href="newsinfo/findById.action?id=%{#vo.id}" cssClass="title2">修改</s:a></td>
   <td><s:a href="newsinfo/deleteNewsinfo.action?id=%{#vo.id}" onClick="{if(confirm('确实要删除吗？')){return true;}return false;}" cssClass="title4">删除</s:a></td>
   </tr>
   </s:iterator>
   </table>
 </s:form> -->
 <script src="js/houtai.js"></script>
</body>
</html>

