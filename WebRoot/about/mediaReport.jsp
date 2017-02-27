<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="dao.Userinfo" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
Userinfo user=(Userinfo)session.getAttribute("userinfo");
String loginflag=(String)session.getAttribute("loginflag");
Integer areaPage=(Integer)request.getAttribute("areaPage");
Integer currentPage=(Integer)request.getAttribute("currentPage");
Integer totalPage=(Integer)request.getAttribute("totalPage");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>媒体报道</title>
    <meta http-equiv="content-type" content="text/html" charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link type="text/css" rel="stylesheet" href="css/about.css">
    <link type="text/css" rel="stylesheet" href="css/common.css">
    <link rel="Shortcut Icon" href="../images/zcb-icon.ico">
    <script src="js/jquery-1.6.4.min.js"></script>
    <script type="text/javascript" language="javascript" src="js/png.js"></script>
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
<!--main开始-->
    <div class="main_box">
        <div class="w1000">
            <!--顶部标题-->
            <p class="top_title"><span><a href="/ZhongCaiBao">首页</a></span>&nbsp;&gt;&nbsp;<a href="/ZhongCaiBao/about/about.action?flag=com">关于我们</a>&nbsp;&gt;&nbsp;媒体报道</p>
            <div class="con fn_clear">
               <!--左侧Tab-->
                <div class="tab_btn_con fleft">
                    <a href="/ZhongCaiBao/about/about.action?flag=com" class="rrd-dimgray btn">公司简介</a>
                    <a href="/ZhongCaiBao/newsinfo/findByHuan.action?currentPage=1" class="rrd-dimgray btn">还款公告</a>
                    <a href="/ZhongCaiBao/newsinfo/findByGong.action?currentPage=1" class="rrd-dimgray btn">新闻公告</a>
                    <a href="/ZhongCaiBao/newsinfo/findByDong.action?currentPage=1" class="rrd-dimgray btn">最新动态</a>
                    <a href="/ZhongCaiBao/newsinfo/findByMei.action?currentPage=1" class="rrd-dimgray btn cur">媒体报道</a>
                    <a href="/ZhongCaiBao/about/about.action?flag=cooperate" class="rrd-dimgray btn">合作伙伴</a>                              
                    <a href="/ZhongCaiBao/home/home.action?home=questions" class="rrd-dimgray btn">帮助中心</a>
                    <a href="/ZhongCaiBao/about/about.action?flag=recruit" class="rrd-dimgray btn">招贤纳士</a>
                    <a href="/ZhongCaiBao/about/about.action?flag=contact" class="rrd-dimgray btn">联系我们</a>              
                </div>
                <!--右侧 内容-->
                <div class="right_con fleft">
                    <div class="right_nr">
                        <span>媒体报道</span><p class="line"></p>                        
                        <div>
                        
                        
                        
                                 
                  <s:form  name="f2" >
                     <input type="hidden"  id="currentPage" name="currentPage" value='<%=currentPage%>'/>
                    <input type="hidden"  id="areaPage" name="areaPage" value='<%=areaPage%>'/>
                     <input type="hidden" id="totalPage" name="totalPage" value='<%=totalPage %>' />
                 <ul class="ui-list-news">
                 <s:iterator value="moremeilist" var="vo">
                    <!--  <tr>
                    <td><s:a href="newsinfo/findOneById.action?id=%{#vo.id}"><s:property value="#vo.title"/></s:a></td> 
                    <td><s:date name="#vo.time" format="yyyy-MM-dd" /></td> 
                    </tr> -->
                        <li class="ui-list-item fn_clear">
                                <p class="decoration"></p>
                                <p class="fleft text">
                                    <s:a href="newsinfo/findOneById.action?id=%{#vo.id}" class="text-big rrd-dimgray" target="_blank"><s:property value="#vo.title"/></s:a>
                                    <p class="fleft darkgray" id="date"><s:date name="#vo.time" format="yyyy-MM-dd" /></p>
                                <!-- <p class="fleft darkgray" id="date"><s:date name="#vo.time" format="yyyy-MM-dd" /></p> -->
                            </li>

                 </s:iterator>
                 
              </ul>
                  <s:if test="moremeilist.size!=0">
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
        </div>
    </div>
<!--main结束-->
<!--footer start-->
    <%@include file="../pub/pub_footer.jsp" %> 
<!--footer end-->
<script src="js/houtai.js"></script>
  </body>
</html>
