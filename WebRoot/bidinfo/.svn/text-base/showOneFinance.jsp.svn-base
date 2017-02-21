<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="dao.Userinfo" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
Userinfo user=(Userinfo)session.getAttribute("userinfo");
String loginflag="0";
if(loginflag!=null){
    loginflag=(String)session.getAttribute("loginflag");
}

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
<link type="text/css" rel="stylesheet" href="../css/bor_details.css">
<link rel="Shortcut Icon" href="../images/zcb-icon.ico">
<script type="text/javascript" language="javascript" src="../js/png.js"></script>
<!--[if IE 6]>
<script src="js/png.js" type="text/javascript"></script>
<script type="text/javascript">
   EvPNG.fix('img,.top-container-left a,.icons a,.ui-nav-dropdown span'); 
</script>
<![endif]-->
<script src="../js/jquery-1.6.4.min.js"></script>
<script src="../js/tabMenu.js"></script>
<script type="text/javascript">
//弹窗确认付款
  $(function(){
    $('.loan_btn').click(function(){
     /* $('.opict').show();
      $('.confirm_loan').show();*/
    })
     $('.confirm_loan .close').click(function(){
      $('.confirm_loan').hide();
      $('.opict').hide()
    })
    
  })
  //圆环效果
$(function() {
    $('.circle1').each(function(index, el) {
        var num = $(this).find('span').text() * 3.6;
        if (num<=180) {
            $(this).find('.right').css('transform', "rotate(" + num + "deg)");
        } else {
            $(this).find('.right').css('transform', "rotate(180deg)");
            $(this).find('.left').css('transform', "rotate(" + (num - 180) + "deg)");
        };
    });
    
    
    
});  

window.onload = function()
{

  var code ;
    code = new Array();
var codeLength = 4;//验证码的长度
var checkCode = document.getElementById("checkCode");
checkCode.value = "";

var selectChar = new Array(2,3,4,5,6,7,8,9,'A','B','C','D','E','F','G','H','J','K','L','M','N','P','Q','R','S','T','U','V','W','X','Y','Z');

for(var i=0;i<codeLength;i++) {
   var charIndex = Math.floor(Math.random()*32);
   code +=selectChar[charIndex];
}
if(code.length != codeLength){
   createCode();
}
checkCode.value = code;
}

function validate(){
  var inputCode = document.getElementById("email").value.toUpperCase();

 if(inputCode.length<=0){
    document.getElementById("span8s").innerHTML="<font color='red'>验证码不能为空</font>";
    return false;
  }
 else if(inputCode != code){
       document.getElementById("span8s").innerHTML="<font color='red'>验证码错误</font>";
       return false;
  }else if(document.getElementById("checkbox_name").checked){

}else{

return false;

}
document.getElementById('buyform').submit();

}

</script>

  </head>
  
  <body onLoad="createCode();">

