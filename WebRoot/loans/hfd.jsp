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
    <title>我要借款汇房贷</title>
    <meta http-equiv="content-type" content="text/html" charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link type="text/css" rel="stylesheet" href="css/index.css">
    <link type="text/css" rel="stylesheet" href="css/common.css">
        <link type="text/css" rel="stylesheet" href="css/static.css">
        <link type="text/css" rel="stylesheet" href="css/apply.css">
        <link rel="Shortcut Icon" href="../images/zcb-icon.ico">
        <script src="js/jquery-1.6.4.min.js"></script>
        <script src="js/tabMenu.js"></script>
        <script src="js/checkCode.js"></script>
        <script src="js/caculator.js"></script>
        <script type="text/javascript" language="javascript"> 
            window.onload=function(){
                function change(){
                   var text =document.getElementById("LX");
                   text.value="二次抵押";
                  
                  }
                   function change2(){
                   var text =document.getElementById("LX");
                   text.value="首次抵押";
                  
                }

                checkInput("js_checkbox");
                checkInput("js_checkbox1");
            }

             
        </script>
  </head>
  
  <body>
<div class="pg-container">
<!--头部-->
<%@include file="../pub/pub_top.jsp" %> 
<!--头部end-->
<!--main 开始-->
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
                  <a>汇房贷</a>
                </li>
                <li class="ui-breadcrumb-separator">〉</li>
                <li class="ui-breadcrumb-text">
                  <a>填写申请表</a>
                </li>
              </ul>
            </div>

