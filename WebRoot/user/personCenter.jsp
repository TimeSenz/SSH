 <%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="dao.Userinfo" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
Userinfo user=(Userinfo)session.getAttribute("userinfo");
String loginflag=(String)session.getAttribute("loginflag");

%>

<!doctype html>
<html>
<head>
<meta http-equiv="content-type" content="text/html" charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>账户管理信息</title>
    <link rel="Shortcut Icon" href="../images/zcb-icon.ico">
     <link type="text/css" rel="stylesheet" href="../css/common.css" /> 
    <link type="text/css" rel="stylesheet" href="../css/fund.css" /> 
 
  <script src="../js/jquery-1.6.4.min.js"></script> 
  <script src="../js/fund.js"></script>
  <script type="text/javascript" language="javascript" src="../js/png.js"></script>
  <script type="text/javascript" language="javascript" src="../js/abouts.js"></script>
<!--[if IE 6]>
<script src="js/png.js" type="text/javascript"></script>
<script type="text/javascript">
   EvPNG.fix('img,.top-container-left a,.icons a,.ui-nav-dropdown span,.ui-footer-verification a'); 
</script>
<![endif]-->
  </head>
  
  <body onload="email()">
  <div class="pg-container">
<!--头部-->
	<%@include file="../pub/pub_top.jsp" %> 
<!--头部end-->
<div class="fund_main"> 
            <p class="top_title" onclick="check2()"><span><a href="/ZhongCaiBao">首页</a></span>&nbsp;&gt;&nbsp;账户管理</p> 

    <div class="fund_main_w fn_clear">
