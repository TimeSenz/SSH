<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=GBK"
	pageEncoding="GBK"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="util.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
request.setCharacterEncoding("GBK");

	String requestId = (String)request.getParameter("requestId");
	String productId = (String)request.getParameter("productId");
	productId="PersonRecharge";
	String productName = (String)request.getParameter("productName");
	productName="person_recharge";
	String fund = (String)request.getParameter("fund");
	fund= (String)request.getParameter("money");
	String merAcct = (String)request.getParameter("merAcct");
	merAcct="1110000008";
	String bizType = (String)request.getParameter("bizType");
	bizType="BIZ01101";
	String productNumber = (String)request.getParameter("productNumber");
	productNumber="1";
	String tradeProcess = (String)request.getParameter("tradeProcess");
	tradeProcess="1110000008";
	String totalBizType = (String)request.getParameter("totalBizType");
	totalBizType="BIZ01101";
	String totalPrice = (String)request.getParameter("totalPrice");
	totalPrice=fund;
	String backurl = (String)request.getParameter("backurl");
	backurl=basePath+"/userinfo/user.action?user=myZCB";
	String returnurl = (String)request.getParameter("returnurl");
	returnurl=basePath+"/userinfo/user.action?user=myZCB";
	String noticeurl = (String)request.getParameter("noticeurl");
	noticeurl=basePath+"/pay/asResult.jsp";
	String description = (String)request.getParameter("description");
	description=(String)request.getParameter("userid")+"-recharge-"+fund;
	String rnaName = (String)request.getParameter("rnaName");
	String rnaIdNumber = (String)request.getParameter("rnaIdNumber");
	String rnaMobilePhone = (String)request.getParameter("rnaMobilePhone");
	String goodsDesc = (String)request.getParameter("goodsDesc");
	String allowRePay = (String)request.getParameter("allowRePay");
	String rePayTimeOut = (String)request.getParameter("rePayTimeOut");
	String userIdIdentity = (String)request.getParameter("userIdIdentity");
	String bankCardType = (String)request.getParameter("bankCardType");
	String merKey = (String)request.getParameter("merKey");
	merKey="0OPc0g7GCI7k0ywUAWv65UrP3woNASQN";
	
	// 请求数据签名
	StringBuilder sb = new StringBuilder();
	sb.append(requestId);
	sb.append(tradeProcess);
	sb.append(totalBizType);
	sb.append(totalPrice);
	sb.append(backurl);
	sb.append(returnurl);
	sb.append(noticeurl);
	sb.append(description);
	//System.out.println("商户上传数据"+sb.toString());
	String signature = SignatureUtil.keyedEncode(sb.toString(),	merKey);
	//System.out.println("商户签名："+signature);
    //System.out.println("basePath:"+basePath);
    
	
	
%>
<html>
<head>
<meta name=page-view-size content=1280*720 />
<meta http-equiv="Content-Type" content="text/html; charset=GBK"/>
<script language="JavaScript" type="text/javascript">