<div class="pg-container">
<!--头部-->
<%@include file="../pub/pub_top.jsp" %> 
<!--头部end-->
<!--main开始-->
    <div class="main_box">
        <div class="w1000 box">
            
            <div class="confirm_loan" id="confirm_loan" style="display:none;">
              <a class="close" onclick="close();"><img src="../images/close.png"></a>
              <h3>确认付款</h3>
                <table>
                  <tr>
                    <th>借款标题</th><td>：<span class="ellipsis" style="width:100px;"><s:property value="bidinfo.reason"/></span></td>
                    <th>购买份数：</th><td><span id="bidinfoNumber"></span>份</td>
                  </tr>
                  <tr>
                    <th class="letter">借款人</th><td>：<s:property value="jkr.nickname"/></td>
                    <th>账户余额：</th><td class="money" title="<s:property value="#session.userinfo.xjye"/>"><span class="ellipsis" style="width:100px;"><s:property value="#session.userinfo.xjye"/></span>元</td>
                  </tr>
                  <tr>
                    <th class="letter">年利率</th><td>：<s:property value="bidinfo.profit"/>%</td>
                    <th>应付金额：</th><td class="money"><span id="loan_money" name="money"></span>元</td></tr>
                    <!-- <s:hidden name="money" value=""/> -->
                  <tr>
                    <th>还款期限</th><td>：<s:property value="bidinfo.deadline"/>个月</td>
                  </tr>
                </table>
                <p>
                  <input id="email" type="text" placeholder="验证码" value="" name="register[email]" class="input_text">
                  <input type="button" id="checkCode" class="code" onClick="createCode()" value="javascript:code"/>
                  <a href="javaScript:;" onclick="createCode()" class="form_a" ><img src="../images/shuaxin.png" style="width:50px;height:20px"></a>
                  </p>
                  <span id="span8s" class="spans" ></span><br>
                  <input type="checkbox" checked="true" class="oCheck" id="checkbox_name">已阅读，同意<a href="/ZhongCaiBao/bidinfo/borrow_agree.jsp" target="_blank">《众财宝借款协议》</a><br>
                  <input type="button" class="confirm" value="确认" onclick="validate()">
             
            </div>
            
            <p class="title"><span class="text-big"><a href="/ZhongCaiBao">首页</a></span> 〉 <a href="/ZhongCaiBao/bidinfo/showAllFinance.action">精选理财列表</a> 〉 计划详情</p>
            <a href="/ZhongCaiBao/bidinfo/showAllFinance.action" class="fright back">返回精选理财列表>></a>
            <s:if test="%{bidinfo.state=='未满标'}">           
            <div class="details_con clear" style="min-height: 278px;">
                <div class="top"><span class="circle"><s:property value="bidinfo.bidtype"/></span><em><s:property value="bidinfo.reason"/></em></div>
                <div class="fleft show_tz">
                    <table>
                        <tr class="cap"><td>标的总额<span>（元）</span></td><td>年利率</td><td>还款期限<span>（月）</span></td><td class="width_big">最小投资金额<span>（元）</span></td><td>剩余金额<span>（元）</span></td></tr>
                        <tr class="data"><td class="width_big"><span id="round5" style="font-size:30px"><s:property value="bidinfo.number"/></span></td><td class="spe"><s:property value="bidinfo.profit"/>%</td><td class="spe"><s:property value="bidinfo.deadline"/></td><td class="spe"><s:property value="1000"/></td><td class="width_big"><span id="round4" style="font-size:30px" class="round1"><s:property value="bidinfo.money"/></span></td></tr>
                    </table>                                                          
                </div>
                <!-- 进度 -->
                <div class="circle1">
                  <div class="pie_left"><div class="left"></div></div>
                  <div class="pie_right"><div class="right"></div></div>
                  <div class="mask"><span><s:property value="finplan.bid_plan.rate"/></span>%</div>
                </div>
               <!--  <input type="hidden" name="" id="hour_show" value="<s:date name="finplan.bid_plan.created"/>"> --><!-- <strong><s:property value="finplan.bid_plan.rate"/>%</strong> -->
           <!--      <input type="hidden" name="" id="day_shows" value="<s:date name="finplan.bid_plan.created" format="dd"/>">
           <input type="hidden" name="" id="hour_shows" value="<s:date name="finplan.bid_plan.created" format="hh"/>">
           <input type="hidden" name="" id="second_shows" value="<s:date name="finplan.bid_plan.created" format="ss"/>"> -->
                <div class="fright time"><div style="display:none"><span id="day_shows"><s:date name="finplan.bid_plan.created" format="dd"/></span>天<span id="hour_shows"><s:date name="finplan.bid_plan.created" format="hh"/></span>时<span id="minute_shows"><s:date name="finplan.bid_plan.created" format="mm"/></span>分<span id="second_shows"><s:date name="finplan.bid_plan.created" format="ss"/></span>秒</div>

                <div style="display:block">剩余<span id="day_show"></span>天<span id="hour_show"></span>时<span id="minute_show"></span>分<span id="second_show"></span>秒</div>
                </div> 
               <div> 

               <ul>
                    <li>保障方式 ：四重维度保障计划</li>
                    <li>收益方式 ：<s:property value="bidinfo.repaytypeh"/></li>
                    <li>预期收益 ： <span id="round6"><s:property value="bidinfo.number*bidinfo.profit/100"/></span>（元）</li>
                </ul>
 <!-- action="/ZhongCaiBao/bidinfo/buyBid.action" autocomplete="off" -->
               
                <div style="width:450px;float:left">
                                

                    <form name="buyform" id="buyform" action="/ZhongCaiBao/bidinfo/buyBid.action?userid=<s:property value="#session.userinfo.userid"/>" onkeypress="if(event.keyCode == 13) return false;">
                    <div class="loan_des"><span>账户余额 <span id="round7" class="round"><s:property value="#session.userinfo.xjye"/></span>元</span><a href="/ZhongCaiBao/userinfo/user.action?user=recharge" class="fright">充值</a></div>    
                    <div style="width:450px;height:60px;">        
                     <input type="text" name="money" placeholder="输入金额需为1000元的倍数" autocomplete="off" id="txt_val" class="tz_num" onkeyup="document.getElementById('loan_money').innerHTML =parseInt(this.value)"> 
                <!--  <input type="button"value="立即投标" class="loan_btn e2e2e2" onclick="txt()" > -->
                  <a value="立即投标" class="loan_btn e2e2e2" onclick="txt()"> 立即投标</a>
                  </div> 

                     <input type="hidden" name="userid" value="<s:property value="#session.userinfo.userid"/>" > 

                  <p><span id="txtfp" style="font-size:12px;"></span></p>
                   </form>
                  </div>
               </div>
            </div>
            
            <script type="text/javascript">
