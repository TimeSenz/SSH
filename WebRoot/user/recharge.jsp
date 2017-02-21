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
    <title>充值</title>
    <link type="text/css" rel="stylesheet" href="../css/fund.css" /> 
  <link type="text/css" rel="stylesheet" href="../css/common.css" />
  <link rel="Shortcut Icon" href="../images/zcb-icon.ico"> 
  <script src="../js/jquery-1.6.4.min.js"></script> 
  <script src="../js/fund.js"></script>
  <script type="text/javascript" language="javascript" src="../js/png.js"></script>
  <script type="text/javascript" language="javascript" src="../js/pub.js"></script>
<!--[if IE 6]>
<script src="js/png.js" type="text/javascript"></script>
<script type="text/javascript">
   EvPNG.fix('img,.top-container-left a,.icons a,.ui-nav-dropdown span'); 
</script>
<![endif]-->
  </head>
<%--   <script type="text/javascript">

  function showTime() { 
  var now = new Date(); 
  var nowTime = now.toLocaleString(); 
  var year = now.getFullYear(); //年
  var month = now.getMonth()+1; //月
  var date = now.getDate(); //年
  var time = nowTime.substring(10,20); //截取时间 
  var week = now.getDay(); //星期 
  var hour = now.getHours(); //小时 
  var minute = now.getMinutes(); //分 
  var second = now.getSeconds(); //秒  
  var userid=document.getElementById("userid").value;
    now=year+""+month+""+date+""+hour+""+minute+""+second;
  //alert(now+"  "+userid);
  var requestId=document.getElementById("requestId");
  requestId.value=now+""+userid;
  //alert(requestId.value);
  payForm.action="<%=path %>/pay/unitivePay.jsp";
  payForm.method="post";
  payForm.submit();
} 
</script> --%>
  <body>
  <div class="pg-container">
 
<!--头部-->
  <%@include file="../pub/pub_top.jsp" %> 
   <div class="recharg">
      <a class="close">          
        </a>
    <h3>请您在新打开的网上银行页面上完成付款</h3>
    <p>付款完成前请不要关闭此窗口。</p>
    <p>完成付款后请根据您的情况点击下面的按钮：</p>
    <p><a href="/ZhongCaiBao/userinfo/user.action?user=myZCB">已完成付款</a><a href="">付款遇到问题</a></p>
  </div>
<!--头部end-->
<div class="fund_main"> 
        <p class="top_title"><span><a href="/ZhongCaiBao">首页</a></span>&nbsp;&gt;&nbsp;资金管理&nbsp;&gt;&nbsp;充值 </p> 
    <div class="fund_main_w fn_clear">
