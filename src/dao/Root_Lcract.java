package dao;

import java.sql.Timestamp;

public class Root_Lcract {

	private Integer id;   //id
	private Integer bidid; //标id
	private Double money;  //金额
	private Double charge; //手续费
	private String bankname;  //银行
	private String bankid;   //银行id
	private String state;  //状态
	private String payment;  //支付平台
	private Timestamp time;  //时间	
	private String remark;   //备注
	private String lcrname; //理财人姓名
	
	private String banknumber;//卡号
	private String userbankid;//银行id
	
	
	//测试lcractmerge
	private String bidreason;
	
	public String getBidreason() {
		return bidreason;
	}
	public void setBidreason(String bidreason) {
		this.bidreason = bidreason;
	}
	
	
	
	
	public String getUserbankid() {
		return userbankid;
	}
	public void setUserbankid(String userbankid) {
		this.userbankid = userbankid;
	}
	public String getBanknumber() {
		return banknumber;
	}
	public void setBanknumber(String banknumber) {
		this.banknumber = banknumber;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getBidid() {
		return bidid;
	}
	public void setBidid(Integer bidid) {
		this.bidid = bidid;
	}
	public Double getMoney() {
		return money;
	}
	public void setMoney(Double money) {
		this.money = money;
	}
	public Double getCharge() {
		return charge;
	}
	public void setCharge(Double charge) {
		this.charge = charge;
	}
	public String getBankname() {
		return bankname;
	}
	public void setBankname(String bankname) {
		this.bankname = bankname;
	}
	public String getBankid() {
		return bankid;
	}
	public void setBankid(String bankid) {
		this.bankid = bankid;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getPayment() {
		return payment;
	}
	public void setPayment(String payment) {
		this.payment = payment;
	}
	public Timestamp getTime() {
		return time;
	}
	public void setTime(Timestamp time) {
		this.time = time;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public String getLcrname() {
		return lcrname;
	}
	public void setLcrname(String lcrname) {
		this.lcrname = lcrname;
	}
	
	
	
}
