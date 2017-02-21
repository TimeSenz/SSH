package dao;

import java.sql.Timestamp;

public class Profit_List {
	Integer bidid;
	String bidname;
	Double joinmoney;
	Double profit;
	Double earnmoney;
	Timestamp buytime;
	String State;
	String bidtype;
	
	public Integer getBidid() {
		return bidid;
	}
	public void setBidid(Integer bidid) {
		this.bidid = bidid;
	}
	public String getBidname() {
		return bidname;
	}
	public void setBidname(String bidname) {
		this.bidname = bidname;
	}
	public Double getJoinmoney() {
		return joinmoney;
	}
	public void setJoinmoney(Double joinmoney) {
		this.joinmoney = joinmoney;
	}
	public Double getProfit() {
		return profit;
	}
	public void setProfit(Double profit) {
		this.profit = profit;
	}
	public Double getEarnmoney() {
		return earnmoney;
	}
	public void setEarnmoney(Double earnmoney) {
		this.earnmoney = earnmoney;
	}
	public Timestamp getBuytime() {
		return buytime;
	}
	public void setBuytime(Timestamp buytime) {
		this.buytime = buytime;
	}
	public String getState() {
		return State;
	}
	public void setState(String state) {
		State = state;
	}
	public String getBidtype() {
		return bidtype;
	}
	public void setBidtype(String bidtype) {
		this.bidtype = bidtype;
	}
	
	

}
