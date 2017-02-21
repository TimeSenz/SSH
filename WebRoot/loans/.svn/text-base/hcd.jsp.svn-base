<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="dao.Userinfo" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
Userinfo user=(Userinfo)session.getAttribute("userinfo");
String loginflag=(String)session.getAttribute("loginflag");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>我要借款汇车贷</title>
    <meta http-equiv="content-type" content="text/html" charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link type="text/css" rel="stylesheet" href="css/index.css">
    <link type="text/css" rel="stylesheet" href="css/common.css">
    <link type="text/css" rel="stylesheet" href="css/static.css">
    <link type="text/css" rel="stylesheet" href="css/apply.css">
    <link rel="Shortcut Icon" href="../images/zcb-icon.ico">
    <script src="js/jquery-1.8.2.min.js"></script>
    <script src="js/jquery-1.8.2.min.js-ver=0b6ecf17e3" type="text/javascript"></script>
    <script type="text/javascript" src="js/caculator.js"></script>
    <script src="js/jquery.ycd.uiplug.js"></script>
<script src="js/apponline2.js"></script>

<!--[if IE 6]>
    <script src="/models/DD_belatedPNG-min.js"></script>
    <script>
    DD_belatedPNG.fix('.png');
    </script>
<![endif]-->
        <script type="text/javascript" language="javascript">
 
  
     function change(){
   var text =document.getElementById("LX");
   text.value="抵押";
  
  }
   function change2(){
   var text =document.getElementById("LX");
   text.value="质押";
  
  }
    <script src="js/jquery-1.6.4.min.js"></script>
  </head>
  
  <body>
