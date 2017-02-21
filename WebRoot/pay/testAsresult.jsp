<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="util.*"%>
<%@page import="action.FengfupayAction"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%


request.setCharacterEncoding("GBK");
String requestId = request.getParameter("requestId");
requestId="201411141130314096";
String resultSignature = request.getParameter("resultSignature");
resultSignature="06d282349b7b09ea4518cc80afa7e205";
String payId = request.getParameter("payId");
payId="141114100012709278";
String fiscalDate = request.getParameter("fiscalDate");
fiscalDate="20141114";
String description = request.getParameter("description");
description="4005-recharge-0.01";
String status = request.getParameter("status");
status="status";
String totalPrice = request.getParameter("totalPrice");
totalPrice="0.01";


FengfupayAction pay=new FengfupayAction();
pay.doUrl(basePath,requestId, resultSignature, payId, fiscalDate, description, status, totalPrice);
// TODO
%>
<html>
<head >
<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
<link href="css/sumapaytest.css" type="text/css" rel="stylesheet" />
<script language="JavaScript" type="text/javascript">
	
</script>
</head>
<body>
	<table style="width: 100%; text-align: center">
		<tr>
			<td colspan="2">异步支付结果</td>
		</tr>
		
	</table>

	<a href="index.html">返回</a>

</body>
</html>