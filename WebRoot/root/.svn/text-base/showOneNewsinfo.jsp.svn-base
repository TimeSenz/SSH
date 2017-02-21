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

    <title>预览新闻</title>

</head>
<body  onload="showTime()">
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
        	   <li><strong class="icon11"><span><a href="/ZhongCaiBao/sms/findAll.action?currentPage=1">短信模版</a></span></strong></li>
          <li><strong class="icon11"><span><a href="/ZhongCaiBao/userinfo/findAll.action?currentPage=1">发送短信</a></span></strong></li>
             </ul>
      </div>
    </div>
    <div class="article">
        <div class="article_top">
          <div id="time" class="p"></div>
          <ul>
            <li>您当前的位置:</li>
            <li><a href="">首页</a>></li>
            <li>预览新闻</li>
          </ul>
        </div>
        <div id="mod_table">
            <div class="mod_table">
                <div class="mod_title">
                预览新闻
                </div>
                <div class="mod_table_main">
                    <s:form >
                   <!--  <table class="mod_table_main_ul">
                          <tr>
                            <th>I D：</th>
                            <th>标题：</th>
                            <th>内容：</th>
                            <th>时间：</th>
                            <th>备注：</th>
                            <th>类型：</th>
                            <th>录入人：</th>
                          </tr>
                          <tr>
                            <td><s:property value="newsinfo.id"/></td>
                            <td><s:property value="newsinfo.title"/></td>
                            <td><s:property value="newsinfo.contents" escape="false"/></td>
                            <td><s:date name="newsinfo.time" format="yyyy-MM-dd" /></td>
                            <td><s:property value="newsinfo.remark"/></td>
                            <td><s:property value="newsinfo.type"/></td>
                            <td><s:property value="newsinfo.cusinfo"/></td>
                          </tr>
                         
                     </table> --> 
                      <ul class="mod_table_main_ul">
                            <li><strong>I D：</strong><span style="font-size:16px;line-height: 32px;"></span></li>
                            <li><strong>标题：</strong><span style="font-size:16px;line-height: 32px;"><s:property value="newsinfo.title"/></span></li>
                           
                            <li><strong>时间：</strong><s:date name="newsinfo.time" format="yyyy-MM-dd" /></li>
                            <li><strong>备注：</strong><span style="font-size:16px;line-height: 32px;"><s:property value="newsinfo.remark"/></span></li>
                            <li><strong>类型：</strong><span style="font-size:16px;line-height: 32px;"><s:property value="newsinfo.type"/></span></li>
                           <!--  **动：新闻动态
                                    公：新闻公告 -->
                           <li><strong>录入人：</strong><span style="font-size:16px;line-height: 32px;"><s:property value="newsinfo.cusinfo"/></span></li>
                            <li><strong>内容：</strong><s:property value="newsinfo.contents" escape="false"/></li>
                           </ul>
                     </s:form>

                </div>
            </div> 
        </div>
    </div>
  </div>
<!-- <h3>预览新闻</h3>
   <s:form >
         <ul>
          <li><strong>I D：</strong><span style="font-size:16px;line-height: 32px;"><s:property value="newsinfo.id"/></span></li>
          <li><strong>标题：</strong><span style="font-size:16px;line-height: 32px;"><s:property value="newsinfo.title"/></span></li>
          <li><strong>内容：</strong><s:property value="newsinfo.contents" escape="false"/></li>
          <li><strong>时间：</strong><s:date name="newsinfo.time" format="yyyy-MM-dd" /></li>
          <li><strong>备注：</strong><span style="font-size:16px;line-height: 32px;"><s:property value="newsinfo.remark"/></span></li>
          <li><strong>类型：</strong><span style="font-size:16px;line-height: 32px;"><s:property value="newsinfo.type"/></span></li>
          **动：新闻动态
                   公：新闻公告
         <li><strong>录入人：</strong><span style="font-size:16px;line-height: 32px;"><s:property value="newsinfo.cusinfo"/></span></li>
        </ul> 
   </s:form> -->
</div>
<script src="js/houtai.js"></script>
</body>
</html>