//判断金额1000的倍数
 
 
   $("#txt_val").blur(function() 
    { 
        var val; 
        val = $("#txt_val").val(); 
        if (val == '')  
            $("#txtfp").html("<font color='red'>请输入投资金额</font>"); 
        else{
            $("#txtfp").html(""); 


        }
    });

function txt(){
	/* 购买标的份数*/
	bidinfoNumber=parseInt(document.getElementById('txt_val').value)/1000;
	  document.getElementById("bidinfoNumber").innerHTML=bidinfoNumber;
  
	  
	  
	 /*判断投标金额*/ 
	  var num1,num2,num3
num1=$('.round').text();
num2=document.getElementById("txt_val").value;
num3=$('.round1').text();

a=parseFloat(num1);
b=parseFloat(num2);
c=parseFloat(num3);


 val = $("#txt_val").val();
 var session_name=$("#session_name").val();
var session_idcard=$("#session_idcard").val();
 var rem = val % 1000;

 if(session_name!='/'){
        if (rem != 0) {
          $("#txtfp").html("<font color='red'>投资金额需要为1000的倍数</font>"); 
          $("#txt_val").html("");
      	}else if (val == '') {
          $("#txtfp").html("<font color='red'>请输入投资金额</font>"); 
        }else if(val == 0){
      	  $("#txtfp").html("<font color='red'>投资金额最低需要为1000元</font>"); 
           $("#txt_val").html("");
        }else{
          $('.opict').show();
      	  $('.confirm_loan').show();
		}
if(b>a){
  $("#txtfp").html("<font color='red'>* 余额不足</font>"
          ); 
      $('.opict').hide();
      $('.confirm_loan').hide();
}else if(b>c){
  $("#txtfp").html("<font color='red'>*您投标的金额已超过剩余金额</font>"
          ); 
      $("#txt_val").html(val); 
      $('.opict').hide();
      $('.confirm_loan').hide();
}
}else if(session_idcard=="/"){
	
			 $("#txtfp").html("<font color='red'>* 请先登陆</font>"); 
}else if(session_name=="/"){
	
	 $("#txtfp").html("<font color='red'>* 请先实名认证</font>"); 
}
}
</script>
<input type="hidden" id="session_idcard" name="session_idcard" value=<s:property value="#session.userinfo.phone"/> />

