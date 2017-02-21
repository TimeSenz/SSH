package action;

import java.io.IOException;
import java.sql.Timestamp;

import org.apache.commons.httpclient.HttpException;

import dao.Records;
import dao.RecordsDAO;
import dao.Userinfo;
import dao.UserinfoDAO;



public class FengfupayAction {
	
	UserinfoDAO userinfodao=new UserinfoDAO();
	RecordsDAO recordsdao=new RecordsDAO();
	String userid;
	String requestId;
	String resultSignature;
	String payId;
	String fiscalDate;
	String description;
	String status;
	String totalPrice;

	public void fengPayRecharge(){
		
		System.out.println("IN_TESTAJAX");
		System.out.println("requestId:"+requestId);
		System.out.println("resultSignature:"+resultSignature);
		System.out.println("payId:"+payId);
		System.out.println("fiscalDate:"+fiscalDate);
		System.out.println("description:"+description);
		System.out.println("status:"+status);
		System.out.println("totalPrice:"+totalPrice);	
		System.out.println("userid:"+userid);
		
		Userinfo user=new Userinfo();
		user=userinfodao.findById(Integer.parseInt(userid));
		System.out.println(user.getXjye());
		user.setXjye(user.getXjye()+Double.parseDouble(totalPrice));
		user.setZye(user.getXjye()+user.getJyje()+user.getYqsy());
		userinfodao.update(user);
		System.out.println("update_userinfo");
		Records record=new Records();
		record.setMoney(Double.parseDouble(totalPrice));
		record.setPaytype("Fengpay");
		record.setType("为账户充值");
		record.setIntoinfo(userinfodao.findById(Integer.parseInt(userid)).getName());
		Timestamp nowtime = new Timestamp(System.currentTimeMillis()); 
		record.setTime(nowtime);
		record.setPeople(userinfodao.findById(Integer.parseInt(userid)).getName());
		record.setUserid(Integer.parseInt(userid));
		record.setIntoacc(userinfodao.findById(Integer.parseInt(userid)).getXjye());
		record.setRemark(description);
		recordsdao.save(record);
		System.out.println("save_records");
	
		
		
		
	}
	public void doUrl(String basePath,String requestId,String resultSignature,
			String payId,String fiscalDate,String description,
			String status,String totalPrice 
			) throws HttpException, IOException{
		System.out.println("doUrl");
		

	
		String userid=description.substring(0, 4);
	

		String url="http://zhong-pc:8080/ZhongCaiBao/pay/testAjax.action?userid=4005";
	    String realUrl=basePath+"pay/fengPayRecharge.action?"
		+"requestId="+requestId
		+"&resultSignature="+resultSignature
		+"&payId="+payId
		+"&fiscalDate="+fiscalDate
		+"&description="+description
		+"&status="+status
		+"&totalPrice="+totalPrice
		+"&userid="+userid;
	    System.out.println(realUrl);
		org.apache.commons.httpclient.HttpClient client = new org.apache.commons.httpclient.HttpClient();
		org.apache.commons.httpclient.methods.PostMethod postmethod = new org.apache.commons.httpclient.methods.PostMethod(realUrl); // url对应以上生成的url地址
		postmethod.getParams().setParameter(org.apache.commons.httpclient.params.HttpMethodParams.HTTP_CONTENT_CHARSET,"utf-8");
		client.executeMethod(postmethod);
		
		System.out.println("httpclient_post");
		
		// TODO
	}

	public UserinfoDAO getUserinfodao() {
		return userinfodao;
	}

	public void setUserinfodao(UserinfoDAO userinfodao) {
		this.userinfodao = userinfodao;
	}

	public RecordsDAO getRecordsdao() {
		return recordsdao;
	}

	public void setRecordsdao(RecordsDAO recordsdao) {
		this.recordsdao = recordsdao;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getRequestId() {
		return requestId;
	}
	public void setRequestId(String requestId) {
		this.requestId = requestId;
	}
	public String getResultSignature() {
		return resultSignature;
	}
	public void setResultSignature(String resultSignature) {
		this.resultSignature = resultSignature;
	}
	public String getPayId() {
		return payId;
	}
	public void setPayId(String payId) {
		this.payId = payId;
	}
	public String getFiscalDate() {
		return fiscalDate;
	}
	public void setFiscalDate(String fiscalDate) {
		this.fiscalDate = fiscalDate;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(String totalPrice) {
		this.totalPrice = totalPrice;
	}
	
}
