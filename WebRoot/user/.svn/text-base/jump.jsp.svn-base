<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <link rel="Shortcut Icon" href="../images/zcb-icon.ico">
    <link type="text/css" rel="stylesheet" href="css/common.css">
    <link type="text/css" rel="stylesheet" href="css/reg.css">
    <script src="js/jquery-1.6.4.min.js"></script>
    <script type="text/javascript" language="javascript" src="js/png.js"></script>
    <!--[if IE 6]>
    <script src="js/png.js" type="text/javascript"></script>
    <script type="text/javascript">
       EvPNG.fix('img,.top-container-left a,.icons a,.ui-nav-dropdown span'); 
    </script>
    <![endif]-->
    <script type="text/javascript">
    //二级菜单
        $(function(){
                $(".ui-nav>li").hover(function(){
                        $(this).find("ul.ui-nav-dropdown-invest").stop(false,true).slideDown();
                    },function(){
                        $(this).find("ul.ui-nav-dropdown-invest").stop(false,true).slideUp();	
                        })
            })
        
    </script>
    <meta http-equiv="refresh" content="5;URL=<%=basePath%>" />
  </head>
  
  <body>
  <!--头部-->
    <%@include file="../pub/pub_top.jsp" %> 
<!--头部end-->
<!--main-->
	<div class="reg-main-container">
    	<div class="w1000">
        	<div class="top">
                <ul>
                    <li class="step_1"><em>1</em><strong>填写账户信息</strong></li>
                    <li class="step_1"><em>2</em><strong>手机验证信息</strong></li>
                    <li  class="step_1" style="margin-right:0"><em>3</em><strong>注册成功</strong></li>
                </ul>
                
            </div>
            <h3 class="reg_h3">实名认证已成功！</h3>
           <p class="reg_p">5秒后自动跳转至个人账户页面，或<a href="">直接跳转</a></p>
        </div>
    </div>
<!--main-->
    您将于5秒后跳转至首页！
<!--footer start-->
    <%@include file="../pub/pub_footer.jsp" %> 
<!--footer end-->
  </body>
</html>
