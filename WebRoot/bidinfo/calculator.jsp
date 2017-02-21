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
    <base href="<%=basePath%>">    
    <title>理财计算器</title>
    <link type="text/css" rel="stylesheet" href="css/common.css">
    <link type="text/css" rel="stylesheet" href="css/calculator.css">
    <link rel="Shortcut Icon" href="../images/zcb-icon.ico">  
    <script src="js/jquery-1.6.4.min.js"></script>
    <script src="js/fund.js"></script>
    <script src="js/calculator.js"></script>
  </head>
  <body>
	<div class="pg-container">
	<!--头部-->
		<%@include file="../pub/pub_top.jsp" %>
	<!--头部end-->
	<!--main开始-->
	    <div class="main_box intro_bg">
        	<div class="w1000">
        		<div class="calculator">
				    <div class="calculator-header">
				        <h4>
				            收益计算器
				        </h4>
				        <div class="intro">
				            <p>
				                收益计算器简介：
				            </p>
				            <p>
				                收益计算器用于计算您在众财宝投资将会获得的收益，理财更加透明高效，固定日还款项目由于计息方式略有不同，具体收益请参见投资后的统计。
				            </p>
				        </div>
				    </div>
				    <div class="calculator-body">
				        <form>
				            <ul>
				                <li>
				                    <label>投资金额：</label>
				                    <input type="text" id="amountValue" placeholder="请输入投资金额">
				                    <span class="error-tip">元</span>
				                </li>
				                <li>
				                    <label>投入时长：</label>
				                    <input type="text" id="dueMonth" placeholder="请输入投入时长">
				                    <span class="error-tip">个月</span>
				                </li>
				                <li>
				                    <label>年化利率：</label>
				                    <input type="text" id="annualRate" placeholder="请输入年化利率">
				                    <span class="error-tip">%</span>
				                </li>
				                <li>
				                    <label>还款方式：</label>
				                    <select type="select" id="paymentMethod">
				                        <option value="0">
				                            按月付息到期还本
				                        </option>
				                        <option value="1">
				                            按月等额本息
				                        </option>
				                        <option value="2">
				                            到期还本付息
				                        </option>				                        
				                    </select>
				                    <span class="error-tip">
				                    </span>
				                </li>
				                <li class="buttons">
				                    <input type="submit" class="btn btn-primary" value="计算" onclick="calculate();">
				                    <input type="reset" class="btn btn-default" value="重置" onclick="calculates();">
				                </li>
				            </ul>
				        </form>
				    </div>
				    <div id="cal-result" class="calculator-pannel">
				        <h3>收益结果</h3>
				        <div class="ccc-ui-repayments block">
				            <table class="table table-bordered table-striped">
				                <thead>
				                    <tr>
				                        <th>收款日期</th>
				                        <th>月收本息</th>
				                        <th>月收本金</th>
				                        <th class="hidden-phone">月收利息</th>
				                        <th class="hidden-phone">剩余本金</th>
				                        <th class="hidden-phone">待收本息</th>
				                    </tr>
				                </thead>
				                <tbody>
				                	<thead  id="result">
				                		
				                	</thead>
				                	<tfoot>
					                    <tr>
					                        <td style="padding-left:20px;">总计</td>
					                        <td><big id="sum">0.00</big></td>
					                        <td id="amount">0.00</td>
					                        <td><big id="accrual">0.00</big></td>
					                        <td>--</td>
					                        <td>--</td>				                        
					                    </tr>
				                    </tfoot>
				                </tbody>
				            </table>
				        </div>
				    </div>
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
