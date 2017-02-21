<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 1.0 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<title>关于我们</title>
    <meta http-equiv="content-type" content="text/html" charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link type="text/css" rel="stylesheet" href="../css/about.css">
    <link type="text/css" rel="stylesheet" href="../css/common.css">
    <link rel="Shortcut Icon" href="../images/zcb-icon.ico">
</head>
<body>
<%@include file="../pub/pub_top.jsp" %> 
<div class="main_box">
        <div class="w1000">
         <!--顶部标题-->
            <p class="top_title"><span>首页</span>&nbsp;&gt;&nbsp;关于我们&nbsp;&gt;&nbsp;最新公告</p>
            <div class="con">
               <!--左侧Tab-->
                <div class="tab_btn_con fleft">
                    <a href="/ZhongCaiBao/about/about.action?flag=group" class="btn">集团介绍</a>
                    <a href="/ZhongCaiBao/about/about.action?flag=structure" class="btn">集团架构</a>
                    <a href="/ZhongCaiBao/about/about.action?flag=culture" class="btn">企业文化</a>
                    <a href="/ZhongCaiBao/about/about.action?flag=com" class="btn ">公司介绍</a>
                    <a href="/ZhongCaiBao/about/about.action?flag=supports" class="btn">公司理念</a>
                    <a href="/ZhongCaiBao/about/about.action?flag=contact" class="btn">联系我们</a>

                     <s:if test="newsinfo.type.equals(\"公\")">

                    <a href="/ZhongCaiBao/newsinfo/findByGong.action?currentPage=1" class="btn cur">新闻公告</a>   
                    <a href="/ZhongCaiBao/newsinfo/findByDong.action?currentPage=1" class="btn">最新动态</a>   
                     </s:if>


                          <s:if test="newsinfo.type.equals(\"动\")">
                        <a href="/ZhongCaiBao/newsinfo/findByGong.action?currentPage=1" class="btn">新闻公告</a>   
                        <a href="/ZhongCaiBao/newsinfo/findByDong.action?currentPage=1" class="btn cur">最新动态</a>  
                          </s:if> 
                                 
                </div>
            
            <!--右侧 内容-->
                <div class="right_con fleft">
                    <div class="right_nr">
                        <span><s:property value="newsinfo.title"/></span><p class="line" style="margin-bottom:10px"></p>  
                    </div>
                    <ul>
                      <li><span style="float:right"><s:date name="newsinfo.time" format="yyyy-MM-dd" /></span>
                     
                          </li>
                    </ul>
                    <div class="article fn-clear"><s:property value="newsinfo.contents" escape="false"/>
                    </div>
                </div>
            </div>
        </div>
</div>
<!--  <s:form >
        <ul>
        <s:if test="newsinfo.type.equals(\"公\")">新闻公告</s:if>
          <s:if test="newsinfo.type.equals(\"动\")">最新动态</s:if> 
         <li><strong>标题：</strong><span style="font-size:16px;line-height: 32px;"><s:property value="newsinfo.title"/></span></li>
         <li><strong>内容：</strong><s:property value="newsinfo.contents" escape="false"/></li>
         <li><strong>时间：</strong><s:date name="newsinfo.time" format="yyyy-MM-dd" /></li>
        
    
        <li><strong>录入人：</strong><span style="font-size:16px;line-height: 32px;"><s:property value="newsinfo.cusinfo"/></span></li>
       </ul> 
  </s:form> -->

   <!--footer start-->
    <%@include file="../pub/pub_footer.jsp" %> 
<!--footer end-->
</body>
</html>