<!--左侧栏-->
	<div class="left"> 
      <div class="top"> 
       <ul> 
        <li class="one"><a href="/ZhongCaiBao/userinfo/user.action?user=myZCB"><span><strong>我的众财宝</strong></span></a></li> 
        <li class="two"><a href="/ZhongCaiBao/userinfo/personRecords.action?currentPage=1"><span><strong>资金管理</strong></span></a> 
         <ol style="display:none"> 
          <li class="cur"><a href="/ZhongCaiBao/userinfo/personRecords.action?currentPage=1">交易记录</a></li> 
          <li><a href="/ZhongCaiBao/userinfo/user.action?user=recharge">充值</a></li> 
          <li><a href="/ZhongCaiBao/userinfo/user.action?user=withdraw">提现</a></li>  
         </ol> </li> 
        <li class="three"><a href="/ZhongCaiBao/userinfo/user.action?user=myManage&currentPage=1"><span><strong>我的理财</strong></span></a>
          <ol style="display:none"> 
          <li class="cur"><a href="/ZhongCaiBao/userinfo/user.action?user=myManage&currentPage=1">我的债权<i>（协议）</i></a></li> 
          <li><a href="/ZhongCaiBao/userinfo/user.action?user=myJxlc&currentPage=1">精选理财</a></li> 
          <li><a href="/ZhongCaiBao/userinfo/user.action?user=myTzsb&currentPage=1">投资散标</a></li>
         </ol> 
        </li> 
        <li class="four"><a href="/ZhongCaiBao/userinfo/user.action?user=myBorrow"><span><strong>我的借款</strong></span></a></li> 
        <li class="five"><a href="/ZhongCaiBao/userinfo/personCenter.action"><span class="cur"><strong class="cur1"  >账户管理</strong></a></span>
        <ol> 
          <li class="cur">安全信息</li> 
          <li >基础信息</li>
         </ol> 
         </li> 
       </ul> 
    </div> 
      <img src="../images/img.jpg" alt="" /> 
     </div>
  <!--账户管理 start-->
       <div class="fund_main5 right" style="display:block">
         
         <div class="fund_main5_right2" style="display:block">
           <h3>安全信息</h3>
           <ul>
             <li>
                    <table cellspacing="0">
                    <col style="width:60px;text-align:left">
                    <col style="width:260px;text-align:left">
                    <col style="width:240px;text-align:left">
                    <col >
                    <tbody>
                    
                      <tr>
                        <th><span class="exactness exactness01"></span></th>
                        <th>昵称</th>
                        <th>已设置</th>
                        <th style="text-align:right"><strong> <s:property value="#session.userinfo.nickname" /></strong></th>
                      </tr>
                    </tbody>
                 </table>
             </li>
             <li>
                <table cellspacing="0">
                <col style="width:60px;text-align:left">
                <col style="width:260px;text-align:left">
                <col style="width:240px;text-align:left">
                <col >
                  <tbody>
                  
                    <tr>
                      <th>
                        <span class="exactness exactness01" id="status01" style="display:none;"></span>
                        <span class="exactness exactness02" id="status02" style="display:none;"></span>
                      </th>
                      <th>实名认证</th>
                      <th>
                          <span id="auth5" style="display:none;"><span id="ID1"><s:property value="#session.userinfo.idcard" /></span></span>
                        <span class="ac0000" id="noauth5" style="display:none;">未设置</span>
                      </th>
                      <th style="text-align:right">
                        <strong id="auth6" style="display:none;"><span id="name1"><s:property value="#session.userinfo.name" /></span></strong>
                        <strong id="noauth6" style="display:none;"></strong>
                      </th>
                      <th style="text-align:right"><strong><a href="javaScript:;" name="idcard" id="xiugai" class="revise">修改</a></strong></th>
                    </tr>
                  </tbody>
               </table>
               <script>
               $(function(){
                var name11=$("#ID1").html();
                var name1=$("#name1").html();
    
                               if(name11!="" && name1!=""){
                                $("#xiugai").hide();
                               }

               })
               
               </script>
               <div class="conten" id="contenconten" style="display:none">
                    <p class="info">为了您的账户安全，实名认证一旦修改不能再次修改。</p>
                    <form data-name="modpsw" action="<%=path %>/userinfo/userModify.action?flag=wanshan&userid=<s:property value="#session.userinfo.userid" />" class="ui-form" method="post" id="modPswForm" onSubmit="return check1()">
                      <div class="inputs">
                        <div class="ui-form-item">
                          <label class="ui-label"><span class="ui-form-required">*</span>真实姓名</label>
                          <input type="text" name="NewName" placeholder="请输入真实姓名" id="userinfo.name" class="ui-input">
                          <!-- <input type="password" id="oldPassword" name="oldPassword" class="ui-input" placeholder="请输入真实姓名"> -->
                          <span id="span4s"></span>
                        </div>
                        <div class="ui-form-item">
                          <label class="ui-label"><span class="ui-form-required">*</span>身份证号</label>
                          <input type="text" class="ui-input" id="userinfo.idcard" name="NewIdcard" placeholder="请输入您的身份证号" />
                        
                          <span id="span6s"></span>

                        </div>
                        <div class="ui-form-item">
                       
                         <input type="submit" id="subModPswBt" value="提 交" class="ui-button ui-button-mid ui-button-green"> 
                        </div>  
                      </div>
                    </form>
                  </div>
             </li>
             <li>
                <table cellspacing="0">
                       <col style="width:60px;text-align:left">
                        <col style="width:260px;text-align:left">
                        <col style="width:240px;text-align:left">
                        <col >
                        <tbody>

                          <tr>
                            <th><span class="exactness exactness01"></span></th>
                            <th>登录密码</th>
                            <th>已设置</th>
                            <th style="text-align:right"><strong><a href="javaScript:;" name="setLoginPWD" class="revise">修改</a></strong></th>
                          </tr>

                        </tbody>
                </table>
                <div class="conten" style="display:none">
                    <p class="info">为了您的账户安全，请定期更换登录密码，并确保登录密码设置与提现密码不同。</p>
                    <form data-name="modpsw" action="<%=path %>/userinfo/userModify.action?flag=newPassword2&userid=<s:property value="#session.userinfo.userid" />" class="ui-form" method="post" id="modPswForm" onSubmit="return check2()">
                      <div class="inputs">
                        <div class="ui-form-item">
                          <label class="ui-label"><span class="ui-form-required">*</span>原密码</label>
                          <input type="hidden" name="yuanmima" id="yuanmima" value="<s:property value="#session.userinfo.password" />"/>
                          <input type="password" id="oldPassword" name="oldPassword" class="ui-input" placeholder="请输入原登录密码">
                          <span id="span1s"></span>
                        </div>
                        <div class="ui-form-item">
                          <label class="ui-label"><span class="ui-form-required">*</span>新密码</label>
                          <input type="password" id="newPassword" name="userinfo.password" class="ui-input" placeholder="6-16位字母、数字和符号(不包括空格)" data-is="isPassWord">
                          <span id="span2s"></span>

                        </div>
                        <div class="ui-form-item">
                          <label class="ui-label"><span class="ui-form-required">*</span>确认新密码</label>
                          <input type="password" id="newPassword2" name="newPassword2" class="ui-input" placeholder="请再次输入您的新密码" onpaste="return false">
                          <span id="span3s"></span>

                        </div>
                        <div class="ui-form-item">
                          <input type="submit" id="subModPswBt" value="提 交" class="ui-button ui-button-mid ui-button-green">
                        </div>  
                      </div>
                    </form>
                  </div>
              </li>
             <li>
               <table cellspacing="0">
               <col style="width:60px;text-align:left">
                <col style="width:260px;text-align:left">
                <col style="width:240px;text-align:left">
                <col >
                <tbody>
                  <tr>
                    <th>
                      <span class="exactness exactness01" id="status03" style="display:none;"></span>
                      <span class="exactness exactness02" id="status04" style="display:none;"></span>
                    </th>
                    <th>绑定邮箱</th>
                    <th>
                      <span id="auth7" style="display:none;"><span id="email1"><s:property value="userinfo.email" /></span></span>
                      <span class="ac0000" id="noauth7" style="display:none;">未设置</span>
                    </th>
                    <th style="text-align:right"><strong class="YxEstablish"><a href="javaScript:;" name="Set1" id="Set1" style="display:none">设置</a><a href="javaScript:;" name="setEmail" id="setEmail" style="display:none">修改</a></strong></th>
                    
                  </tr>

                </tbody>
                 </table>
                  <!-- 邮箱设置 -->
                 <div class="conten" style="display:none" id="emailSet">
                 	<form data-name="modpsw" action="<%=path %>/userinfo/userModify.action?flag=NewEmail&userid=<s:property value="#session.userinfo.userid" />" class="ui-form" method="post"onSubmit="return check13()">
                 		<div class="ui-form-item">
                            <label class="ui-label"><span class="ui-form-required">*</span>邮箱</label>
                            <input type="text" id="newTxtEmails" name="NewEmail" class="ui-input" placeholder="请输入新邮箱" data-is="isPassWord" value="">
                             <span id="span44s"></span>     
                          </div>
                         <div class="ui-form-item">
                            <input type="submit" id="subModPswBt" value="提 交" class="ui-button ui-button-mid ui-button-green">
                          </div> 
                       </form>
                 </div>
                  <!-- 邮箱修改 -->
                 <div class="conten" style="display:none" id="emailSets">
                    <p class="info">
                      您正在修改的绑定邮箱是<span class="red" id="email2"><s:property value="userinfo.email" /></span>
                    </p>
                    <div class="position"> 
                      
                        <button onclick="modPswForm1()" class="button"></button>
                        <button onclick="modPswForm2()" style="left:450px;"  class="button"></button>
                        
                       <!--  <map name="Map2" id="Map2">
                         <area shape="rect" coords="147,7,288,177" target="_self" onclick="modPswForm1()">
                         <area  shape="rect" coords="453,7,586,179"  target="_self" onclick="modPswForm2()">
                       </map> -->
                      
                    </div>
                    <p class="info">如果您在操作过程中出现问题，请拨打众财宝客服电话：400-007-1378</p>
                      <form data-name="modpsw" action="<%=path %>/userinfo/userModify.action?flag=NewEmail&userid=<s:property value="#session.userinfo.userid" />"  class="ui-form" method="post" id="modPswForm1" onSubmit="return check3()" style="display:none">
                        <div class="inputs">
                          <div class="ui-form-item">
                            <label class="ui-label"><span class="ui-form-required">*</span>原邮箱</label>
                            <input type="text" id="txtEmail" name="txtEmail" class="ui-input" placeholder="请输入原登录邮箱">
                            <input type="hidden" name="yuanyx" id="yuanyx" value="<s:property value="userinfo.email" />"/>
                            <span id="span4s"></span>
                          </div>
                          <div class="ui-form-item">
                            <label class="ui-label"><span class="ui-form-required">*</span>新邮箱</label>
                            <input type="text" id="newTxtEmail" name="" class="ui-input" placeholder="请输入新邮箱" data-is="isPassWord">
                            <span id="span5s"></span>
                                   
                          </div>
                          <div class="ui-form-item">
                            <label class="ui-label"><span class="ui-form-required">*</span>确认新邮箱</label>
                            <input type="text" id="newTxtEmail2" name="NewEmail" class="ui-input" placeholder="请再次输入您的新邮箱" onpaste="return false">
                            <span id="span6s"></span>
                                   
                          </div>
                          <div class="ui-form-item">
                            <input type="submit" id="subModPswBt" value="提 交" class="ui-button ui-button-mid ui-button-green">
                          </div>  
                        </div>
                      </form> 
                     <form data-name="modpsw" action="<%=path %>/userinfo/userModify.action?flag=NewEmail&userid=<s:property value="#session.userinfo.userid" />" class="ui-form" method="post" id="modPswForm2" onSubmit="return check4()" style="display:none">
                        <div class="inputs">
                          <div class="ui-form-item">
                            <label class="ui-label"><span class="ui-form-required">*</span>原手机号</label>
                            <input type="text" id="phone11" name="phone11" class="ui-input" placeholder="请输入原手机号">
                            <input type="hidden" name="yuansj" id="yuansj" value="<s:property value="userinfo.phone" />"/>
                            <span id="span7s"></span>
                          </div>
                          <div class="ui-form-item">
                            <label class="ui-label"><span class="ui-form-required">*</span>新邮箱</label>
                            <input type="text" id="newEmail1" name="" class="ui-input" placeholder="请输入新邮箱" data-is="isPassWord">
                            <span id="span8s"></span>
                   
                          </div>
                          <div class="ui-form-item">
                            <label class="ui-label"><span class="ui-form-required">*</span>确认新邮箱</label>
                            <input type="text" id="newEmail12" name="NewEmail" class="ui-input" placeholder="请再次输入您的新邮箱" onpaste="return false">
                            <span id="span9s"></span>
                   
                          </div>
                          <div class="ui-form-item">
                            <input type="submit" id="subModPswBt" value="提 交" class="ui-button ui-button-mid ui-button-green">
                          </div>  
                        </div>
                      </form> 
                  </div>
             </li>
             <li>
                 <table cellspacing="0">
                     <col style="width:60px;text-align:left">
                      <col style="width:260px;text-align:left">
                      <col style="width:240px;text-align:left">
                      <col >
                      <tbody>
                    

                      <tr>
                        <th>
                          <span class="exactness exactness01" id="status05" style="display:none;"></span>
                          <span class="exactness exactness02" id="status06" style="display:none;"></span>
                        </th>
                        <th>绑定手机</th>
                        <th>
                          <span id="auth8" style="display:none;"><span id="phone1"><s:property value="userinfo.phone" /></span></span>
                          <span class="ac0000" id="noauth8" style="display:none;">未设置</span>
                        </th>
                        <th style="text-align:right"><strong><a href="javaScript:;" name="setPhone" class="revise">修改</a></strong></th>
                      </tr>

                    </tbody>
                  </table>
              <div class="conten" style="display:none">
                <p class="info">
                  您正在修改的绑定手机号码是<span class="red" id="phone2"><s:property value="userinfo.phone" /></span>
                </p>
                <div class="position"> 
                  
                  
      
                    <button onclick="modPswForm3()" class="button"></button>
                        <button onclick="modPswForm4()" style="left:450px;"  class="button"></button>
                    <!-- <map name="Map2" id="Map2">
                      <area   coords="147,7,288,177" target="_self" onclick="modPswForm3()">
                      <area  coords="453,7,586,179"  target="_self" onclick="modPswForm4()">
                    </map> -->
                  
                </div>
                <p class="info">如果您在操作过程中出现问题，请拨打众财宝客服电话：400-007-1378</p>
               
                    <form data-name="modpsw" action="<%=path %>/userinfo/userModify.action?flag=NewPhone&userid=<s:property value="#session.userinfo.userid" />" class="ui-form" method="post" id="modPswForm3" onSubmit="return check5()" style="display:none">
                     <div class="inputs">
                       <div class="ui-form-item">
                         <label class="ui-label"><span class="ui-form-required">*</span>原邮箱</label>
                         <input type="text" id="txtEmail1" name="txtEmail1" class="ui-input" placeholder="请输入原登录邮箱">
                         <input type="hidden" name="yuanyx1" id="yuanyx1" value="<s:property value="userinfo.email" />"/>
                         <span id="span10s"></span>
                       </div>
                       <div class="ui-form-item">
                         <label class="ui-label"><span class="ui-form-required">*</span>新手机号</label>
                         <input type="text" id="newphone" name="" class="ui-input" placeholder="请输入新手机号" data-is="isPassWord">
                         <span id="span11s"></span>
                                   
                       </div>
                       <div class="ui-form-item">
                         <label class="ui-label"><span class="ui-form-required">*</span>确认手机号</label>
                         <input type="text" id="newphone2" name="NewPhone" class="ui-input" placeholder="请再次输入您的新手机号" onpaste="return false">
                         <span id="span12s"></span>
                                   
                       </div>
                       <div class="ui-form-item">
                         <input type="submit" id="subModPswBt" value="提 交" class="ui-button ui-button-mid ui-button-green">
                       </div>  
                     </div>
                    </form>  
             
                  <form data-name="modpsw" action="<%=path %>/userinfo/userModify.action?flag=NewPhone&userid=<s:property value="#session.userinfo.userid" />" class="ui-form" method="post" id="modPswForm4" onSubmit="return check7()" style="display:none">
                    <div class="inputs">
                      <div class="ui-form-item">
                        <label class="ui-label"><span class="ui-form-required">*</span>原手机号</label>
                        <input type="text" id="phones1" name="phones1" class="ui-input" placeholder="请输入原手机号">
                        <input type="hidden" name="yuansj" id="yuansj" value="<s:property value="userinfo.phone" />"/>
                        <span id="span13s"></span>
                      </div>
                      <div class="ui-form-item">
                        <label class="ui-label"><span class="ui-form-required">*</span>新手机号</label>
                        <input type="text" id="newmail1" name="newmail1" class="ui-input" placeholder="请输入新手机号" data-is="isPassWord">
                        <span id="span14s"></span>
               
                      </div>
                      <div class="ui-form-item">
                        <label class="ui-label"><span class="ui-form-required">*</span>确认新手机号</label>
                        <input type="text" id="newmail2" name="NewPhone" class="ui-input" placeholder="请再次输入您的新手机号" onpaste="return false">
                        <span id="span15s"></span>
               
                      </div>
                      <div class="ui-form-item">
                        <input type="submit" id="subModPswBt" value="提 交" class="ui-button ui-button-mid ui-button-green">
                      </div>  
                    </div>
                  </form> 

              </div>
             </li>
             <li>
               <table cellspacing="0">
                   <col style="width:60px;text-align:left">
                    <col style="width:260px;text-align:left">
                    <col style="width:240px;text-align:left">
                    <col >
                    <tbody>
                    

                      <tr>
                        <th>
                          <span class="exactness exactness01" id="status07" style="display:none;"></span>
                          <span class="exactness exactness03" id="status08" style="display:none;"></span>
                        </th>
                        <th>提现密码</th>
                        <th>
                          <span id="txmm" style="display:none;"><s:property value="userinfo.moneykey" /></span>
                          <input type="hidden" value="#session.userinfo.moneykey" id="">
                          <span id="auth9" style="display:none;">已设置</span>
                          <span class="ac0000" id="noauth9" style="display:none;line-height: 24px;font-size: 12px;">您的提现密码为初始密码(123456)，<br>使用初始密码将无法提现</span>
                        </th>
                        <th style="text-align:right"><strong class="TxEstablish"><a href="javaScript:;" name="setPWD" class="revise">修改</a> <a href="javaScript:;"> / 找回</a></strong></th>
                      </tr>

                    </tbody>
                 </table>
                <div class="conten" style="display:none" id="conten1">
                  <p class="info">为了您的账户安全，请定期更换登录密码，并确保登录密码设置与提现密码不同。</p>
                  <form data-name="modpsw" class="ui-form" action="<%=path %>/userinfo/userModify.action?userid=<s:property value="#session.userinfo.userid" />" id="modPswForm6" method="post" onSubmit="return check8()">
                    <div class="inputs">
                      <div class="ui-form-item">
                        <label class="ui-label"><span class="ui-form-required">*</span>邮箱</label>
                        <input type="text" id="emali12" name="emali12" class="ui-input" placeholder="请输入原登录邮箱">
                        <input type="hidden" name="yuanyx" id="yuanyx" value="<s:property value="userinfo.email" />"/>
                        <span id="span16s"></span>
                      </div>
                      <div class="ui-form-item">
                        <label class="ui-label"><span class="ui-form-required">*</span>手机号</label>
                        
                        <input type="text" id="phoness" name="phoness" class="ui-input" placeholder="请输入原登录手机号" data-is="isPassWord">
                        <input type="hidden" name="yuansj" id="yuansj" value="<s:property value="userinfo.phone" />"/>
                        <span id="span17s"></span>

                      </div>
                      <div class="ui-form-item">
                        <input type="submit" id="subModPswBt" value="提 交" class="ui-button ui-button-mid ui-button-green">
                      </div>  
                    </div>
                  </form>
                <form data-name="modpsw"  class="ui-form" method="post" action="<%=path %>/userinfo/userModify.action?flag=NewMoneykey&userid=<s:property value="#session.userinfo.userid" />" id="modPswForm7" onSubmit="return check9()"  style="display:none">
                   <div class="inputs">
                     <div class="ui-form-item">
                       <label class="ui-label"><span class="ui-form-required">*</span>新密码</label>
                       <input type="password" id="psw" name="" class="ui-input" placeholder="请输入新密码" data-is="isPassWord">
                        <span id="span18s"></span>
                                 
                     </div>
                     <div class="ui-form-item" >
                 
                       <label class="ui-label"><span class="ui-form-required">*</span>确认新密码</label>
                       <input type="password" id="psw2" name="NewMoneykey" class="ui-input" placeholder="请再次输入您的新密码" onpaste="return false">
                       <span id="span19s"></span>
                                 
                     </div>
                     <div class="ui-form-item">
                       <input type="submit" id="subModPswBt" value="提 交" class="ui-button ui-button-mid ui-button-green">
                     </div>  
                   </div>
                  </form> 
                </div>
                <div class="conten" style="display:none" id="conten2">
                  <div style="height: 100px;">
                    <div class="safety_step">
                      <div class="bgline"></div>
                      <div class="threeStep steps">
                        <ul class="fn-clear">
                          <li class="one">验证手机号码/邮箱</li>
                          <li class="no">重设提现密码</li>
                          <li class="no">成功</li>
                        </ul>
                      </div>
                    </div>
                  </div>
                  <form data-name="modpsw" class="ui-form"   action="<%=path %>/userinfo/userModify.action?userid=<s:property value="#session.userinfo.userid" />" id="modPswForm8" method="post" onSubmit="return check10()">
                    <div class="inputs">
                      <div class="ui-form-item">
                        <label class="ui-label"><span class="ui-form-required">*</span>邮箱</label>
                        <input type="text" id="emali11" name="emali11" class="ui-input" placeholder="请输入原登录邮箱">
                        <input type="hidden" name="yuanyx" id="yuanyx" value="<s:property value="userinfo.email"/>"/>
                        
                        <span id="span20s"></span>
                      </div>
                      <div class="ui-form-item">
                        <label class="ui-label"><span class="ui-form-required">*</span>手机号</label>
                        
                        <input type="text" id="phones11" name="phones11" class="ui-input" placeholder="请输入原登录手机号" data-is="isPassWord">
                        <input type="hidden" name="yuansj" id="yuansj" value="<s:property value="userinfo.phone" />"/>
                        <span id="span21s"></span>

                      </div>
                      <div class="ui-form-item">
                        <input type="submit" id="subModPswBt" value="提 交" class="ui-button ui-button-mid ui-button-green">
                      </div>  
                    </div>
                  </form>
                </div>
                <div class="conten" style="display:none" id="modPswForm9">
                       <p class="info">为了您的账户安全，请定期更换登录密码，并确保登录密码设置与提现密码不同。</p>
                    <form data-name="modpsw"  class="ui-form" action="<%=path %>/userinfo/userModify.action?flag=NewMoneykey&userid=<s:property value="#session.userinfo.userid" />" method="post"  onSubmit="return check11()" >
                     <div class="inputs">
                       <div class="ui-form-item">
                         <label class="ui-label"><span class="ui-form-required">*</span>原密码</label>
                         <input type="password" id="paw" name="paw" class="ui-input" placeholder="请输入原登录密码">
                         <input type="hidden" name="yuanmm" id="yuanmm" value="<s:property value="userinfo.moneykey"/>"/>
                         <span id="span22s"></span>
                       </div>
                          <div class="ui-form-item">
                     <label class="ui-label"><span class="ui-form-required">*</span>新密码</label>
                     <input type="password" id="psws" name="" class="ui-input" placeholder="请输入新密码" data-is="isPassWord">
                      <span id="span23s"></span>
                               
                                            </div>
                                            <div class="ui-form-item">
                     <label class="ui-label"><span class="ui-form-required">*</span>确认新密码</label>
                     <input type="password" id="psws2" name="NewMoneykey" class="ui-input" placeholder="请再次输入您的新密码" onpaste="return false">
                     <span id="span24s"></span>
                               
                                            </div>
                     
                      <div class="ui-form-item">
                        <input type="submit" id="subModPswBt" value="提 交" class="ui-button ui-button-mid ui-button-green">
                      </div> 
                                      
                     </div>
                                          </form> 


                </div> 
                   <div class="conten" style="display:none" id="modPswForm10">
                   <p class="info" style="font-size:36px;">重设密码已成功！</p>
                 </div> 

             </li>
           </ul>
         </div>
         <div class="fund_main5_right1" style="display:none">
           <h3>基础信息</h3>
            <form data-name="userbasic" enctype="multipart/form-data" class="ui-form" method="post" id="userInfoForm" action="/account/info!saveBasicInfo.action" novalidate>
                  <div class="userphoto" id="userphoto">                 
                     <a id="modUserPhoto" class="photo" href="#"><img src="../images/img1.jpg"></a>                 
                                      
                  </div>
              <div class="inputs">
                        <div class="ui-form-item">
                          <label class="ui-label"><span class="ui-form-required">*</span>昵称 :</label>
                           <s:property value="userinfo.nickname"></s:property>
                        </div>
                
                        <div class="ui-form-item">
                          <label class="ui-label"><span class="ui-form-required">*</span>真实姓名 :</label>
                          <span id="name"><s:property value="userinfo.name"></s:property></span>
                          <span class="icon-status pass exactness1" id="auth" style="display:none;">已认证</span>
                          <a href=""><span class="icon-status pass exactness2" id="noauth" style="display:none;">未认证</span></a>
                        </div>
                        <div class="ui-form-item">
                          <label class="ui-label"><span class="ui-form-required">*</span>身份证号 :</label>
                          <span id="ID"><s:property value="userinfo.idcard"></s:property></span>
                          <span class="icon-status pass exactness1" id="auth1" style="display:none;">已认证</span>
                          <a href=""><span class="icon-status pass exactness2" id="noauth1" style="display:none;">未认证</span></a>
                        </div>
                        
                        

                        
                        <div class="ui-form-item">
                          <label class="ui-label"><span class="ui-form-required">*</span>手机号码 :</label>
                          <span id="phone"><s:property value="userinfo.phone"></s:property></span>
                          <span class="icon-status pass exactness1" id="auth2" style="display:none;">已绑定</span>
                          <a class="setPhone" href="#setPhone"><span class="icon-status pass exactness2" id="noauth2" style="display:none;">去绑定</span></a>
                        </div>
                        
                
                
                        <div class="ui-form-item">
                          <label class="ui-label"><span class="ui-form-required">*</span>邮箱地址 :</label>
                          <span id="email"><s:property value="userinfo.email"></s:property></span>
                          <span class="icon-status pass exactness1" id="auth3" style="display:none;">已绑定</span>
                          <a class="setEmail" href=""><span class="icon-status pass exactness2" id="noauth3" style="display:none;">去绑定</span></a>
                        </div>
                        
                        

               
                        
          
                                             
              </div>
             </form>

         </div>
         <div class="fund_main5_right3" style="display:none">
           <h3>银行卡</h3>
           <ul style="width:750px;height:155px"> 
             <li><img src="../images/img23.jpg" alt=""></li> 
             <li><a href=""><img src="../images/img24.jpg" alt=""></a></li> 
          </ul>
         </div>
       </div>
       <script>
          $(function(){
           $(".fund_main5_right2 th .revise").click(function(){
              var index=$(this).index();
              $(this).parents().find(".conten").eq(index).toggle();
            })
             $(".fund_main5_right2 th .TxEstablish a:eq(0)").click(function(){
              $("#conten1").show();
              $("#conten2").hide();
              $("#modPswForm9").hide();
             
            })
             $(".fund_main5_right2 th .TxEstablish a:eq(1)").click(function(){
            	 $("#conten2").show();
                 $("#modPswForm9").hide();
                 $("#conten1").hide();
             
            })
            $(".fund_main5_right2 th .YxEstablish a:eq(0)").click(function(){
              $("#emailSet").toggle();
              $("#emailSets").hide();
             
            })
             $(".fund_main5_right2 th .YxEstablish a:eq(1)").click(function(){
            	 $("#emailSets").toggle();
                 $("#emailSet").hide();
             
            })
                        		$('a.setEmail').click(function(){
                        			$('.fund_main5_right2').show();
                        			$('.fund_main5_right1').hide();
                        			$('.five li:eq(0)').removeClass('cur');
                        			$('.five li:eq(1)').addClass('cur')
                        		})
                            $('a.setPhone').click(function(){
                              $('.fund_main5_right2').show();
                              $('.fund_main5_right1').hide();
                              $('.five li:eq(0)').removeClass('cur');
                              $('.five li:eq(1)').addClass('cur')
                            })
          })
          //账户信息显示格式限定  
   
            show_style("name","1","1  ","*,*");
            show_style("name1","1","1  ","*,*");
            show_style("ID","3","11",'*,*,*,*,*,*,*,*,*,*,*');
            show_style("ID1","3","11",'*,*,*,*,*,*,*,*,*,*,*');
            show_style("phone","3","4",'*,*,*,*');
            show_style("phone1","3","4",'*,*,*,*');
            show_style("phone2","3","4",'*,*,*,*');
            show_style("email","3","6",'*,*,*,*,*,*');
            show_style("email1","3","6",'*,*,*,*,*,*');
            show_style("email2","3","6",'*,*,*,*,*,*')
          //信息认证状态限制          
          status("name","auth","noauth");
          status("ID","auth1","noauth1");
          status("ID1","status01","status02");
          status("ID1","auth5","noauth5");
          status("ID1","auth6","noauth6");
          status("phone","auth2","noauth2");
          status("phone1","status05","status06");
          status("phone1","auth8","noauth8");
          status("email","auth3","noauth3");
          status("email1","status03","status04");
          status("email1","auth7","noauth7"); 
          status1("txmm","status07","status08")  
          status1("txmm","auth9","noauth9");  
    	
    </script> 
       
      <!--账户管理 end-->
</div>
     
 </div>
 <!--footer start-->
    <%@include file="../pub/pub_footer.jsp" %> 
<!--footer end-->
</div>   
<script type="text/javascript" src="js/md5.js"></script>
  </body>
</html>
