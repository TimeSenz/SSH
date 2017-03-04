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
<title>客服   发送短信  借款人</title>
 <base href="<%=basePath%>">
    <link type="text/css" rel="stylesheet" href="css/common.css">
    <link type="text/css" rel="stylesheet" href="css/houtai.css">
    <link rel="Shortcut Icon" href="../images/zcb-icon.ico">
     <script src="js/jquery-1.6.4.min.js"></script>
     

</head>
<body   onload="showTime()" style="position: relative;">
<div class="opict" style="display:none" id="opict"></div>

<div class="wrap">
    <div class="nav">
      <div class="logo">
        <a href=""></a>
      </div>
      <ul class="ul">
        <li class="cur"><a href="javaScript:;">预览新闻</a></li>
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
          <li><strong class="icon11"><span><a href="/ZhongCaiBao/sms/findAll.action?currentPage=1">短信模版</a></span></strong></li>
   	      <li  class="cur"><strong class="icon11"><span><a href="/ZhongCaiBao/userinfo/findAll.action?currentPage=1">发送短信</a></span></strong></li>
   	      <ol class="ol2" style="display:block">
                <li><span><a href="/ZhongCaiBao/userinfo/findAll.action?currentPage=1">所有用户</a></span></li>
                <li><span><a href="/ZhongCaiBao/lcract/findAllLCR.action?currentPage=1">理财人</a></span></li>
                <li class="cur"><span><a href="/ZhongCaiBao/jkract/findAllJKR.action?currentPage=1">借款人</a></span></li>
              </ol>
          
          
          
          
        </ul>
      </div>
    </div>
    <div class="article">

      <!-- 弹窗 start -->
      <div id="model" style="display:none;">
      
      	<p onclick="closes()" style="position:absolute;right: -10px;top: -10px;"><img src="./images/close.png"></p>
       	<ul id="findAll">
          
          <!--<li>模式二</li>
          <li>模式三</li> -->
        </ul>
        <div id="text_con">
          <div class="text_con">
          <div class="prompt" id="promptNone" style="display:none">
		  	 <p onclick="closesPrompt()" style="position: absolute;right: -10px;top: -10px;"><img src="./images/close.png"></p>
		  	 <h3>确认发送吗</h3>
		  	 <p id="prompt"></p>
		  	 <p style="height:50px;"><input type="button" value="确定" onclick="onclickPrompt()" style="left: 67px;bottom: 20px;"><input type="button" value="取消" onclick="closesPrompt()" style="right: 67px;bottom: 20px;">
		  	 </p>
		  </div>
          <!-- <input type="text" name="captcha1" id="captcha" > -->
          <p id="content"></p><div id="pronumText"></div></div>
		  
        </div>
        <input type="button" value="确定" class="send_btn" id="confirm" onclick="onclickPronumName()"/>
      </div>
      <!-- 弹窗 end -->

        <div class="article_top">
          <div id="time" class="p"></div>
          <ul>
            <li>您当前的位置:</li>
            <li><a href="">首页</a>></li>
            <li>发送短信——借款人</li>
          </ul>
        </div>
        <div id="mod_table">
            <div class="mod_table">
                <div class="mod_title">
               发送短信——借款人
                </div>
                <div class="mod_table_main">

                        
                          <s:form name="f1">
                             <input type="hidden"  id="currentPage" name="currentPage" value='<%=currentPage%>'/>
                              <input type="hidden"  id="areaPage" name="areaPage" value='<%=areaPage%>'/>
                               <input type="hidden" id="totalPage" name="totalPage" value='<%=totalPage %>' />
                           <table>
                           
                           <tr>
                           <th>用户编号</th>
                           <th style="width:320px;">姓名</th>
                           <th>性别</th>
                           <th>信用等级</th>
                           <th>住址</th>
                           <th>标编号</th>
                           <th>标的状态</th>
                           <th>操作(全选/全不选)<input type="checkbox" value="全选" name="yes" id="yes"  onclick="selectAll()"></th>
                          <input type="hidden" id="textsmss" name="textsmss" value="" />
                          <input type="hidden" id="cids" name="cids" value="" />
                           </tr>
                           <s:if test="jkractList.size==0">
		<tr><td style="border:none;border: none;position: absolute;left: 50%;font-size: 25px;top: 230px;color:#555">暂无数据</td></tr>
   </s:if>
     <s:elseif test="%{#jkractList==''}">
		<tr><td style="border:none;border: none;position: absolute;left: 50%;font-size: 25px;top: 230px;color:#555">暂无数据</td></tr>
   </s:elseif>
                           <s:iterator value="jkractList" var="vo">
                           <tr>
                           <td><s:property value="#vo.u.userid"/></td>  
                           <td ><span class="span" style="width:320px;"><s:property value="#vo.u.name"/></span></td> 
                             <td><s:property value="#vo.u.sex"/></td> 
                              <td><s:property value="#vo.u.remark"/></td> 
                           <td><s:property value="#vo.u.address"/></td> 
                            <td><s:property value="#vo.b.id"/></td> 
                          <td><s:property value="#vo.b.state"/></td>
                      
                           <td><input type="checkbox" name="phone" id="checkBox" value="<s:property value="#vo.u.phone"/>" /></td>
                           
                           </tr>
                           
                           </s:iterator>
       
                         

                           <tr><td colspan="6" align="center"> <input type="button" value="发送" name="aa" onclick="checkvalue();findAllSms();" class="title4"></td></tr>

                             
                           
                           </table>
                           <s:if test="jkractList.size!=0">
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

 <script src="js/houtai.js"></script>
</body>
</html>

