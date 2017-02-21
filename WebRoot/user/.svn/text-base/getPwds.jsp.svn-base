<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String loginflag=(String)session.getAttribute("loginflag");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>忘记密码</title>
    <link rel="Shortcut Icon" href="../images/zcb-icon.ico">
<link type="text/css" rel="stylesheet" href="css/common.css">
<link rel="stylesheet" type="text/css" href="css/getPwd.css">
<script src="js/jquery-1.6.4.min.js"></script>
<script type="text/javascript" src="js/getPwd.js"></script>
<script type="text/javascript" language="javascript" src="js/png.js"></script>
<!--[if IE 6]>
<script src="js/png.js" type="text/javascript"></script>
<script type="text/javascript">
   EvPNG.fix('img,.top-container-left a,.icons a,.ui-nav-dropdown span,.ui-footer-verification a'); 
</script>
<![endif]-->

</head>
  <body onload="createCode()">
  <!--头部-->
    <%@include file="../pub/pub_top.jsp" %> 
<!--头部end-->
<!--main开始-->
    <div class="login-main-container">
        <div class="w1000">
          <div class="btn_box">
        <a href="/ZhongCaiBao/user/getPwd.jsp" class="btn fleft">使用邮箱找回密码</a>
        <a href="/ZhongCaiBao/user/getPwds.jsp" class="btn fleft cur">使用手机号找回密码</a>
          </div>
          <div class="line">
            <span class="bottom b2"></span>
            <span class="bottom b1" style="display:none"></span>
          </div>
          <div class="con_box clear">
            <div class="con">
         <form action=""method="post" autocomplete="off" onSubmit="return check7();">
                      <div class="ui-form-item">
                        <label class="ui-label"><span >*</span>手机号码</label>
                        <input type="text" placeholder="请输入绑定手机号码" id="phone" >
                        <span id="tips">
                          
                        </span>
                      </div>
                      <div class="ui-form-item">
                        <label class="ui-label"><span class="ui-form-required">*</span>验证码</label>
                        <input type="text" class="ui-input" placeholder="请输入验证码" id="inputCode" onfocus="javascript:inputCode();">
                        <input type="button" id="checkCode" class="code" onClick="createCode()" value="javascript:code" />
                      <a href="javaScript:;" onclick="createCode()" class="form_a" ><img src="images/shuaxin.png" style="width:50px;height:20px" /></a>
                      <span id="tips1"></span>
                      </div>
                      <div class="ui-form-item btn1">
                        <input type="submit" value="提 交" class="ui-button">
                      </div> 
               <p>若您无法使用上述方法找回，请联系客服400-007-1378</p>
          </form>
            </div>
<!--             <div class="con" style="display:none">
          <form action="" autocomplete="off">
  <div class="ui-form-item">
                        <label class="ui-label"><span >*</span>手机号码</label>
                        <input type="text" placeholder="请输入绑定手机号码">
                      </div>
                      <div class="ui-form-item">
                        <label class="ui-label"><span class="ui-form-required">*</span>验证码</label>
                        <input type="text" class="ui-input" placeholder="请输入验证码">
                        <input type="button" id="checkCode1" class="code" onClick="createCode1()" value="javascript:code"/>
                      <a href="javaScript:;" onclick="createCode1()" class="form_a" ><img src="images/shuaxin.png" style="width:50px;height:20px"></a>
                      </div>
                      <div class="ui-form-item btn1">
                        <input type="submit" value="提 交" class="ui-button">
                      </div> 
          <p>若您无法使用上述方法找回，请联系客服400-007-1378</p>
          </form>
</div> -->
          </div>
        </div>
    </div>
<!--main结束-->
  <!--footer start-->
    <%@include file="../pub/pub_footer.jsp" %> 
<!--footer end-->
<script type="text/javascript" src="js/md5.js"></script>
<script type="text/javascript" src="js/embed.js"></script>
  </body>
</html>