<div class="pg-container">
<!--头部--><%@include file="../pub/pub_top.jsp" %> 
<!--头部end-->
<div class="conOut">
    <!-- con s -->
    <div class="ui-breadcrumb">
              <ul class="fn-clear">
                <li class="ui-breadcrumb-text-first">
                  <a href="/ZhongCaiBao">首页</a>
                </li>
                <li class="ui-breadcrumb-separator">〉</li>
                <li class="ui-breadcrumb-text">
                  <a href="/ZhongCaiBao/home/home.action?home=borrowed">我要借款</a>
                </li>
                <li class="ui-breadcrumb-separator">〉</li>
                <li class="ui-breadcrumb-text">
                  <a>汇车贷</a>
                </li>
                <li class="ui-breadcrumb-separator">〉</li>
                <li class="ui-breadcrumb-text">
                  <a>填写申请表</a>
                </li>
              </ul>
            </div>
    <div class="con">
        <div class="applyC clearfix">
            <div class="applyCL p-bottom">
                <div class="applyCLT">
                    <a class="curr" href="javascript:void(0);" onClick="change()">抵押</a><a href="javascript:void(0);" onClick="change2()">质押</a>
                </div>
                <div class="applyCLForm">
                    <!-- form0 -->
                    <div id="applyF0" class="applyFo">
                        <form id="appform" autocomplete="off" action="/ZhongCaiBao/userinfo/clxx.action" method="post">
                            <div class="foC">
                                <div class="row">
                                    <label class="rowL" for=""><i>*</i>姓名</label>
                                    <input name="clxx.xm" id="uname" class="rowText" type="text" value="" placeholder="请填写姓名或称呼，如：张先生">
                                </div>
                                <div class="rowError" id="uname_err"></div>

                                <div class="row">
                                    <label class="rowL" for=""><i>*</i>手机号</label>
                                    <input name="clxx.sjh" id="phone" class="rowText" type="text" value="" placeholder="请填写真实号码，以便于联系您">
                                </div>
                                <div class="rowError" id="phone_err"></div>

                                <div class="row">
                                    <label class="rowL" for=""><i>*</i>车辆购置时间</label>
                                    <div id="sel1" class="sel l">
                                        <div class="selT clearfix">
                                            <input class="selInput" type="text" name="GCN" id="car_buy_year">
                                            <a class="selIcon" href="javascript:void(0);">▼</a>
                                        </div>
                                        <div class="sellist" style="display:none;">
                                            <ul>
                                                <li><a href="javascript:void(0);">2014</a></li>
                                                <li><a href="javascript:void(0);">2013</a></li>
                                                <li><a href="javascript:void(0);">2012</a></li>
                                                <li><a href="javascript:void(0);">2011</a></li>
                                                <li><a href="javascript:void(0);">2010</a></li>
                                                <li><a href="javascript:void(0);">2009</a></li>
                                                <li><a href="javascript:void(0);">2008</a></li>
                                                <li><a href="javascript:void(0);">2007</a></li>
                                                <li><a href="javascript:void(0);">2006</a></li>
                                                <li><a href="javascript:void(0);">2005</a></li>
                                                <li><a href="javascript:void(0);">2004</a></li>
                                                <li><a href="javascript:void(0);">2003</a></li>
                                                <li><a href="javascript:void(0);">2002</a></li>
                                                <li><a href="javascript:void(0);">2001</a></li>
                                                <li><a href="javascript:void(0);">2000</a></li>
                                                <li><a href="javascript:void(0);">1999</a></li>
                                                <li><a href="javascript:void(0);">1998</a></li>
                                                <li><a href="javascript:void(0);">1997</a></li>
                                                <li><a href="javascript:void(0);">1996</a></li>
                                                <li><a href="javascript:void(0);">1995</a></li>
                                                <li><a href="javascript:void(0);">1994</a></li>
                                                <li><a href="javascript:void(0);">1993</a></li>
                                                <li><a href="javascript:void(0);">1992</a></li>
                                                <li><a href="javascript:void(0);">1991</a></li>
                                                <li><a href="javascript:void(0);">1990</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <span class="l rowInfo">年</span>
                                    <div id="sel2" class="sel l">
                                        <div class="selT clearfix">
                                            <input class="selInput" type="text" name="GCY" id="car_buy_month">
                                            <a class="selIcon" href="javascript:void(0);">▼</a>
                                        </div>
                                        <div class="sellist" style="display:none;">
                                            <ul>
                                                <li><a href="javascript:void(0);">1</a></li>
                                                <li><a href="javascript:void(0);">2</a></li>
                                                <li><a href="javascript:void(0);">3</a></li>
                                                <li><a href="javascript:void(0);">4</a></li>
                                                <li><a href="javascript:void(0);">5</a></li>
                                                <li><a href="javascript:void(0);">6</a></li>
                                                <li><a href="javascript:void(0);">7</a></li>
                                                <li><a href="javascript:void(0);">8</a></li>
                                                <li><a href="javascript:void(0);">9</a></li>
                                                <li><a href="javascript:void(0);">10</a></li>
                                                <li><a href="javascript:void(0);">11</a></li>
                                                <li><a href="javascript:void(0);">12</a></li>
                                            </ul>   
                                        </div>
                                    </div>
                                    <span class="l rowInfo">月</span>
                                </div>
                                <div class="rowError" id="date_err"></div>

                                <div class="row">
                                    <label class="rowL" for=""><i>*</i>车辆登记城市</label>
                                    <input  id="cityInput" name="clxx.djcs"  class="rowText cityPlug" type="text" cityno='' value="" placeholder="请选择城市">
                                </div>
                                <div class="rowError" id="cityInput_err"></div>

                                <div class="row" style="line-height: 2;">
                                    <label class="rowL" for=""><i>*</i>车辆购置价格</label>
                                    <input name="clxx.gzjg" id="car_buy_price"  class="rowText" type="text" value="" placeholder="请填写车辆价格" style="width:155px;"><label class="unit">万元</label>
                                </div>
                                <div class="rowError" id="car_buy_price_err"></div>

                                <div class="row">
                                    <label class="rowL" for="">电子邮箱</label>
                                    <input type="text" name="clxx.dzyx" id="email" class="rowText">
                                </div>
                                <div class="rowError" id="email_err"></div>

                                <div class="row">
                                    <label class="rowL" for="">留言</label>
                                    <textarea class="rowTextArea" name="clxx.ly" id="leave_word" cols="30" rows="10"></textarea>
                                </div>
                                <div class="rowError" id="leave_word_err"></div>
                                <input type="hidden" id="LX" name="clxx.lx" value="GPS">
                                <input name="submit" id="submit" class="foBtn" type="submit" value="提交申请">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="applyCR png">
                <!-- applyC0 -->
                <!-- GPS -->
                <div id="applyC0" class="applyCR-con" style="font:12px/1.5 tahoma,arial,\5b8b\4f53,SimSun,STSong,sans-serif;">
                    <span class="pointBlue"></span>
                    <h4>申请条件：</h4>
                    <ul>
                        <li>1、年龄在22-55周岁之间；</li>
                        <li>2、具有中国国籍（香港、澳门、台湾暂时除外）；</li>
                        <li>3、借款人须拥有对该车辆的所有权；</li>
                        <li>4、借款人在业务开展城市长期居住和工作；</li>  
                        <li>5、车龄10年以内。</li>
                    </ul>
                    <span class="pointBlue"></span>
                    <h4>准备材料：</h4>
                    <ul>
                        <li>1、身份证明及婚姻证明（非本地户籍需提供居住证或暂住证）；</li>
                        <li>2、车辆证明（登记证、行驶证、购车发票等）；</li>
                        <li>3、资信证明（个人信用报告、常用银行流水等）；</li>
                        <li>4、车辆保险；</li>
                        <li>5、工作证明等其他资信材料。</li>
                    </ul>
                    <span class="pointBlue"></span>
                    <h4>办理流程：</h4>
                    <img src="images/pic0.png" alt="">
                    <div class="borrowing_calculator clearfix">
                        <h3 class="clearfix">借款计算器</h3>
                        <div class="left calculators_box">
                            <div class="m-row" style="margin-bottom: 10px;">
                                <label class="left m-rowLabel" for="">借款金额：</label>
                                <div class="left m-holderBox" style="width:85px;">
                                    <input class="m-holderInput m-textFocus icon-yuan png" type="text" id="amount" value="100000" maxlength="7">
                                </div>
                            </div>
                            <div class="m-row" style="margin-bottom: 10px;">
                                <label class="left m-rowLabel" for="">借款期限：</label>
                                <div class="left m-drop clearfix" style="width:83px;">
                                    <select id="period" name="period" class="period" onChange="look();">
                                        <option value="0">请选择</option>                            
                                        <option value="3">3</option>
                                        <option value="6">6</option>
                                        <option value="12">12</option>
                                        <option value="18">18</option>
                                        <option value="24">24</option>
                                        <option value="36">36</option>
                                    </select>
                                </div>
                            </div>
                            <div class="m-row" style="margin-bottom: 10px;">
                                <label class="left m-rowLabel" for="">年化利率：</label>
                                <div class="left m-holderBox" style="width:85px;">
                                    <input class="m-holderInput m-textFocus icon-per png" type="text" id="rate" value="12" maxlength="2">
                                </div>
                            </div>
                            <p class="now_calculate"><input class="input_btn btn_normal" type="button" value="立即计算" id="calbtn" onclick="GO();"></p>
                        </div>
                        <div class="left calculators_result">
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <th scope="col" width="50%">计算结果</th>
                                    <th scope="col" width="50%">计算方法</th>
                                </tr>
                                <tr>
                                    <td>借款总额<strong class="money" id="borrowAmount"></strong>元</td>
                                    <td>本金</td>
                                </tr>
                                <tr>
                                    <td>还款总额<strong  class="money" id="paybackAmount"></strong>元</td>
                                    <td>本金+利息（不含平台费）</td>
                                </tr>
                                <tr>
                                    <td>每月还款<strong  class="money" id="averagePerMonth"></strong>元</td>
                                    <td>还款总额/借款期限</td>
                                </tr>
                                <tr>
                                    <td>实际月利率<strong  class="money" id="monthRate"></strong>%</td>
                                    <td>年利率/12</td>
                                </tr>
                                <!-- <tr>
                                    <td><a class="detail" href="javascript:void(0);">查看每月还款明细</a></td>
                                    <td>&nbsp;</td>
                                </tr> -->
                            </table>
                        </div>
                    </div>
                </div>
                <!-- applyC1 -->
                <!-- 抵押 -->
                <div id="applyC1" class="applyCR-con" style="font:12px/1.5 tahoma,arial,\5b8b\4f53,SimSun,STSong,sans-serif;display:none;">
                    <span class="pointBlue"></span>
                    <h4>申请条件：</h4>
                    <ul>
                        <li>1、年龄在22-55周岁之间；</li>
                        <li>2、具有中国国籍（香港、澳门、台湾暂时除外）；</li>
                        <li>3、借款人须拥有对该车辆的所有权；</li>
                        <li>4、借款人在业务开展城市长期居住和工作；</li>  
                            <li>5、车龄10年以内。</li> 
                    </ul>
                    <span class="pointBlue"></span>
                    <h4>准备材料：</h4>
                    <ul>
                        <li>1、身份证明及婚姻证明（非本地户籍需提供居住证或暂住证）；</li>
                        <li>2、车辆证明（登记证、行驶证、购车发票等）；</li>
                        <li>3、资信证明（个人信用报告、常用银行流水等）；</li>
                        <li>4、车辆保险；</li>
                        <li>5、工作证明等其他资信材料。</li>
                    </ul>
                    <span class="pointBlue"></span>
                    <h4>办理流程：</h4>
                    <img src="images/pic1.png" alt="">
                    <div class="borrowing_calculator clearfix">
                        <h3 class="clearfix">借款计算器</h3>
                        <div class="left calculators_box">
                            <div class="m-row" style="margin-bottom: 10px;">
                                <label class="left m-rowLabel" for="">借款金额：</label>
                                <div class="left m-holderBox" style="width:85px;">
                                    <input class="m-holderInput m-textFocus icon-yuan png" type="text" id="amount1" value="100000" maxlength="7">
                                </div>
                            </div>
                            <div class="m-row" style="margin-bottom: 10px;">
                                <label class="left m-rowLabel" for="">借款期限：</label>
                                <div class="left m-drop clearfix" style="width:83px;">
                                    <select id="period1" name="period" class="period" onChange="look();">
                                        <option value="0">请选择</option>
                                        <option value="3">3</option>
                                        <option value="6">6</option>
                                        <option value="12">12</option>
                                        <option value="18">18</option>
                                        <option value="24">24</option>
                                        <option value="36">36</option>
                                    </select>
                                </div>
                            </div>
                            <div class="m-row" style="margin-bottom: 10px;">
                                <label class="left m-rowLabel" for="">年化利率：</label>
                                <div class="left m-holderBox" style="width:85px;">
                                    <input class="m-holderInput m-textFocus icon-per png" type="text" id="rate1" value="12" maxlength="2">
                                </div>
                            </div>
                            <p class="now_calculate"><input class="input_btn btn_normal" type="button" value="立即计算" id="calbtn" onclick="GO1();"></p>
                        </div>
                        <div class="left calculators_result">
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <th scope="col" width="50%">计算结果</th>
                                    <th scope="col" width="50%">计算方法</th>
                                </tr>
                                <tr>
                                    <td>借款总额<strong class="money" id="borrowAmount1"></strong>元</td>
                                    <td>本金</td>
                                </tr>
                                <tr>
                                    <td>还款总额<strong  class="money" id="paybackAmount1"></strong>元</td>
                                    <td>本金+利息（不含平台费）</td>
                                </tr>
                                <tr>
                                    <td>每月还款<strong  class="money" id="averagePerMonth1"></strong>元</td>
                                    <td>还款总额/借款期限</td>
                                </tr>
                                <tr>
                                    <td>实际月利率<strong  class="money" id="monthRate1"></strong>%</td>
                                    <td>年利率/12</td>
                                </tr><!-- 
                                <tr>
                                    <td><a class="detail" href="javascript:void(0);">查看每月还款明细</a></td>
                                    <td>&nbsp;</td>
                                </tr> -->
                            </table>
                        </div>
                </div>
            </div>    

        </div>
    </div>
    
    <!-- con e -->
</div>
<div class="con con1">
    <h3>我要借款</h3>
        <img src="images/hetong.png" alt="">
    </div>
</div>
<!-- //// SCRIPT //// -->
<script src="js/apply.js"></script>
<!--footer start-->
    <%@include file="../pub/pub_footer.jsp" %> 
<!--footer end-->
</div>

  </body>
</html>