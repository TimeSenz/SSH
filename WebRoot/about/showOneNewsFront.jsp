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
<title>咨讯中心</title>
    <meta http-equiv="content-type" content="text/html" charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="../js/jquery-1.6.4.min.js"></script>
    <link type="text/css" rel="stylesheet" href="../css/about.css">
    <link type="text/css" rel="stylesheet" href="../css/common.css">
    <link rel="Shortcut Icon" href="../images/zcb-icon.ico">
</head>
<body>
<%@include file="../pub/pub_top.jsp" %> 
<div class="main_box">
        <div class="w1000">
         <!--顶部标题-->
            <p class="top_title"><span><a href="/ZhongCaiBao">首页</a></span>&nbsp;&gt;&nbsp;<a href="/ZhongCaiBao/about/about.action?flag=com">关于我们</p>
            <div class="con fn_clear">
               <!--左侧Tab-->
                <div class="tab_btn_con fleft">
                    <a href="/ZhongCaiBao/about/about.action?flag=com" class="rrd-dimgray btn">公司简介</a>
                    <s:if test="newsinfo.type.equals(\"公\")">
                    <a href="/ZhongCaiBao/newsinfo/findByGong.action?currentPage=1" class="btn cur">新闻公告</a>   
                    <a href="/ZhongCaiBao/newsinfo/findByDong.action?currentPage=1" class="btn">最新动态</a>  
                    <a href="/ZhongCaiBao/newsinfo/findByHuan.action?currentPage=1" class="btn">还款公告</a> 
                    <a href="/ZhongCaiBao/newsinfo/findByMei.action?currentPage=1" class="btn">媒体报道</a> 
                    </s:if>
                    <s:if test="newsinfo.type.equals(\"动\")">
                    <a href="/ZhongCaiBao/newsinfo/findByGong.action?currentPage=1" class="btn">新闻公告</a>   
                    <a href="/ZhongCaiBao/newsinfo/findByDong.action?currentPage=1" class="btn cur">最新动态</a>  
                    <a href="/ZhongCaiBao/newsinfo/findByHuan.action?currentPage=1" class="btn">还款公告</a> 
                    <a href="/ZhongCaiBao/newsinfo/findByMei.action?currentPage=1" class="btn">媒体报道</a>
                    </s:if> 
                    <s:if test="newsinfo.type.equals(\"还\")">
                    <a href="/ZhongCaiBao/newsinfo/findByGong.action?currentPage=1" class="btn">新闻公告</a>   
                    <a href="/ZhongCaiBao/newsinfo/findByDong.action?currentPage=1" class="btn">最新动态</a>  
                    <a href="/ZhongCaiBao/newsinfo/findByHuan.action?currentPage=1" class="btn cur">还款公告</a> 
                    <a href="/ZhongCaiBao/newsinfo/findByMei.action?currentPage=1" class="btn">媒体报道</a>
                    </s:if>     
                     <s:if test="newsinfo.type.equals(\"媒\")">
                    <a href="/ZhongCaiBao/newsinfo/findByGong.action?currentPage=1" class="btn">新闻公告</a>   
                    <a href="/ZhongCaiBao/newsinfo/findByDong.action?currentPage=1" class="btn">最新动态</a>  
                    <a href="/ZhongCaiBao/newsinfo/findByHuan.action?currentPage=1" class="btn">还款公告</a> 
                    <a href="/ZhongCaiBao/newsinfo/findByMei.action?currentPage=1" class="btn cur">媒体报道</a>
                    </s:if>                        
                    <a href="/ZhongCaiBao/about/cooperate.jsp" class="rrd-dimgray btn">合作伙伴</a>                              
                    <a href="/ZhongCaiBao/home/questions.jsp" class="rrd-dimgray btn">帮助中心</a>
                    <a href="/ZhongCaiBao/about/recruit.jsp" class="rrd-dimgray btn">招贤纳士</a>
                    <a href="/ZhongCaiBao/about/about.action?flag=contact" class="rrd-dimgray btn">联系我们</a>                
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
   <!--footer start-->
    <%@include file="../pub/pub_footer.jsp" %> 
<!--footer end-->
</body>
</html>
