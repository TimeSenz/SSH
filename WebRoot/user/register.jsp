<%@page import="com.opensymphony.xwork2.ActionContext"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>注册</title>
<link type="text/css" rel="stylesheet" href="css/common.css">
<link type="text/css" rel="stylesheet" href="css/reg.css">
<link rel="Shortcut Icon" href="../images/zcb-icon.ico">
<script src="js/jquery-1.6.4.min.js"></script>
<script type="text/javascript" language="javascript" src="js/png.js"></script>
<!--[if IE 6]>
<script src="js/png.js" type="text/javascript"></script>
<script type="text/javascript">
   EvPNG.fix('img,.top-container-left a,.icons a,.ui-nav-dropdown span'); 
</script>
<![endif]-->
<style type="text/css">
.ywz_zhucexiaobo{width:620px;}
.ywz_zhuce_youjian{float:left;width:100px;margin: 5px 0 0 0;font-size:14px;text-align:right;}
.ywz_zhuce_xiaoxiaobao{float:left;width:226px;}
.ywz_zhuce_kuangzi{float:left;width:226px;height:38px;color:#171717;}
.ywz_zhuce_huixian{float:left;background:#d6d3d3;width:62px;height:4px;margin-top:5px;_margin-top:0px;margin-left:5px;_height:2px;font-size:0px;}
.ywz_zhuce_hongxianwenzi{float:left;width:62px;margin-left:5px;text-align:center;color:#b0adad;font-size:12px;}

.ywz_zhuce_kuangwenzi1{height: 42px;
width: 240px;
padding-left: 50px;
border: 1px #ccc solid;
border-radius: 3px;
vertical-align: middle;}/*框*/

.ywz_zhuce_hongxian{float:left;background:#ff3300;width:62px;height:4px;margin-top:5px;margin-left:5px;_margin-top:0px;_height:2px;font-size:0px;}
.ywz_zhuce_hongxian2{float:left;background: #099;width:62px;height:4px;margin-top:5px;margin-left:5px;_margin-top:0px;_height:2px;font-size:0px;}
.ywz_zhuce_hongxian3{float:left;background: #060;width:62px;height:4px;margin-top:5px;margin-left:5px;_margin-top:0px;_height:2px;font-size:0px;}

.ywz_zhuce_yongyu1{float:left;color: #C00;font-size:12px;padding-left:10px;margin-top:10px;_padding-left:0px;}/*后面的文字*/
.ywz_zhuce_yongyu1 a{ color:#C00;text-decoration:none;}
.ywz_zhuce_yongyu1 a:hover{ color:#C00;}
</style>

  </head>
  <script type="text/javascript">
var xhr;

function doResponse(){
  //alert("doResponse()");
  if(xhr.readyState==4&&xhr.status==200){
    
    var txt=xhr.responseText;
    alert(txt);
  }
  
}
</script>
  <body onLoad="createCode();">
   <div class="pg-container">
  <!--头部-->
    <%@include file="../pub/pub_top.jsp" %> 
<!--头部end-->
<!--main-->
    <div class="reg-main-container main_box">
        <div class="w1000">
            <div class="top">
                <ul>
                    <li class="step_1"><em>1</em><strong>填写账户信息</strong></li>
                    <li class="step_2"><em>2</em><strong>手机验证信息</strong></li>
                    <li  class="step_2" style="margin-right:0"><em>3</em><strong>注册成功</strong></li>
                </ul>
                
            </div>
           
             <form id="ajax_form" method="post" autocomplete="off" onSubmit="return check3();" action="<%=path %>/userinfo/register.action">
                  <ol class="form_ol">
                 
                      <li><strong><img src="images/icon_red.png" alt=""><i>昵称</i></strong>
                          <input value="<s:property value="userinfo.nickname"/>" type="text" name="userinfo.nickname" placeholder="昵称" id="userinfo.nickname" onfocus="javascript:checkuname2();" onblur="checkuser2(this.value,1);" class="input input1"/>
                          <span id="span4s" class="spans"></span>
                      </li>                     
                      <li style="padding-bottom: 0;"><strong><img src="images/icon_red.png" alt=""><i>登录密码</i></strong>
                          <input value="<s:property value="userinfo.password"/>" name="userinfo.password" type="password"  placeholder="输入6位以上密码"  id="tbPassword" class="ywz_zhuce_kuangwenzi1 input3" onfocus="javascript:checkpasswords11();" onblur="checkpasswordss2(this.value);"/><span id="span2s" class="spans"></span> </li>
                 <li style="padding-bottom: 0;">     <div class="ywz_zhucexiaobo">

    <div class="ywz_zhuce_xiaoxiaobao">
      <div class="ywz_zhuce_huixian" id='pwdLevel_1'> </div>
      <div class="ywz_zhuce_huixian" id='pwdLevel_2'> </div>
      <div class="ywz_zhuce_huixian" id='pwdLevel_3'> </div>
      <div class="ywz_zhuce_hongxianwenzi"> 弱</div>
      <div class="ywz_zhuce_hongxianwenzi"> 中</div>
      <div class="ywz_zhuce_hongxianwenzi"> 强</div>
    </div>
    <div class="ywz_zhuce_yongyu1">
      <span id="pwd_tip" style="color: #898989"><font style="color: #F00">*</font> 6-16位，由字母（区分大小写）、数字、符号组成</span> <span id="pwd_err" style="color: #f00; display:none;">6-16位，由字母（区分大小写）、数字、符号组成</span>
    </div>
  </div></li>
                      <li><strong><img src="images/icon_red.png" alt=""><i>重复密码</i></strong>
                     

                      <input value="<s:property value="userinfo.password"/>" type="password" name="confirm_password" maxlength="20" placeholder="再次输入密码" id="pwd2s" class="input input3" onfocus="javascript:checkpasswords22();" onblur="javascript:checkpassword22(this.value);" /><span id="span3s" class="spans"></span>
                      </li>
                     
                      <li><strong><img src="images/icon_red.png" alt=""><i>手机号码</i></strong>
                      <input type="text"  value="<s:property value="userinfo.phone"/>" id="userinfo.phone" placeholder="输入手机号码" class="input input2" onfocus="javascript:checkPhone12();" onblur="javascript:checkPhone1s2(this.value);" name="userinfo.phone" /><span id="span5s" class="spans"></span>
                      <span class="error"></span>            
                      </li>
                      <!-- 验证码begin -->
                      <li>
                      	 <strong><img src="images/icon_red.png" alt=""><i>验证码</i></strong>
                      	 <input id="userinfo.remark" type="text" placeholder="验证码" value="" name="userinfo.remark" class="input_text">
                     	 <!--<s:textfield name="random" size="10px"></s:textfield>-->
						 <span style="margin-left:5px;background:#2da7e0;display:none" class="getPwd_btn" id="getPwd_btn" onclick="getPwd_btn();"  />获取验证码</span><span class="time" id="time_con" style="display:none"><i id="time">30</i> 秒后可重新获取验证码</span>
						                      	 <span style="margin-left:5px;background:#ddd;display:inline-block;cursor: default;" class="getPwd_btn" id="getPwd_btn_hide"   />获取验证码</span><span class="time" id="time_con" style="display:none"><br/>
						 
						 <span id="span8s" class="spans" ></span>
                      </li>
					  <!-- 验证码end -->
					  
                      <li style="padding:0px;padding-left:100px;height:40px;"><input type="checkbox" style="margin-right:5px;" id="checkbox_name">我已经阅读并同意 <span  class="input_span"><a href="/ZhongCaiBao/agreement.html" target="_blank">《众财宝网站服务协议》</a></span></li>
            				<input type="hidden" name="flag" id="flag" value="register"/>
                      <li><input type="submit" value="注册" class="input_a" id="reg-btn" onclick="validate()">已有账号？<a href="/ZhongCaiBao/userinfo/user.action?user=login">立即登录</a></li>
                  </ol>
              </form>                                                                                 
        </div>
    </div>
    
    </div>
    <script type="text/javascript">
  $('#tbPassword').focus(function () {
    $('#pwdLevel_1').attr('class', 'ywz_zhuce_hongxian');
    $('#tbPassword').keyup();
  });

  $('#tbPassword').keyup(function () {
    var __th = $(this);
$('#pwd_tip').text("dasd");
    if (!__th.val()) {
      $('#pwd_tip').hide();
      $('#pwd_err').show();
      Primary();
      return;
    }
    if (__th.val().length < 6) {
      $('#pwd_tip').hide();
      $('#pwd_err').show();
      Weak();
      return;
    }
    var _r = checkPassword(__th);
    if (_r < 1) {
      $('#pwd_tip').hide();
      $('#pwd_err').show();
      Primary();
      return;
    }

    if (_r > 0 && _r < 2) {
      Weak();
    } else if (_r >= 2 && _r < 4) {
      Medium();
    } else if (_r >= 4) {
      Tough();
    }

    $('#pwd_tip').hide();
    $('#pwd_err').hide();
  });

 

  function Primary() {
    $('#pwdLevel_1').attr('class', 'ywz_zhuce_huixian');
    $('#pwdLevel_2').attr('class', 'ywz_zhuce_huixian');
    $('#pwdLevel_3').attr('class', 'ywz_zhuce_huixian');
  }

  function Weak() {
    $('#pwdLevel_1').attr('class', 'ywz_zhuce_hongxian');
    $('#pwdLevel_2').attr('class', 'ywz_zhuce_huixian');
    $('#pwdLevel_3').attr('class', 'ywz_zhuce_huixian');
  }

  function Medium() {
    $('#pwdLevel_1').attr('class', 'ywz_zhuce_hongxian');
    $('#pwdLevel_2').attr('class', 'ywz_zhuce_hongxian2');
    $('#pwdLevel_3').attr('class', 'ywz_zhuce_huixian');
  }

  function Tough() {
    $('#pwdLevel_1').attr('class', 'ywz_zhuce_hongxian');
    $('#pwdLevel_2').attr('class', 'ywz_zhuce_hongxian2');
    $('#pwdLevel_3').attr('class', 'ywz_zhuce_hongxian3');
  }




  function checkPassword(pwdinput) {
    var maths, smalls, bigs, corps, cat, num;
    var str = $(pwdinput).val()
    var len = str.length;

    var cat = /.{16}/g
    if (len == 0) return 1;
    if (len > 16) { $(pwdinput).val(str.match(cat)[0]); }
    cat = /.*[\u4e00-\u9fa5]+.*$/
    if (cat.test(str)) {
      return -1;
    }
    cat = /\d/;
    var maths = cat.test(str);
    cat = /[a-z]/;
    var smalls = cat.test(str);
    cat = /[A-Z]/;
    var bigs = cat.test(str);
    var corps = corpses(pwdinput);
    var num = maths + smalls + bigs + corps;

    if (len < 6) { return 1; }

    if (len >= 6 && len <= 8) {
      if (num == 1) return 1;
      if (num == 2 || num == 3) return 2;
      if (num == 4) return 3;
    }

    if (len > 8 && len <= 11) {
      if (num == 1) return 2;
      if (num == 2) return 3;
      if (num == 3) return 4;
      if (num == 4) return 5;
    }

    if (len > 11) {
      if (num == 1) return 3;
      if (num == 2) return 4;
      if (num > 2) return 5;
    }
  }

  function corpses(pwdinput) {
    var cat = /./g
    var str = $(pwdinput).val();
    var sz = str.match(cat)
    for (var i = 0; i < sz.length; i++) {
      cat = /\d/;
      maths_01 = cat.test(sz[i]);
      cat = /[a-z]/;
      smalls_01 = cat.test(sz[i]);
      cat = /[A-Z]/;
      bigs_01 = cat.test(sz[i]);
      if (!maths_01 && !smalls_01 && !bigs_01) { return true; }
    }
    return false;
  }
</script>
    <script  type="text/javascript">
  //倒计时 
    function getPwd_btn(){
    	//alert("aaa");
 	  var phone=document.getElementById("userinfo.phone").value;
	  var timenow = new Date().getTime(); 
    	$.ajax({
    		   url: "<%=path %>/rand/randa.action",
    		   type: "POST", 
    		   data: "d="+timenow+"&phone="+phone, 
    		   success: function(data){ 
    		     //alert(data);//返回的数据	 
    		   }  
    		});
	  
      var getPwd_btn=document.getElementById("getPwd_btn");
      var timer=null;
    var i = 29;
            timer=setInterval(function(){ 
                document.getElementById("time_con").style.display="inline-block"        
                document.getElementById("time").innerHTML = i--;
                getPwd_btn.style.background="#ddd";
                if(i == -1) {                    
                    clearInterval(timer);                    
                    document.getElementById("time_con").style.display="none";
                    getPwd_btn.style.background="#2da7e0";
                }
            },1000); 
          
        };
function validate () {
	//var usernametoo=document.getElementById("span5s").value;
	//var aad = document.getElementById("userinfo.email").value.toUpperCase();
	//var tttt = document.getElementById("ycy").value.toUpperCase();
	//alert(aad.length);
	//alert(aad);
	
	if(inputCode.length <=0) {
	   alert("请输入验证码！");
	   return false;
	}
	else if(inputCode != code ){
	   alert("验证码输入错误！");
	   createCode();
	   return false;
	}
	else {
	   alert("成功！");
	   return true;
	}
}

</script>
<!--main-->
  <!--footer start-->
    <%@include file="../pub/pub_footer.jsp" %> 
<!--footer end-->
<script type="text/javascript" src="js/md5.js"></script>
<script type="text/javascript" src="js/embed.js"></script>
    
  </body>
</html>
