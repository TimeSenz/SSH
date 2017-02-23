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
    <title>登录页面</title>
    <link rel="Shortcut Icon" href="../images/zcb-icon.ico">
<link type="text/css" rel="stylesheet" href="css/common.css">
<link type="text/css" rel="stylesheet" href="css/login.css">
<script src="js/jquery-1.6.4.min.js"></script>
<script type="text/javascript" src="js/cookie.js"></script>

<script type="text/javascript">
//二级菜单
    $(function(){

var cookieName_username = "LOGIN_USER_NAME_WXM";//用户名
  var cookieName_password = "LOGIN_PASS_WORD_WXM";//密码
  $(function() {
    var uname = getCookie(cookieName_username);
    var upassword = getCookie(cookieName_password);
    //这里只对用户名做判断就可以
    if (uname != null && !uname.toString().isnullorempty()) {
      //Cookie存在的话，先给用户名赋值，这里根据自己需求选择性赋值，密码可以不要
      GetObj('email').value = uname;//用户名
      GetObj('password').value = upassword;//密码
      GetObj('cbRememberId').checked = true;
    } else {
      GetObj('cbRememberId').checked = false;
    }
  });
    $('form').submit(function(){ 
    
      
         
      var mobile=$('#email').val();
      var password = $("#password").attr("value");
        var p=/^1[3-8]\d{9}$/;
  
      if(mobile.length==0)
      {
        $("#tips").html("请输入正确的E-Mail地址/手机号！");
         //document.form1.mobile.focus();
         return false;
      }    
      
      if(isNaN(mobile)){
        if(!/.+@.+\.[a-zA-Z]{2,4}$/.test(mobile)){
            $("#tips").html("请输入正确的E-Mail地址/手机号！");
            return false;
        }else{
            $("#tips").html(" ");
        }
      }else{
        if(!p.test(mobile))
        {
          $("#tips").html("请输入正确的E-Mail地址/手机号！");
          //document.form1.mobile.focus();
          return false;
        }
      }
      
           
          if( $("#password").val().length < 6){
              $("#tips").html("密码长度需6位以上");
              return false;
          }else{
               $("#tips").html(" ");
              
          }


          if (mobile == '' || password == '') {
      alert("请误填写空值测试！");//为了更好的看到效果，做一个非空限制
    } else {
      delCookie(cookieName_username);//删除用户名Cookie
      delCookie(cookieName_password);//删除密码Cookie
      var tsaveuser = GetObj('cbRememberId');
      if (tsaveuser.checked) {
        //根据个人需求选择性保存
        SetCookie(cookieName_username, mobile.trim(), 7);//保存用户名到Cookie中  保存7天
      }
     
    }
        
      
    })


	})
    
    
</script>

  </head>
  
  <body>
  <div class="pg-container">
  <!--头部-->
    <%@include file="../pub/pub_top.jsp" %> 
<!--头部end-->
<!--main开始-->
    <div class="login-main-container">
        <div class="w1000" >
        <img src="images/login_bg.jpg" class="login_img">
            <div class="r fright">
                <div class="content">
                    <h2>登录众财宝</h2>
                    
                    <s:form method="post" action="/userinfo/login.action" autocomplete="off" name="myform">
                    
                        <input type="text" name="userinfo.email" class="oInput name" id="email" placeholder="请输入手机号或邮箱" /></div>
                        <input type="password" name="userinfo.password" class="oInput pwd" id="password" placeholder="请输入密码" /></div>
                        <div class="alert" id="tips">

                          <s:if test="%{#session.loginflag==-1}">

                           账号或者密码错误，请确认后重新登录.                

                                    </s:if>    
                </div>
                        <p class="choice">
                        <a href="javascript:void(0);" onclick="alert('请联系众财宝客服团队~')" title="请联系众财宝客服团队"  class="get fright">忘记密码</a>
                       <input id="cbRememberId" type="checkbox" name="cbRememberId" />
    <label for="cbRememberId">记住用户名</label>
                        
                        </p>
                                  
                        <input type="submit" class="login_btn fwhite" id="popup-submit" value="立即登录" />
                        <div id="popup-captcha"></div>
                        <p class="reg">还没有账号？<a href="/ZhongCaiBao/userinfo/user.action?user=register">马上注册</a></p>
                    </s:form>
 
                </div>
                <!-- 为使用方便，直接使用jquery.js库 -->
<script src="http://libs.baidu.com/jquery/1.9.0/jquery.js"></script>
<!-- 引入封装了failback的接口--initGeetest -->
<script src="http://static.geetest.com/static/tools/gt.js"></script>

<script>

    var handlerPopup = function (captchaObj) {
        $("#popup-submit").click(function () {
            var validate = captchaObj.getValidate();
            if (!validate) {
                alert('请先完成验证！');
                return;
            }
            $.ajax({
                url: "VerifyLoginServlet", // 进行二次验证
                type: "post",
                dataType: "json",
                data: {
                    // 二次验证所需的三个值
                    geetest_challenge: validate.geetest_challenge,
                    geetest_validate: validate.geetest_validate,
                    geetest_seccode: validate.geetest_seccode
                },
                success: function (data) {
                   	console.log("11111");
                }
            });
        });
        // 弹出式需要绑定触发验证码弹出按钮
        captchaObj.bindOn("#popup-submit");

        // 将验证码加到id为captcha的元素里
        captchaObj.appendTo("#popup-captcha");

        // 更多接口参考：http://www.geetest.com/install/sections/idx-client-sdk.html
    };

    $.ajax({
        // 获取id，challenge，success（是否启用failback）
        url: "StartCaptchaServlet",
        type: "get",
        dataType: "json",
        success: function (data) {

            // 使用initGeetest接口
            // 参数1：配置参数
            // 参数2：回调，回调的第一个参数验证码对象，之后可以使用它做appendTo之类的事件
            initGeetest({
                gt: data.gt,
                challenge: data.challenge,
                product: "popup", // 产品形式，包括：float，embed，popup。注意只对PC版验证码有效
                offline: !data.success // 表示用户后台检测极验服务器是否宕机，一般不需要关注
            }, handlerPopup);
        }
    });

</script>
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