<!-- hd: header e -->
        <script>var curpage='apply';</script>
        <div class="conOut">
            <!-- con s -->
            <div class="con">
                <div class="applyC clearfix">
                    <div class="applyCL">
                        <div class="applyCLT">
                            <div class="category">
                                <a href="javascript:;" onClick="change();">二次抵押</a>
                                <a href="javascript:;" onClick="change2();">首次抵押</a>
                            </div>
                        </div>
                        <div class="applyCLForm">
                            <!-- form0 -->
                            <div id="applyF0" class="applyFo">
                                <div id="form-con">
                                    <form name="fdform" autocomplete="off" action="/ZhongCaiBao/userinfo/fdxx.action"  method="post" id="js_checkbox">
                                        <div class="foC">
                                            <div class="row">
                                                <label class="rowL" for=""> <i>*</i>
                                                    姓名
                                                </label>
                                                <input name="fdxx.xm" id="XM" class="rowText js_input" type="text" value="" placeholder="请填写姓名或称呼，如：张先生" datavalue="name"></div>
                                            <div class="rowError" id="XM_err"></div>

                                            <div class="row">
                                                <label class="rowL" for=""> <i>*</i>
                                                    手机号
                                                </label>
                                                <input name="fdxx.sjh" id="SJH" class="rowText js_input" type="text" value="" placeholder="请填写真实号码，以便于联系您" datavalue="mobile"></div>
                                            <div class="rowError" id="SJH_err"></div>

                                            <div class="row">
                                                <label class="rowL" for="">
                                                    <i>*</i>
                                                    房屋面积
                                                </label>
                                                <input name="fdxx.fwmj" id="FWMJ" class="rowText js_input" type="text" value="" placeholder="填写房屋面积" datavalue="num">
                                                <label class="unit">平米</label>
                                            </div>
                                            <div class="rowError" id="FWMJ_err"></div>
                                            <div class="row">
                                                <label class="rowL" for="">
                                                    <i>*</i>
                                                    房屋所在城市
                                                </label>
                                                <input  id="FWSZCS" name="fdxx.fwszcs"  class="rowText js_input" type="text" value="" placeholder="填写所在城市" datavalue="word"></div>
                                            <div class="rowError" id="FWSZCS_err"></div>

                                            <div class="row">
                                                <label class="rowL" for="">
                                                    <i>*</i>
                                                    房龄
                                                </label>
                                                <input  id="FL" name="fdxx.fl"  class="rowText js_input" type="text" value="" placeholder="填写房龄" datavalue="num">
                                                <label class="unit">年</label>
                                            </div>
                                            <div class="rowError" id="FL_err"></div>

                                            <div class="row">
                                                <label class="rowL" for="">
                                                    <i>*</i>
                                                    贷款机构
                                                </label>
                                                <input  id="DKJG" name="fdxx.dkjg"  class="rowText js_input" type="text" value="" placeholder="填写贷款机构" datavalue="word"></div>
                                            <div class="rowError" id="DKJG_err"></div>

                                            <div class="row">
                                                <label class="rowL" for="">
                                                    <i>*</i>
                                                    已贷金额
                                                </label>
                                                <input  id="YDJE" name="fdxx.ydje"  class="rowText js_input" type="text" value="" placeholder="填写已贷金额" datavalue="num">
                                                <label class="unit">万元</label>
                                            </div>
                                            <div class="rowError" id="YDJE_err"></div>

                                            <div class="row">
                                                <label class="rowL" for="">
                                                    <i>*</i>
                                                    申请金额
                                                </label>
                                                <input  id="SQJE" name="fdxx.sqje"  class="rowText js_input" type="text" value="" placeholder="填写申请金额" datavalue="num">
                                                <label class="unit">万元</label>
                                            </div>
                                            <div class="rowError" id="SQJE_err"></div>

                                            <div class="row">
                                                <label class="rowL" for=""><i>*</i>电子邮箱</label>
                                                <input type="text" name="fdxx.dzyx" id="email" class="rowText js_input" datavalue='email'></div>
                                            <div class="rowError" id="email_err"></div>

                                            <div class="row">
                                                <label class="rowL" for="">留言</label>
                                                <textarea class="rowTextArea" name="fdxx.ly" id="leave_word" cols="30" rows="10"></textarea>
                                            </div>
                                            <div class="rowError" id="leave_word_err"></div>

                                            <input type="hidden" id="LX" name="fdxx.lx" value="有抵押" >

                                            <input name="submit" id="submit" class="foBtn" type="submit" value="提交申请"></div>
                                    </form>
                                    <form name="fdform" action="/ZhongCaiBao/userinfo/fdxx.action" method="post" style="display:none;" id="js_checkbox1">
                                        <div class="foC">
                                            <div class="row">
                                                <label class="rowL" for=""> <i>*</i>
                                                    姓名
                                                </label>
                                                <input name="fdxx.xm" id="XM" class="rowText js_input" type="text" value="" placeholder="请填写姓名或称呼，如：张先生" datavalue="name"></div>
                                            <div class="rowError" id="XM_err"></div>

                                            <div class="row">
                                                <label class="rowL" for=""> <i>*</i>
                                                    手机号
                                                </label>
                                                <input name="fdxx.sjh" id="SJH" class="rowText js_input" type="text" value="" placeholder="请填写真实号码，以便于联系您" datavalue="mobile"></div>
                                            <div class="rowError" id="SJH_err"></div>

                                            <div class="row">
                                                <label class="rowL" for="">
                                                    <i>*</i>
                                                    房屋面积
                                                </label>
                                                <input name="fdxx.fwmj" id="FWMJ" class="rowText js_input" type="text" value="" placeholder="填写房屋面积" datavalue="num">
                                                <label class="unit">平米</label>
                                            </div>
                                            <div class="rowError" id="FWMJ_err"></div>
                                            <div class="row">
                                                <label class="rowL" for="">
                                                    <i>*</i>
                                                    房屋所在城市
                                                </label>
                                                <input  id="FWSZCS" name="fdxx.fwszcs"  class="rowText js_input" type="text" value="" placeholder="填写所在城市" datavalue="word"></div>
                                            <div class="rowError" id="FWSZCS_err"></div>

                                            <div class="row">
                                                <label class="rowL" for="">
                                                    <i>*</i>
                                                    房龄
                                                </label>
                                                <input  id="FL" name="fdxx.fl"  class="rowText js_input" type="text" value="" placeholder="填写房龄" datavalue="num">
                                                <label class="unit">年</label>
                                            </div>
                                            <div class="rowError" id="FL_err"></div>

                                            <div class="row">
                                                <label class="rowL" for="">
                                                    <i>*</i>
                                                    申请金额
                                                </label>
                                                <input  id="SQJE" name="fdxx.sqje"  class="rowText js_input" type="text" value="" placeholder="填写申请金额" datavalue="num">
                                                <label class="unit">万元</label>
                                            </div>
                                            <div class="rowError" id="SQJE_err"></div>

                                            <div class="row">
                                                <label class="rowL" for=""><i>*</i>电子邮箱</label>
                                                <input type="text" name="fdxx.dzyx" id="email" class="rowText js_input" datavalue='email'></div>
                                            <div class="rowError" id="email_err"></div>

                                            <div class="row">
                                                <label class="rowL" for="">留言</label>
                                                <textarea class="rowTextArea" name="fdxx.ly" id="leave_word" cols="30" rows="10"></textarea>
                                            </div>
                                            <div class="rowError" id="leave_word_err"></div>

                                            <input type="hidden" id="LX" name="fdxx.lx" value="有抵押" >

                                            <input name="submit" id="submit" class="foBtn" type="submit" value="提交申请"></div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="applyCR png">
                        <!-- applyC0 -->
                        <div id="applyC0" class="applyCR-con" style="font:12px/1.5 tahoma,arial,\5b8b\4f53,SimSun,STSong,sans-serif;">
                            <span class="pointBlue"></span>
                            <h4>申请条件：</h4>
                            <ul>
                <li>1、中国（不含港澳台）公民，年龄在18-65周岁，且在现单位连续工作满六个月以上的授薪人群<br>
   &nbsp;&nbsp;&nbsp;&nbsp;（如不满六个月，但本单位工作内容与上一单位相同，可累加上一单位的工作期限）及经营满<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一年以上的经营人群</li>
                        <li>2、抵押房产权利人中无未满18周岁的未成年人及无大于70岁（含70岁）的成年人。</li>
                        <li>3、房产若是二次抵押，房屋的抵押第一权利人必须是银行。</li>
                        <li>4、借款人需要有一套或一套以上名下所有权住房（至少一套是本市所有权房）。</li>
            </ul>
                    <span class="pointBlue"></span>
                    <h4>准备材料：</h4>
                    <ul>
                        <li>1、房产所有权利人及配偶身份证明原件。</li>
                        <li>2、房产所有权利人及配偶户口簿原件。</li>
                        <li>3、婚姻证明（结婚证、离婚证、单身证）。</li>
                        <li>4、房屋产权证原件。</li>
                        <li>5、20天之内的个人信用报告原件。</li>
                        <li>6、工作、收入证明资料。</li>
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
                                            <input class="m-holderInput m-textFocus icon-yuan png" type="text" id="amount" value="100000"></div>
                                    </div>
                                    <div class="m-row" style="margin-bottom: 10px;">
                                        <label class="left m-rowLabel" for="">借款期限：</label>
                                        <div class="left m-drop clearfix" style="width:83px;">
                                            <select id="period" name="period" class="period">
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
                                            <input class="m-holderInput m-textFocus icon-per png" type="text" id="rate" value="12"></div>
                                    </div>
                                    <p class="now_calculate">
                                        <input class="input_btn btn_normal" type="button" value="立即计算" id="calbtn" onclick="GO();"></p>
                                </div>
                                <div class="left calculators_result">
                                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                            <th scope="col" width="50%">计算结果</th>
                                            <th scope="col" width="50%">计算方法</th>
                                        </tr>
                                        <tr>
                                            <td>
                                                借款总额 <strong class="money" id="borrowAmount"></strong>
                                                元
                                            </td>
                                            <td>本金</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                还款总额 <strong  class="money" id="paybackAmount"></strong>
                                                元
                                            </td>
                                            <td>本金+利息（不含平台费）</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                每月还款
                                                <strong  class="money" id="averagePerMonth"></strong>
                                                元
                                            </td>
                                            <td>还款总额/借款期限</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                实际月利率
                                                <strong  class="money" id="monthRate"></strong>
                                                %
                                            </td>
                                            <td>年利率/12</td>
                                        </tr><!-- 
                                        <tr>
                                            <td>
                                                <a class="detail" href="javascript:void(0);">查看每月还款明细</a>
                                            </td>
                                            <td>&nbsp;</td>
                                        </tr> -->
                                    </table>
                                </div>
                            </div>
                        </div>
                        <!-- applyC1 --> </div>
                </div>
                <!-- con e --> </div>

                <div class="con con1">
    <h3>我要借款</h3>
        <img src="images/hetong.png" alt="">
    </div>
        </div>
<!--main 结束-->
<!--footer start-->
    <%@include file="../pub/pub_footer.jsp" %> 
<!--footer end-->
</div>

  </body>
</html>