<!--左侧栏-->
  <div class="left">
      <div class="top"> 
       <ul> 
        <li class="one"><a href="/ZhongCaiBao/userinfo/user.action?user=myZCB"><span><strong>我的众财宝</strong></span></a></li> 
        <li class="two"><a href="/ZhongCaiBao/userinfo/personRecords.action?currentPage=1"><span class="cur"><strong class="cur1">资金管理</strong></span></a> 
         <ol> 
          <li><a href="/ZhongCaiBao/userinfo/personRecords.action?currentPage=1">交易记录</a></li> 
          <li class="cur"><a href="/ZhongCaiBao/user/recharge.jsp">充值</a></li> 
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
        <li class="five"><a href="/ZhongCaiBao/userinfo/personCenter.action?id=<s:property value="#session.userinfo.userid"/>"><span><strong>账户管理</strong></span></a>
         <ol style="display:none;"> 
          <li class="cur">安全信息</li> 
          <li >基础信息</li>
         </ol> 
         </li> 
       </ul> 
    </div> 
      <img src="../images/img.jpg" alt="" /> 
     </div>
     <div id="fund_main" style="display:block">
      <!--资金管理-充值start-->     
     <div class="right right_2"> 
        <div class="fund_main2"> 
         <h3>充值方式</h3>
         <div style="height:280px;"> 
          <p>充值银行</p> 
          <ul> 
           <li><label class="bank_1"><input type="radio" name="channel" checked="checked"><img src="../images/img4.jpg" alt=""></label></li> 
           <li><label class="bank_2"><input type="radio" name="channel"><img src="../images/img5.jpg" alt=""></label></li> 
           <li><label class="bank_3"><input type="radio" name="channel"><img src="../images/img6.jpg" alt=""></label></li> 
           <li><label class="bank_4"><input type="radio" name="channel"><img src="../images/img7.jpg" alt=""></label></li> 
           <li><label class="bank_5"><input type="radio" name="channel"><img src="../images/img8.jpg" alt=""></label></li> 
           <li><label class="bank_6"><input type="radio" name="channel"><img src="../images/img9.jpg" alt=""></label></li> 
           <li><label class="bank_7"><input type="radio" name="channel"><img src="../images/img10.jpg" alt=""></label></li> 
           <li><label class="bank_8"><input type="radio" name="channel"><img src="../images/img11.jpg" alt=""></label></li> 
           <li><label class="bank_9"><input type="radio" name="channel"><img src="../images/img12.jpg" alt=""></label></li> 
           <li><label class="bank_10"><input type="radio" name="channel"><img src="../images/img13.jpg" alt=""></label></li> 
           <li><label class="bank_11"><input type="radio" name="channel"><img src="../images/img14.jpg" alt=""></label></li> 
           <li><label class="bank_12"><input type="radio" name="channel"><img src="../images/img15.jpg" alt=""></label></li> 
           <li><label class="bank_13"><input type="radio" name="channel"><img src="../images/img16.jpg" alt=""></label></li> 
           <li><label class="bank_14"><input type="radio" name="channel"><img src="../images/img17.jpg" alt=""></label></li> 
           <li><label class="bank_15"><input type="radio" name="channel"><img src="../images/img22.jpg" alt=""></label></li>
           <li><label class="bank_16"><input type="radio" name="channel"><img src="../images/img25.jpg" alt=""></label></li> 
          </ul> 
         </div> 
         <div style="height:100px;"> 
          <ul> 
           <p>充值渠道</p>
           <li><label class="bank_16"><input type="radio" name="channel" /><img src="../images/img21.jpg" alt="" /></label></li> 
          </ul> 
         </div> 
         <div class="right_2_form"> 
          <h3>充值金额</h3>
          <form action="<%=path %>/userinfo/recharge.action" onsubmit="return chongzhi();"> 
          <ol> 
           <li><strong>充值金额 ：</strong><input type="text" name="money" id="CZmoney" onkeyup="moneys()"/> 元</li> 
           <li><strong>充值费用 ：</strong><span><i>0.00</i>元</span> <a href="">第三方收取</a></li> 
           <li><strong>实际支付金额 ：</strong><span><i id="shijiZF">0.00</i>元</span></li> 
           <li>		
           		<input type="submit" Class="right_2_button" value="确认支付">
           		<%-- <s:submit cssClass="right_2_button" value="确认支付" ></s:submit> --%>
           		<span id="span1"></span>
           </li> 
          </ol>
          </form> 
          <input type="hidden" name="icoudID" id="icoudID" value="<s:property value="#session.userinfo.idcard"/>"/>
          <input type="hidden" name="name" id="name" value="<s:property value="#session.userinfo.name"/>"/>
          <input type="hidden" name="email" id="email" value="<s:property value="userinfo.email"/>"/>
          <input type="hidden" name="phone" id="phone" value="<s:property value="userinfo.phone"/>"/>
         </div>
         <span style="line-height:30px;">由于各银行限额随时调整，具体限额请咨询开户银行</span>
          <div class="bank">
            <img src="../images/bank_1_s.jpg" width="699" class="xiane" id="bank_1_s" style="display: inline;">
            <img src="../images/bank_2_s.jpg" width="699" class="xiane" id="bank_2_s" style="display: none;">
            <img src="../images/bank_3_s.jpg" width="699" class="xiane" id="bank_3_s" style="display: none;">
            <img src="../images/bank_4_s.jpg" width="699" class="xiane" id="bank_4_s" style="display: none;">
            <img src="../images/bank_5_s.jpg" width="699" class="xiane" id="bank_5_s" style="display: none;">
            <img src="../images/bank_6_s.jpg" width="699" class="xiane" id="bank_6_s" style="display: none;">
            <img src="../images/bank_7_s.jpg" width="699" class="xiane" id="bank_7_s" style="display: none;">
            <img src="../images/bank_8_s.jpg" width="699" class="xiane" id="bank_8_s" style="display: none;">
            <img src="../images/bank_9_s.jpg" width="699" class="xiane" id="bank_9_s" style="display: none;">
            <img src="../images/bank_10_s.jpg" width="699" class="xiane" id="bank_10_s" style="display: none;">
            <img src="../images/bank_11_s.jpg" width="699" class="xiane" id="bank_11_s" style="display: none;">
            <img src="../images/bank_12_s.jpg" width="699" class="xiane" id="bank_12_s" style="display: none;">
              </div>
              <script>
              $(function(){$('.bank_1').click(function(){$("#bank_1_s").show().siblings().hide()});$('.bank_2').click(function(){$("#bank_3_s").show().siblings().hide()});$('.bank_3').click(function(){$("#bank_2_s").show().siblings().hide()});$('.bank_4').click(function(){$("#bank_12_s").show().siblings().hide()});$('.bank_5').click(function(){$("#bank_4_s").show().siblings().hide()});$('.bank_6').click(function(){$("#bank_10_s").show().siblings().hide()});$('.bank_7').click(function(){$(".bank img").hide()});$('.bank_8').click(function(){$("#bank_5_s").show().siblings().hide()});$('.bank_9').click(function(){$(".bank img").hide()});$('.bank_10').click(function(){$(".bank img").hide()});$('.bank_11').click(function(){$(".bank img").hide()});$('.bank_12').click(function(){$("#bank_9_s").show().siblings().hide()});$('.bank_13').click(function(){$("#bank_11_s").show().siblings().hide()});$('.bank_14').click(function(){$(".bank img").hide()});$('.bank_15').click(function(){$("#bank_8_s").show().siblings().hide()});$('.bank_16').click(function(){$(".bank img").hide()});})
              </script>
          
         <div class="right_2_text"> 
          <h4>温馨提示</h4> 
          <ol> 
           <li>1.为了您的账户安全，请在充值前进行身份认证、手机绑定以及提现密码设置。</li> 
           <li>2.您的账户资金将通过第三方平台进行充值。 </li> 
           <li>3.请注意您的银行卡充值限制，以免造成不便。 </li> 
           <li>4.禁止洗钱、信用卡套现、虚假交易等行为，一经发现并确认，将终止该账户的使用。</li> 
           <li>5.如果充值金额没有及时到账，请联系客服，400-007-1378。</li> 
          </ol> 
         </div> 
        </div> 
       </div> 
  </div>
<!--资金管理-充值end-->
      </div>
</div>

  <!--footer start-->
  
    <%@include file="../pub/pub_footer.jsp" %> 
<!--footer end-->
</div>  
<script>
  	function moneys(){
  		var czMoney=$("#CZmoney").val();
  		var shijiZF=document.getElementById('shijiZF').innerHTML;
  		document.getElementById('shijiZF').innerHTML=czMoney;
  	}
  </script>
  </body>
</html>