function load(){
	
	var reqURL = "https://www.sumapay.com";
	var url = reqURL + "/sumapay/unitivepay_bankPayForNoLoginUser";
	
	//校验参数
	document.getElementById("requestId").value = "<%=requestId%>";
	document.getElementById("tradeProcess").value = "<%=tradeProcess%>";
	document.getElementById("totalBizType").value = "<%=totalBizType%>";
	document.getElementById("totalPrice").value = "<%=totalPrice%>";
	document.getElementById("backurl").value = "<%=backurl%>";
	document.getElementById("returnurl").value = "<%=returnurl%>";
	document.getElementById("mersignature").value = "<%=signature%>";

	document.getElementById("productId").value = "<%=productId%>";
	document.getElementById("productName").value = "<%=productName%>";
	document.getElementById("fund").value = "<%=fund%>";
	document.getElementById("merAcct").value = "<%=merAcct%>";
	document.getElementById("bizType").value = "<%=bizType%>";
	document.getElementById("productNumber").value = "<%=productNumber%>";
	
	var noticeurl = "<%=noticeurl%>";
	if('null' == noticeurl){
		document.getElementById("returnurl").disabled = true;
	}else{
		document.getElementById("noticeurl").value = "<%=noticeurl%>";
	}
	var description = "<%=description%>";
	if('null' == description){
		document.getElementById("description").disabled = true;
	}else{
		document.getElementById("description").value = "<%=description%>";
	}
	var rnaName = "<%=rnaName%>";
	if('null' == rnaName){
		document.getElementById("rnaName").disabled = true;
	}else{
		document.getElementById("rnaName").value = "<%=rnaName%>";
	}
	var rnaIdNumber = "<%=rnaIdNumber%>";
	if('null' == rnaIdNumber){
		document.getElementById("rnaIdNumber").disabled = true;
	}else{
		document.getElementById("rnaIdNumber").value = "<%=rnaIdNumber%>";
	}
	var rnaMobilePhone = "<%=rnaMobilePhone%>";
	if('null' == rnaMobilePhone){
		document.getElementById("rnaMobilePhone").disabled = true;
	}else{
		document.getElementById("rnaMobilePhone").value = "<%=rnaMobilePhone%>";
	}
	var goodsDesc = "<%=goodsDesc%>";
	if('null' == goodsDesc){
		document.getElementById("goodsDesc").disabled = true;
	}else{
		document.getElementById("goodsDesc").value = "<%=goodsDesc%>";
	}
	var allowRePay = "<%=allowRePay%>";
	if('null' == allowRePay){
		document.getElementById("allowRePay").disabled = true;
	}else{
		document.getElementById("allowRePay").value = "<%=allowRePay%>";
	}
	var rePayTimeOut = "<%=rePayTimeOut%>";
	if('null' == rePayTimeOut){
		document.getElementById("rePayTimeOut").disabled = true;
	}else{
		document.getElementById("rePayTimeOut").value = "<%=rePayTimeOut%>";
	}
	var userIdIdentity = "<%=userIdIdentity%>";
	if('null' == userIdIdentity){
		document.getElementById("userIdIdentity").disabled = true;
	}else{
		document.getElementById("userIdIdentity").value = "<%=userIdIdentity%>";
	}
	var bankCardType = "<%=bankCardType%>";
	if('null' == bankCardType){
		document.getElementById("bankCardType").disabled = true;
	}else{
		document.getElementById("bankCardType").value = "<%=bankCardType%>";
	}
	
	
	document.getElementById("submitForm").action = url;
	document.getElementById("submitForm").submit();
}

</script>
</head>
<body onload="load()">
	<form action="tvpay.jsp" method="post" id="submitForm">
		<input type="hidden" id="requestId" name="requestId" />
		<input type="hidden" id="tradeProcess" name="tradeProcess" />
		<input type="hidden" id="totalBizType" name="totalBizType" />
		<input type="hidden" id="totalPrice" name="totalPrice" />
		<input type="hidden" id="backurl" name="backurl" />
		<input type="hidden" id="returnurl" name="returnurl" />
		<input type="hidden" id="noticeurl" name="noticeurl" />
		<input type="hidden" id="description" name="description" />
		<input type="hidden" id="rnaName" name="rnaName" />
		<input type="hidden" id="rnaIdNumber" name="rnaIdNumber" />
		<input type="hidden" id="rnaMobilePhone" name="rnaMobilePhone" />
		<input type="hidden" id="mersignature" name="mersignature" />
		<input type="hidden" id="goodsDesc" name="goodsDesc" />
		<input type="hidden" id="allowRePay" name="allowRePay" />
		<input type="hidden" id="rePayTimeOut" name="rePayTimeOut" />
		<input type="hidden" id="userIdIdentity" name="userIdIdentity" />
		<input type="hidden" id="bankCardType" name="bankCardType" />
		<input type="hidden" id="productId" name="productId" />
		<input type="hidden" id="productName" name="productName" />
		<input type="hidden" id="fund" name="fund" />
		<input type="hidden" id="merAcct" name="merAcct" />
		<input type="hidden" id="bizType" name="bizType" />
		<input type="hidden" id="productNumber" name="productNumber" />
	</form>
</body>
</html>