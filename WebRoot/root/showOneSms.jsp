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
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
   <link type="text/css" rel="stylesheet" href="css/common.css">
    <link type="text/css" rel="stylesheet" href="css/houtai.css">
    <link rel="Shortcut Icon" href="../images/zcb-icon.ico">
     <script src="js/jquery-1.6.4.min.js"></script>

    <title>预览短信模板</title>

</head>
<body  onload="showTime()">
<div class="wrap">
    <div class="nav">
      <div class="logo">
        <a href=""></a>
      </div>
      <ul class="ul">
        <li class="cur"><a href="javaScript:;">预览短信模板</a></li>
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
            <li>预览短信模板</li>
          </ul>
        </div>
        <div id="mod_table">
            <div class="mod_table">
                <div class="mod_title">
                预览短信模板
                </div>
                <div class="mod_table_main">
                    <s:form >
                      <ul class="mod_table_main_ul">
                            <li><strong>I D：</strong><span style="font-size:16px;line-height: 32px;"><s:property value="sms.id"/></span></li>
                            <li><strong>标题：</strong><span style="font-size:16px;line-height: 32px;"><s:property value="sms.remark"/></span></li>
                            <li><strong>内容：</strong><span style="font-size:16px;line-height: 32px;"><s:property value="sms.contents"/></span></li>
                           <li><strong>录入人：</strong><span style="font-size:16px;line-height: 32px;"><s:property value="sms.cusinfo"/></span></li>
                           </ul>
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