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
    <link rel="Shortcut Icon" href="../images/zcb-icon.ico">  
  </head>
  <body>
	<div class="pg-container">
	<!--头部-->
		<%@include file="../pub/pub_top.jsp" %>
	<!--头部end-->
	<!--main开始-->
	    <div class="main_box intro_bg">
        	<div class="w1000" style="height:500px;">
        		<div class="calculator" data-reactid=".3.0.0.0">
				    <div class="calculator-header" data-reactid=".3.0.0.0.0">
				        <h4 data-reactid=".3.0.0.0.0.0">
				            收益计算器
				        </h4>
				        <div class="intro" data-reactid=".3.0.0.0.0.1">
				            <p data-reactid=".3.0.0.0.0.1.0">
				                收益计算器简介：
				            </p>
				            <p data-reactid=".3.0.0.0.0.1.1">
				                收益计算器用于计算您在众财宝投资将会获得的收益，理财更加透明高效，固定日还款项目由于计息方式略有不同，具体收益请参见投资后的统计。
				            </p>
				        </div>
				    </div>
				    <div class="calculator-body" data-reactid=".3.0.0.0.1">
				        <form action="" data-reactid=".3.0.0.0.1.0">
				            <ul data-reactid=".3.0.0.0.1.0.0">
				                <li data-reactid=".3.0.0.0.1.0.0.0">
				                    <label data-reactid=".3.0.0.0.1.0.0.0.0">
				                        投资金额：
				                    </label>
				                    <input type="text" name="amountValue" placeholder="" data-reactid=".3.0.0.0.1.0.0.0.1">
				                    <span class="error-tip" data-reactid=".3.0.0.0.1.0.0.0.2">
				                        元
				                    </span>
				                </li>
				                <li data-reactid=".3.0.0.0.1.0.0.1">
				                    <label data-reactid=".3.0.0.0.1.0.0.1.0">
				                        投入时长：
				                    </label>
				                    <input type="text" name="dueMonth" placeholder="" data-reactid=".3.0.0.0.1.0.0.1.1">
				                    <span class="error-tip" data-reactid=".3.0.0.0.1.0.0.1.2">
				                        个月
				                    </span>
				                </li>
				                <li data-reactid=".3.0.0.0.1.0.0.2">
				                    <label data-reactid=".3.0.0.0.1.0.0.2.0">
				                        年化利率：
				                    </label>
				                    <input type="text" name="annualRate" placeholder="" data-reactid=".3.0.0.0.1.0.0.2.1">
				                    <span class="error-tip" data-reactid=".3.0.0.0.1.0.0.2.2">
				                        %
				                    </span>
				                </li>
				                <li data-reactid=".3.0.0.0.1.0.0.3">
				                    <label data-reactid=".3.0.0.0.1.0.0.3.0">
				                        还款方式：
				                    </label>
				                    <select type="select" name="paymentMethod" data-reactid=".3.0.0.0.1.0.0.3.1">
				                        <option value="MonthlyInterest" data-reactid=".3.0.0.0.1.0.0.3.1.0">
				                            按月付息到期还本
				                        </option>
				                        <option value="EqualInstallment" data-reactid=".3.0.0.0.1.0.0.3.1.1">
				                            按月等额本息
				                        </option>
				                        <option value="EqualPrincipal" data-reactid=".3.0.0.0.1.0.0.3.1.2">
				                            按月等额本金
				                        </option>
				                        <option value="BulletRepayment" data-reactid=".3.0.0.0.1.0.0.3.1.3">
				                            一次性还本付息
				                        </option>
				                        <option value="EqualInterest" data-reactid=".3.0.0.0.1.0.0.3.1.4">
				                            月平息
				                        </option>
				                    </select>
				                    <span class="error-tip" data-reactid=".3.0.0.0.1.0.0.3.2">
				                    </span>
				                </li>
				                <li class="buttons" data-reactid=".3.0.0.0.1.0.0.4">
				                    <input type="submit" id="calculateButton" class="btn btn-primary" value="计算"
				                    data-reactid=".3.0.0.0.1.0.0.4.0">
				                    <input type="reset" class="btn btn-default" value="重置" data-reactid=".3.0.0.0.1.0.0.4.1">
				                </li>
				            </ul>
				        </form>
				    </div>
				    <div id="cal-result" class="calculator-pannel" data-reactid=".3.0.0.0.2">
				        <h3 data-reactid=".3.0.0.0.2.0">
				            收益结果
				        </h3>
				        <div class="ccc-ui-repayments block" data-reactid=".3.0.0.0.2.1">
				            <table class="table table-bordered table-striped" data-reactid=".3.0.0.0.2.1.0">
				                <thead data-reactid=".3.0.0.0.2.1.0.0">
				                    <tr data-reactid=".3.0.0.0.2.1.0.0.0">
				                        <th data-reactid=".3.0.0.0.2.1.0.0.0.0">
				                            <i class="fa fa-clock-o blue" data-reactid=".3.0.0.0.2.1.0.0.0.0.0">
				                            </i>
				                            <span data-reactid=".3.0.0.0.2.1.0.0.0.0.1">
				                                &nbsp;
				                            </span>
				                            <span data-reactid=".3.0.0.0.2.1.0.0.0.0.2">
				                                收款
				                            </span>
				                            <span data-reactid=".3.0.0.0.2.1.0.0.0.0.3">
				                                日期
				                            </span>
				                        </th>
				                        <th data-reactid=".3.0.0.0.2.1.0.0.0.1">
				                            <i class="fa fa-gift blue" data-reactid=".3.0.0.0.2.1.0.0.0.1.0">
				                            </i>
				                            <span data-reactid=".3.0.0.0.2.1.0.0.0.1.1">
				                                &nbsp;
				                            </span>
				                            <span data-reactid=".3.0.0.0.2.1.0.0.0.1.2">
				                                收款
				                            </span>
				                            <span data-reactid=".3.0.0.0.2.1.0.0.0.1.3">
				                                金额
				                            </span>
				                        </th>
				                        <th data-reactid=".3.0.0.0.2.1.0.0.0.2">
				                            <i class="fa fa-caret-right blue" data-reactid=".3.0.0.0.2.1.0.0.0.2.0">
				                            </i>
				                            <span data-reactid=".3.0.0.0.2.1.0.0.0.2.1">
				                                &nbsp;
				                            </span>
				                            <span data-reactid=".3.0.0.0.2.1.0.0.0.2.2">
				                                收回
				                            </span>
				                            <span data-reactid=".3.0.0.0.2.1.0.0.0.2.3">
				                                本金
				                            </span>
				                        </th>
				                        <th class="hidden-phone" data-reactid=".3.0.0.0.2.1.0.0.0.3">
				                            <i class="fa fa-caret-right blue" data-reactid=".3.0.0.0.2.1.0.0.0.3.0">
				                            </i>
				                            <span data-reactid=".3.0.0.0.2.1.0.0.0.3.1">
				                                &nbsp;
				                            </span>
				                            <span data-reactid=".3.0.0.0.2.1.0.0.0.3.2">
				                                收回
				                            </span>
				                            <span data-reactid=".3.0.0.0.2.1.0.0.0.3.3">
				                                利息
				                            </span>
				                        </th>
				                        <th class="hidden-phone" data-reactid=".3.0.0.0.2.1.0.0.0.4">
				                            <i class="fa fa-caret-right blue" data-reactid=".3.0.0.0.2.1.0.0.0.4.0">
				                            </i>
				                            <span data-reactid=".3.0.0.0.2.1.0.0.0.4.1">
				                                &nbsp;剩余本金
				                            </span>
				                        </th>
				                    </tr>
				                </thead>
				                <tbody data-reactid=".3.0.0.0.2.1.0.1">
				                    <tr data-reactid=".3.0.0.0.2.1.0.1.1">
				                        <td data-reactid=".3.0.0.0.2.1.0.1.1.0">
				                            总计
				                        </td>
				                        <td data-reactid=".3.0.0.0.2.1.0.1.1.1">
				                        </td>
				                        <td data-reactid=".3.0.0.0.2.1.0.1.1.2">
				                        </td>
				                        <td data-reactid=".3.0.0.0.2.1.0.1.1.3">
				                        </td>
				                        <td data-reactid=".3.0.0.0.2.1.0.1.1.4">
				                            -
				                        </td>
				                    </tr>
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