<input type="hidden" id="session_name" name="session_name" value=<s:property value="#session.userinfo.name"/> />
            </s:if>
            <s:if test="%{bidinfo.state=='已满标'}">      
            <div class="details_con clear" style="min-height:230px;">
                <div class="top"><span class="circle"><s:property value="bidinfo.bidtype"/></span><em><s:property value="bidinfo.reason"/></em></div>
                <div class="fleft show show1">
                    <table>
                        <tr class="cap"><td>标的总额<span>（元）</span></td><td>年利率</td><td>还款期限<span>（月）</span></td><td>最小投资金额<span>（元）</span></td></tr>
                        <tr class="data"><td class="width_big"><span id="round9" style="font-size:30px"><s:property value="bidinfo.number"/></span></td><td class="spe"><s:property value="bidinfo.profit"/>%</td><td class="spe"><s:property value="bidinfo.deadline"/></td><td class="spe"><s:property value="100"/></td></tr>
                    </table>
                    <ul>
                        <li>保障方式 ：四重维度保障计划</li>
                        <li>收益方式 ：<s:property value="bidinfo.repaytype"/></li>
                        <li style="margin-right: 0;">预期收益 ： <span id="round4"><s:property value="bidinfo.number*bidinfo.profit/100"/></span>（元）</li>
                    </ul>                    
                </div>
                <div class="fright status2">
                    <img src="../images/full1.png" />
                    <ul style="width:215px;">
                        <li>还款日期：<s:date name="bidinfo.end" format="yyyy-MM-dd"/></li>
                    </ul>
                </div>
            </div>
            <script>
var my_val=document.getElementById('round9').innerHTML;
    a=Math.round(my_val*100)/100;
    document.getElementById("round9").innerHTML=a;
            </script>
            </s:if>
            <s:if test="%{bidinfo.state=='还款中'}">      
            <div class="details_con clear" style="min-height:230px;">
                <div class="top"><span class="circle"><s:property value="bidinfo.bidtype"/></span><em><s:property value="bidinfo.reason"/></em></div>
                <div class="fleft show show1">
                    <table>
                        <tr class="cap"><td>标的总额<span>（元）</span></td><td>年利率</td><td>还款期限<span>（月）</span></td><td>最小投资金额<span>（元）</span></td></tr>
                        <tr class="data"><td class="width_big"><span id="round10" style="font-size:30px"><s:property value="bidinfo.number"/></span></td><td class="spe"><s:property value="bidinfo.profit"/>%</td><td class="spe"><s:property value="bidinfo.deadline"/></td><td><s:property value="100"/></td></tr>
                    </table>
                    <ul>
                        <li>保障方式 ：四重维度保障计划</li>
                        <li>收益方式 ：<s:property value="bidinfo.repaytype"/></li>
                        <li style="margin-right: 0;">预期收益 ：<span id="round8"><s:property value="bidinfo.number*bidinfo.profit/100"/></span> （元）</li>                        
                    </ul>                    
                </div>
                <div class="fright status2">
                    <img src="../images/payback.png" />
                    <ul style="width:215px;">
                        <li>还款日期：<s:date name="bidinfo.end" format="yyyy-MM-dd"/></li>
                    </ul>
                </div>
            </div>
             <script>
             var my_val=document.getElementById('round8').innerHTML;
    a=Math.round(my_val*100)/100;
    document.getElementById("round8").innerHTML=a
