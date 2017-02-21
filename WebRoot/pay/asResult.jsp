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

request.setCharacterEncoding("GBK");
String requestId = request.getParameter("requestId");
String resultSignature = request.getParameter("resultSignature");
String payId = request.getParameter("payId");
String fiscalDate = request.getParameter("fiscalDate");
String description = request.getParameter("description");
System.out.println("requestId"+requestId);
System.out.println("resultSignature"+resultSignature);
System.out.println("payId"+payId);
System.out.println("fiscalDate"+fiscalDate);
System.out.println("description"+description);
String status = request.getParameter("status");
String totalPrice = request.getParameter("totalPrice");



FengfupayAction pay=new FengfupayAction();
pay.doUrl(basePath,requestId, resultSignature, payId, fiscalDate, description, status, totalPrice);
// TODO
%>
<html>
<head>
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