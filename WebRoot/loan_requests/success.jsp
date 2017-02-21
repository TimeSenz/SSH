<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="dao.Userinfo" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!doctype html>
<html>
  <head>
    <meta http-equiv="content-type" content="text/html" charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>众财宝-您的贴心理财专！网络投资平台！网络贷款平台！</title>
    <meta name="keywords" content="众财宝|理财|投资|贷款|P2P贷款|小额投资|金融投资|如何理财投资">
    <meta name="description" content="众财宝(www.zhongcaibao.net)是一家从事P2P信贷、资产管理、项目投资、经贸咨询、技术推广、企业管理咨询、房地产信息咨询的专业机构，为中小企业提供融资新渠道，更为个人提供创新型投资理财服务。">
    <link type="text/css" rel="stylesheet" href="../css/common.css">
    <link rel="Shortcut Icon" href="../images/zcb-icon.ico">
    <script type="text/javascript" language="javascript" src="../js/png.js"></script>
    <!--[if IE 6]>
    <script src="js/png.js" type="text/javascript"></script>
    <script type="text/javascript">
       EvPNG.fix('img,.top-container-left a,.icons a,.ui-nav-dropdown span,.state h3'); 
    </script>
    <![endif]-->
    <script src="../js/jquery-1.6.4.min.js"></script>
    <script type="text/javascript">
    //二级菜单
      $(function(){
          $(".ui-nav>li").hover(function(){
              $(this).find("ul.ui-nav-dropdown-invest").stop(false,true).slideDown();
            },function(){
              $(this).find("ul.ui-nav-dropdown-invest").stop(false,true).slideUp(); 
              })
        })
      //倒计时
 
    window.onload =function() {
    var i = 4;
            setInterval(function(){               
            if(i == 0) {
                    location.href = "/ZhongCaiBao/";
                }
                document.getElementById("time").innerHTML = i--;
 
            },1000);
        };
    </script>
    <style type="text/css">
		.req_suc{width:800px;border:1px solid #e3e3e3;background: #fffdf3;height:300px;margin:30px 100px;text-align: center;}
		.req_suc h3{font-weight: 500;color:#2da7e0;font-size:24px;margin-top:50px;}
		.req_suc p{margin:20px 0 80px;}
		.req_suc a{color:#2da7e0;}
		.req_suc span#time{margin-right: 5px;}
    </style>
  </head>
    
  <body>
    <div class="pg-container">
    <!--头部-->
      <%@include file="../pub/pub_top.jsp" %> 
    <!--头部end-->
    <!--main开始-->
    <div class="main_box main_bg">
        <div class="w1000 content_bg">
		    <div class="req_suc">
			  <h3>申请提交成功！</h3>
			  <p>我们会在三个工作日内联系您，如有疑问请拨打客服电话400-007-1378</p>
			  <div><span id="time">5</span>秒后自动跳转至首页，或<a href="/ZhongCaiBao/">直接跳转</a></div>
			  <meta http-equiv="refresh" content="5;url=/ZhongCaiBao/">
		    </div>
		</div>
    </div>
    <!--main结束-->
    <!--footer start-->
        <%@include file="../pub/pub_footer.jsp" %> 
    <!--footer end-->
    </div>
  </body>
</html>