var my_val=document.getElementById('round10').innerHTML;
    a=Math.round(my_val*100)/100;
    document.getElementById("round10").innerHTML=a
            </script>
            </s:if>
            <div class="info">
                <div class="info_nav_con">
                    <a href="javascript:;" class="info_nav fleft bit">标的详情</a><a href="javascript:;" class="info_nav fleft">投标记录</a><a href="javascript:;" class="info_nav fleft">自动投资项目</a>
                </div>
                <div class="info_main_con">
                    <div class="info_main1" style="display:block;">
                        <div class="bidInfo">
                          <table>
                <tr><th width="15%">保障方式</th><td>四重维度保障计划</td></tr>
                <tr><th>计划名称</th><td><s:property value="finplan.planname"/></td></tr>
                <tr><th>锁定期</th><td>7天</td></tr>
                <tr><th>开放日期</th><td><s:date name="finplan.bid_plan.created" format="yyyy-MM-dd"/>日起持续7天</td></tr>
                <tr><th>收益方式</th><td><s:property value="bidinfo.repaytype"/></td></tr>
                <tr><th>计划介绍</th><td><!-- <s:property value="finplan.planinfo"/> -->精选理财计划是众财宝推出的便捷高效的自动投标工具。精选理财计划在用户认可的标的范围内，对符合要求的标的进行自动投标，且回款本金在相应期限内自动复投，期限结束后精选理财计划会通过众财宝债权转让平台进行转让退出。该计划所对应的标的均100%适用于众财宝本金保障计划并由系统实现标的分散投资。出借所获利息收益可选择每月复投或提取，更好的满足用户多样化的理财需求。</td></tr>
                <tr><th>加入条件</th><td>1000递增</td></tr>
                <tr><th>协议文本</th><td><a href="/ZhongCaiBao/bidinfo/treaty-3.jsp" target="_blank">《精选理财协议》</a></td></tr>
                          </table>
                        </div>
                    </div>
                    <div class="info_main2" style="display:none;"> 
                        <div class="records">
                            <table id="table_test">
                                <tr class="fwhite title"><th width="17%" class="round_angle_l">序号</th><th width="25%">理财人</th><th width="23%">投资金额</th><th>投资时间</th></tr>
                               <s:iterator value="lcrbuyinfo" var="vo">
                                <tr class="dark"><td><s:property value="#vo.id"/></td><td><s:property value="#vo.lcrname"/></td><td><strong><s:property value="#vo.money"/></strong></td><td><span class="span1"><s:date name="#vo.time" format="yyyy-MM-dd hh:mm:ss"/></span></td></tr>
                                
                                </s:iterator>                            
                            </table>
                        </div>
                    </div>
                    <div class="info_main2" style="display:none;"> 
                        <div class="records">
                            <table id="table_test">
                                <tr class="fwhite title"><th width="17%" class="round_angle_l">借款标题</th><th width="15%">标的类型</th><th>借款金额</th><th>还款期限</th><th>年化收益率</th><th class="round_angle_r">详情</th></tr>
                                <s:iterator value="finplan.bidinfolist" var="vo">    
                                <tr class="dark"><td><s:property value="#vo.reason"/></td><td><span class="creditlevel"><s:property value="#vo.bidtype"/></span></td><td><strong><s:property value="#vo.number"/></strong>元</td><td><s:property value="#vo.deadline"/>个月</td><td><s:property value="#vo.profit"/>%</td><td><a href="/ZhongCaiBao/bidinfo/findById.action?id=${vo.id}">查看详细</a></td></tr>
                                </s:iterator>
                            </table>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript"> 
        $(document).ready(function(){ 
        odd= {"background":"#f1f1f1","color":"#000"};//奇数样式 
        even={"background":"#fff","color":"#000"};//偶数样式 
        odd_even("#table_test",odd,even); 
        }); 
        function odd_even(id,odd,even){ 
        $(id).find("tr").each(function(index,element){ 
        if(index%2==1) 
        $(this).css(odd); 
        else 
        $(this).css(even); 
        }); 
        } 
        </script> 
<!--main结束-->

<!--footer start-->
    <%@include file="../pub/pub_footer.jsp" %> 
<!--footer end-->
<script type="text/javascript" src="../js/md5.js"></script>
<script type="text/javascript" src="../js/embed.js"></script>
<script type="text/javascript" src="../js/date.js"></script>

<script>
var my_val=document.getElementById('round4').innerHTML;
    a=Math.round(my_val*100)/100;
    document.getElementById("round4").innerHTML=a
var my_val=document.getElementById('round5').innerHTML;
    a=Math.round(my_val*100)/100;
    document.getElementById("round5").innerHTML=a
    var my_val=document.getElementById('round6').innerHTML;
    a=Math.round(my_val*100)/100;
    document.getElementById("round6").innerHTML=a
    var my_val=document.getElementById('round7').innerHTML;
    a=Math.round(my_val*100)/100;
    document.getElementById("round7").innerHTML=a;
    
   $(function(){
	   var my_val1=document.getElementsByTagName("strong");
		  for(var i=0;i<my_val1.length;i++){			  
			  RoundNumber(my_val1[i])	  
		    } 
	   function RoundNumber(mark){
			var RoundValue=mark.innerHTML;
			var RoundValueRound=Math.round(RoundValue);
			mark.innerHTML=RoundValueRound
		}
   }) 


    </script>
  </body>
</html>
