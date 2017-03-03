<%@ page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="dao.Userbank"%>
<%@page import="com.opensymphony.xwork2.ActionContext"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="dao.Userinfo" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>提现</title>
  <link type="text/css" rel="stylesheet" href="../css/fund.css" /> 
  <link type="text/css" rel="stylesheet" href="../css/common.css" /> 
  <link rel="Shortcut Icon" href="../images/zcb-icon.ico">
  <!-- 按钮样式start -->
  <link type="text/css" rel="stylesheet" href="../css/button_style.css" />
  <link href="../css/bs.css" rel="stylesheet">
  <link href="../css/index1.css" rel="stylesheet">
  <!-- 按钮样式end -->
  <script src="../js/jquery-1.6.4.min.js"></script> 
  <script src="../js/fund.js"></script>
  <script type="text/javascript" language="javascript" src="../js/png.js"></script>
  <script type="text/javascript" language="javascript" src="../js/abouts.js"></script>
  <script type="text/javascript" language="javascript" src="../js/embed.js"></script>
<script type="text/javascript" src="js/cookie.js"></script>
  <style>
         .account{width: 155px;display:inline-block;position: absolute;left: 0;top: 0;height:42px;}
         .manage{width:250px;display:inline-block;position: absolute;left: 0;bottom: 2px;height:30px;line-height: 30px;border-top:1px solid #e2e2e2 }
         .manage a{width: 125px;float: left;text-align: center;display: inline-block;}
         .mark{width: 45px;display:inline-block;position: absolute;right: 0;top: 8px;height:32px;line-height: 32px;}
         .mark input{border:none;width:40px;}
         .cl{
		    	clear: both;
			}
		.h6{
			height: 6px;
		 }
  </style>
  </head>
  
  <body  onload="bankStr();">
  <div class="pg-container">
   <div class="userbank" id="add" style="display: none;">
      <a class="close">          
        </a>
    <h3>添加银行卡</h3>
    <form action="/ZhongCaiBao/userinfo/addUserBank.action" method="post"  onSubmit="return AddUserBank();">
		<input type="hidden" name="banktype" id="banktype" value=""/>
        <div class="ui-form-item">
        <label class="ui-label"><span class="ui-form-required">*</span>选择银行</label>
        <div class="position-rel" style="width: 185px">
			<div class="position-rel">
				<input type="text" id="chose_input" name="userbank.bankname"   class="form-control" placeholder="--储蓄卡--"/>
				<div class="bank_xljt"><img class="jt_xz" width="20" src="../images/jtx.png" alt=""/></div>
				<div id="chose_bank" class="bank_xljt1"></div>
			</div>
			<div class="bank_xl" style="display: none">
				<ul>
					<li class="hotBank-list">
						<a href="javascript:" class="hotBank-list-ico "  title="中国工商银行">
							<img src="../images/img4.jpg" width="150" alt=""/>
						</a>
					</li>
					<li class="hotBank-list">
						<a href="javascript:" class="hotBank-list-ico "  title="中国农业银行">
							<img src="../images/img5.jpg" width="150" alt=""/>
						</a>
					</li>
					<li class="hotBank-list">
						<a href="javascript:" class="hotBank-list-ico "  title="招商银行">
							<img src="../images/img6.jpg" width="150" alt=""/>
						</a>
					</li>
					<li class="hotBank-list">
						<a href="javascript:" class="hotBank-list-ico "  title="中国银行">
							<img src="../images/img7.jpg" width="150" alt=""/>
						</a>
					</li>
					<li class="hotBank-list">
						<a href="javascript:" class="hotBank-list-ico "  title="中国建设银行">
							<img src="../images/img8.jpg" width="150" alt=""/>
						</a>
					</li>
					<li class="hotBank-list">
						<a href="javascript:" class="hotBank-list-ico "  title="广发银行">
							<img src="../images/img9.jpg" width="150" alt=""/>
						</a>
					</li>
					<li class="hotBank-list">
						<a href="javascript:" class="hotBank-list-ico "  title="上海银行">
							<img src="../images/img10.jpg" width="150" alt=""/>
						</a>
					</li>
					<li class="hotBank-list">
						<a href="javascript:" class="hotBank-list-ico "  title="交通银行">
							<img src="../images/img11.jpg" width="150" alt=""/>
						</a>
					</li>
					<li class="hotBank-list">
						<a href="javascript:" class="hotBank-list-ico "  title="中国邮政储蓄银行">
							<img src="../images/img12.jpg" width="150" alt=""/>
						</a>
					</li>
					<li class="hotBank-list">
						<a href="javascript:" class="hotBank-list-ico "  title="浦发银行">
							<img src="../images/img13.jpg" width="150" alt=""/>
						</a>
					</li>
					<li class="hotBank-list">
						<a href="javascript:" class="hotBank-list-ico "  title="中国民生银行">
							<img src="../images/img14.jpg" width="150" alt=""/>
						</a>
					</li>
					<li class="hotBank-list">
						<a href="javascript:" class="hotBank-list-ico "  title="中国广大银行">
							<img src="../images/img15.jpg" width="150" alt=""/>
						</a>
					</li>
					<li class="hotBank-list">
						<a href="javascript:" class="hotBank-list-ico "  title="中信银行">
							<img src="../images/img16.jpg" width="150" alt=""/>
						</a>
					</li>
					<li class="hotBank-list">
						<a href="javascript:" class="hotBank-list-ico "  title="深圳平安银行">
							<img src="../images/img17.jpg" width="150" alt=""/>
						</a>
					</li>
					<li class="hotBank-list">
						<a href="javascript:" class="hotBank-list-ico "  title="华夏银行">
							<img src="../images/img22.jpg" width="150" alt=""/>
						</a>
					</li>
					<li class="hotBank-list">
						<a href="javascript:" class="hotBank-list-ico "  title="北京银行">
							<img src="../images/img25.jpg" width="150" alt=""/>
						</a>
					</li>
				</ul>
			</div>
		</div>
       <sapn id="bankOption"></sapn>
      </div>
      <div class="ui-form-item">
        <label class="ui-label"><span class="ui-form-required">*</span>银行卡号</label>
        <input class="form-control" style="width: 185px;" type="text" name="userbank.banknumbr" id="userbank.banknumbr" data-is="isBankCard"  onkeyup="formatBankNo(this)" style="margin-right:0;">
        <sapn id="banknumbr"></sapn>
      </div>
      <div class="ui-form-item">
        <label class="ui-label"><span class="ui-form-required">*</span>确认卡号</label>
        <input class="form-control" style="width: 185px;" type="text" name="banknumbrtoo" id="banknumbrtoo" data-is="isBankCard" onpaste="return false"  onkeyup="formatBankNo(this)" style="margin-right:0;">
        <sapn id="Newbanknumbr"></sapn>
      </div>  
      <div class="bts"><input type="submit" class="ui-button ui-button-mid ui-button-green" onclick="asd('添加')" value="新 增"><input type="reset" id="close" class="ui-button ui-button-mid ui-button-gray" value="取 消"></div> 
      <div class="notice">
    </div>
     
    </form>
 
  </div>
  <div class="notice">
      <div class="title">温馨提示</div>
      <ol>
        <li>请确保您填写的银行帐号，并提供一张可以申请提现的银行卡（信用卡除外），否则众财宝无法将钱转回您的银行帐号。 </li>

      </ol>
    </div>
</div>
  <div class="pg-container">

   <div class="userbank" id="updata" style="display: none;">
      <a class="close">          
        </a>
    <h3>修改银行卡</h3>
    <form action="/ZhongCaiBao/userinfo/updataUserBank.action" onSubmit="return selUserBank();">
		<input type="hidden" name="banktype" id="" value=""/>
      <div class="ui-form-item">
        <label class="ui-label"><span class="ui-form-required">*</span>选择银行</label>
        <div class="position-rel" style="width: 185px">
			<div class="position-rel">
				<input type="text" id="chose_input" name="userbank.bankname"   class="form-control" placeholder="--储蓄卡--"/>
				<div class="bank_xljt"><img class="jt_xz" width="20" src="../images/jtx.png" alt=""/></div>
				<div id="chose_bank" class="bank_xljt1"></div>
			</div>
			<div class="bank_xl" style="display: none">
				<ul>

					<li class="hotBank-list">
						<a href="javascript:" class="hotBank-list-ico "  title="中国工商银行">
							<img src="../images/img4.jpg" width="150" alt=""/>
						</a>
					</li>
					<li class="hotBank-list">
						<a href="javascript:" class="hotBank-list-ico "  title="中国农业银行">
							<img src="../images/img5.jpg" width="150" alt=""/>
						</a>
					</li>
					<li class="hotBank-list">
						<a href="javascript:" class="hotBank-list-ico "  title="招商银行">
							<img src="../images/img6.jpg" width="150" alt=""/>
						</a>
					</li>
					<li class="hotBank-list">
						<a href="javascript:" class="hotBank-list-ico "  title="中国银行">
							<img src="../images/img7.jpg" width="150" alt=""/>
						</a>
					</li>
					<li class="hotBank-list">
						<a href="javascript:" class="hotBank-list-ico "  title="中国建设银行">
							<img src="../images/img8.jpg" width="150" alt=""/>
						</a>
					</li>
					<li class="hotBank-list">
						<a href="javascript:" class="hotBank-list-ico "  title="广发银行">
							<img src="../images/img9.jpg" width="150" alt=""/>
						</a>
					</li>
					<li class="hotBank-list">
						<a href="javascript:" class="hotBank-list-ico "  title="上海银行">
							<img src="../images/img10.jpg" width="150" alt=""/>
						</a>
					</li>
					<li class="hotBank-list">
						<a href="javascript:" class="hotBank-list-ico "  title="交通银行">
							<img src="../images/img11.jpg" width="150" alt=""/>
						</a>
					</li>
					<li class="hotBank-list">
						<a href="javascript:" class="hotBank-list-ico "  title="中国邮政储蓄银行">
							<img src="../images/img12.jpg" width="150" alt=""/>
						</a>
					</li>
					<li class="hotBank-list">
						<a href="javascript:" class="hotBank-list-ico "  title="浦发银行">
							<img src="../images/img13.jpg" width="150" alt=""/>
						</a>
					</li>
					<li class="hotBank-list">
						<a href="javascript:" class="hotBank-list-ico "  title="中国民生银行">
							<img src="../images/img14.jpg" width="150" alt=""/>
						</a>
					</li>
					<li class="hotBank-list">
						<a href="javascript:" class="hotBank-list-ico "  title="中国广大银行">
							<img src="../images/img15.jpg" width="150" alt=""/>
						</a>
					</li>
					<li class="hotBank-list">
						<a href="javascript:" class="hotBank-list-ico "  title="中信银行">
							<img src="../images/img16.jpg" width="150" alt=""/>
						</a>
					</li>
					<li class="hotBank-list">
						<a href="javascript:" class="hotBank-list-ico "  title="深圳平安银行">
							<img src="../images/img17.jpg" width="150" alt=""/>
						</a>
					</li>
					<li class="hotBank-list">
						<a href="javascript:" class="hotBank-list-ico "  title="华夏银行">
							<img src="../images/img22.jpg" width="150" alt=""/>
						</a>
					</li>
					<li class="hotBank-list">
						<a href="javascript:" class="hotBank-list-ico "  title="北京银行">
							<img src="../images/img25.jpg" width="150" alt=""/>
						</a>
					</li>
				</ul>
			</div>
		</div>
       <span id="khOption"></span>
      </div>
      <div class="ui-form-item">
        <label class="ui-label"><span class="ui-form-required">*</span>银行卡号</label>
        <input  class="form-control" style="width: 185px;" type="text" name="kh" id="kh" data-is="isBankCard"  onkeyup="formatBankNo(this)">
        <span id="khID"></span>
        <input readonly class="form-control" style="width: 185px;" type="hidden" name="kid" id="kid" data-is="isBankCard" value="">
        <input type="hidden" name="userid" value="<s:property value="#session.userinfo.userid"/>" > 
      </div>
      <div class="bts"><input type="submit" class="ui-button ui-button-mid ui-button-green" onclick="add('添加')" value="修 改"><input type="reset" id="close" class="ui-button ui-button-mid ui-button-gray" value="取 消"></div> 
      <div class="notice">
    </div>
    </form>
  </div>
  <div class="notice">
      <div class="title">温馨提示</div>
      <ol>
        <li>请确保您填写的银行帐号，并提供一张可以申请提现的银行卡（信用卡除外），否则众财宝无法将钱转回您的银行帐号。 </li>

      </ol>
    </div>
</div>

  <div class="pg-container">
  <div class="opict opicta" style="display: none;"></div>
<!--头部-->
	<%@include file="../pub/pub_top.jsp" %> 
<!--头部end-->
<div class="fund_main"> 
        <p class="top_title"><span><a href="/ZhongCaiBao">首页</a></span>&nbsp;&gt;&nbsp;资金管理&nbsp;&gt;&nbsp;提现</p> 
    <div class="fund_main_w fn_clear">
<!--左侧栏-->
	<div class="left">
      <div class="top"> 
       <ul> 
        <li class="one"><a href="/ZhongCaiBao/userinfo/user.action?user=myZCB"><span><strong>我的众财宝</strong></span></a></li> 
        <li class="two"><a href="/ZhongCaiBao/userinfo/personRecords.action?currentPage=1"><span class="cur"><strong class="cur1">资金管理</strong></span></a> 
         <ol> 
          <li><a href="/ZhongCaiBao/userinfo/personRecords.action?currentPage=1">交易记录</a></li> 
          <li><a href="/ZhongCaiBao/userinfo/user.action?user=recharge">充值</a></li> 
          <li class="cur"><a href="/ZhongCaiBao/userinfo/user.action?user=withdraw">提现</a></li> 
         </ol> </li> 
        <li class="three"><a href="/ZhongCaiBao/userinfo/user.action?user=myManage&currentPage=1"><span><strong>我的理财</strong></span></a>
          <ol style="display:none"> 
          <li class="cur"><a href="/ZhongCaiBao/userinfo/user.action?user=myManage&currentPage=1">我的债权<i>（协议）</i></a></li> 
          <li><a href="/ZhongCaiBao/userinfo/user.action?user=myJxlc&currentPage=1">精选理财</a></li> 
          <li><a href="/ZhongCaiBao/userinfo/user.action?user=myTzsb&currentPage=1">投资散标</a></li>
         </ol> 
        </li> 
        <li class="four"><a href="/ZhongCaiBao/userinfo/user.action?user=myBorrow"><span><strong>我的借款</strong></span></a></li> 
        <li class="five"><a href="/ZhongCaiBao/userinfo/personCenter.action?id=<xproperty value="#session.userinfo.userid"/"><span><strong>账户管理</strong></span></a>
        <ol style="display:none;"> 
          <li class="cur">基础信息</li> 
          <li>安全信息</li>
         </ol> 
         </li> 
       </ul> 
       
    </div> 
      <img src="../images/img.jpg" alt="" /> 
     </div>
     <div id="fund_main" style="display:block">
      <!--资金管理-提现start-->
    <div class="right right_3"> 
        <div class="fund_main2"> 
         <div class="right_2_img"> 
          <h3>提现方式</h3> 
          <ul style="height:155px;">
          <s:iterator value="#session.userbank" var="vo">
         	 <s:if test="%{#vo.bankname!=null}">
	           <li id="pppp" class="border" onclick="clickbankid('<s:property value="#vo.userbankid" />')">
	           <img src="../images/img23.jpg" alt="" />
	             <span class="account">
	             <s:if test="%{#vo.bankname=='中国工商银行'}"> 
	           		<img src="../images/img4.jpg" alt="" />
	             </s:if>
	             <s:if test="%{#vo.bankname=='中国农业银行'}"> 
	           		<img src="../images/img5.jpg" alt="" />
	             </s:if>
	             <s:if test="%{#vo.bankname=='招商银行'}"> 
	           		<img src="../images/img6.jpg" alt="" />
	             </s:if>
	             <s:if test="%{#vo.bankname=='中国银行'}"> 
	           		<img src="../images/img7.jpg" alt="" />
	             </s:if>
	             <s:if test="%{#vo.bankname=='中国建设银行'}"> 
	           		<img src="../images/img8.jpg" alt="" />
	             </s:if>
	             <s:if test="%{#vo.bankname=='广发银行'}"> 
	           		<img src="../images/img9.jpg" alt="" />
	             </s:if>
	             <s:if test="%{#vo.bankname=='上海银行'}"> 
	           		<img src="../images/img10.jpg" alt="" />
	             </s:if>
	             <s:if test="%{#vo.bankname=='交通银行'}"> 
	           		<img src="../images/img11.jpg" alt="" />
	             </s:if>
	             <s:if test="%{#vo.bankname=='中国邮政储蓄银行'}"> 
	           		<img src="../images/img12.jpg" alt="" />
	             </s:if>
	             <s:if test="%{#vo.bankname=='浦发银行'}"> 
	           		<img src="../images/img13.jpg" alt="" />
	             </s:if>
	             <s:if test="%{#vo.bankname=='中国民生银行'}"> 
	           		<img src="../images/img14.jpg" alt="" />
	             </s:if>
	             <s:if test="%{#vo.bankname=='中国广大银行'}"> 
	           		<img src="../images/img15.jpg" alt="" />
	             </s:if>
	             <s:if test="%{#vo.bankname=='中信银行'}"> 
	           		<img src="../images/img16.jpg" alt="" />
	             </s:if>
	             <s:if test="%{#vo.bankname=='深圳平安银行'}"> 
	           		<img src="../images/img17.jpg" alt="" />
	             </s:if>
	             <s:if test="%{#vo.bankname=='华夏银行'}"> 
	           		<img src="../images/img22.jpg" alt="" />
	             </s:if>
	             <s:if test="%{#vo.bankname=='北京银行'}"> 
	           		<img src="../images/img25.jpg" alt="" />
	             </s:if>
	             </span>
	           	 <span class="mark">
	           	 	<input type="text" value="<s:property value="#vo.banknumbr" />" name="mark" readonly="true"/>
	           	 	<input type="hidden" value="<s:property value="#vo.userbankid" />" name="yhk" readonly="true"/>
 	           	 </span>
	           	 
	             <p class="manage">
	             <a href="javaScript:;" onclick="chickUpdataUserBank('<s:property value="#vo.banknumbr"/>','<s:property value="#vo.userbankid"/>','<s:property value="#vo.bankname"/>')">修改</a>
	             <a href="/ZhongCaiBao/userinfo/deleteUserBank.action?banktype=删除&userbank.userbankid=<s:property value="#vo.userbankid"/>" >删除</a>
	             </p>
	           </li> 
          	 </s:if>
           	</s:iterator>
           <li><a href="javaScript:;" onclick="chickAddUserBank()"><img src="../images/img24.jpg" alt=""  style="height: 151px;width:260px;"/></a></li> 
          </ul> 
          <a href="/ZhongCaiBao/userinfo/personRecords.action?currentPage=1" class="right_2_a">查看提现记录</a> 
         </div> 
         
         <div class="right_2_form"> 
          <h3>提现金额</h3> 
          <ol style="width:550px;"><!--  <%=path %>/userinfo/withdrawals.action -->
          <form action="<%=path %>/userinfo/withdrawals.action" onSubmit="return check20();">
               <li><strong>账户余额 ：</strong><span><i class="yue"><big style="font-size: 26px;"><s:property value="#session.userinfo.xjye"/></big></i>元</span></li> 
               <li><strong>提现金额 ：</strong><input type="text"  class="tx" value="" name="money" id="jisuan1"  onkeyup="js()"/> 元 </li> 
               <li><strong>平台手续费 ：</strong><span><i id="baifen"></i>元</span> <a>提现费用将从您的众财宝账户余额中扣除</a></li> 
               <li><strong>实际扣除金额：</strong><span><input type="text" id="jisuan"  value="" style="outline: none;" readonly="readonly" > 元</span></li> 
               <li><strong>预计到账日期：</strong><span id="DZdeta"></span> 之内到账  （双休日和法定节假日除外）</li>
               <li><strong>提现密码：</strong><input type="password" name="key"/  id="txmm"> <a href="">忘记密码</a><span id="txtfp" style="margin-left: 15px;"></span></li> 
				<span id="addyhk"></span>
			   <input type="hidden" name="yhkid" id="yhkid" value="">
				   <input type="hidden" name="userid" value="<s:property value="#session.userinfo.userid"/>" > 
				<input type="hidden" name="yuantxmm" id="yuantxmm" value="<s:property value="#session.userinfo.moneykey"/>"/>
                <input type="hidden" name="icoudID" id="icoudID" value="<s:property value="#session.userinfo.idcard"/>"/>
                <input type="hidden" name="name" id="name" value="<s:property value="#session.userinfo.name"/>"/>
               	<input type="hidden" name="email" id="email" value="<s:property value="userinfo.email"/>"/>
               	<input type="hidden" name="phone" id="phone" value="<s:property value="userinfo.phone"/>"/>
               <br />
               	<input type="submit" class="button blue" style="margin-left:100px;" value="确认提现" />
           </form>
          </ol> 
         </div> 
         <div class="cl h6"></div><!-- 清除div浮动样式 -->
         <div class="right_2_text"> 
          <h4>温馨提示</h4> 
          <ol> 
           <li>1.请确保您输入的提现金额，以及银行帐号信息准确无误。</li> 
           <li>2.如果您填写的提现信息不正确可能会导致提现失败，由此产生的提现费用将不予返还。 </li> 
           <li>3. 在双休日和法定节假日期间，用户可以申请提现，众财宝会在下一个工作日进行处理。由此造成的不便，请多多谅解！</li> 
           <li>4. 平台禁止洗钱、信用卡套现、虚假交易等行为，一经发现并确认，将终止该账户的使用。</li> 
          </ol> 
         </div> 
        </div> 
       </div> 
      </div> 
<!--资金管理-提现end-->
      </div>
</div>
  <!--footer start-->
    <%@include file="../pub/pub_footer.jsp" %> 
<!--footer end-->
	<script>
	$(function(){
	
	//        下拉银行卡
	
		$(".hotBank-list-ico").bind('click',function(){
		   $('#chose_input').val($(this).attr('title'));
			$('.bank_xl').hide();
			$("#chose_bank").parent('div').find('img').addClass('jt_xz');
		});
		$("#chose_bank").click(function(){
			$('.bank_xl').show();
			$("#chose_bank").parent('div').find('img').removeClass('jt_xz');
		});
	//        下拉银行卡
	
	})
	</script>
	<script>
	if (navigator.userAgent.match(/IEMobile\/10\.0/)) {
		var msViewportStyle = document.createElement('style')
		msViewportStyle.appendChild(
				document.createTextNode(
						'@-ms-viewport{width:auto!important}'
				)
		)
		document.querySelector('head').appendChild(msViewportStyle)
	}
	
	</script>
    <script type="text/javascript">
    //预计到账日期
    var now = new Date();
    var year = now.getFullYear(); //年
    var month = now.getMonth()+1; //月
    var date = now.getDate()+2;//天
    var DZdetas=year+"-"+month+"-"+date;
    document.getElementById("DZdeta").innerHTML=DZdetas;
    
    //提现方式 银行卡
    function add(type){
		document.getElementById("banktype").value = type;
    }
    function clickbankid(type){
		document.getElementById("yhkid").value = type;
    }
    $(function(){
    	$(".right_2_img ul .border").click(function(){
    		$(this).addClass("cur").siblings().removeClass("cur") ;
    	})
    })

	</script>
  </body>
</html>
