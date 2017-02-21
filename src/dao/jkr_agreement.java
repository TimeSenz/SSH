package dao;

import java.sql.Timestamp;

public class jkr_agreement {
  
	private String jname;
	private Double jmoney;
	private Double fff;
	private Double rmoney;
	private Double profit;
	private Integer deadline;
	private Double totalmoney;
	private Timestamp time;
	private Timestamp starttime;
	private Timestamp endtime;
	
	private String repaytype;
	private Timestamp creatTime;
	private String bidname;
	
	
	
	
	public String getJname() {
		return jname;
	}
	public void setJname(String jname) {
		this.jname = jname;
	}
	public Double getJmoney() {
		return jmoney;
	}
	public void setJmoney(Double jmoney) {
		this.jmoney = jmoney;
	}
	public Double getFff() {
		return fff;
	}
	public void setFff(Double fff) {
		this.fff = fff;
	}
	public Double getRmoney() {
		return rmoney;
	}
	public void setRmoney(Double rmoney) {
		this.rmoney = rmoney;
	}
	public Double getProfit() {
		return profit;
	}
	public void setProfit(Double profit) {
		this.profit = profit;
	}
	public Integer getDeadline() {
		return deadline;
	}
	public void setDeadline(Integer deadline) {
		this.deadline = deadline;
	}
	public Double getTotalmoney() {
		return totalmoney;
	}
	public void setTotalmoney(Double totalmoney) {
		this.totalmoney = totalmoney;
	}
	public Timestamp getTime() {
		return time;
	}
	public void setTime(Timestamp time) {
		this.time = time;
	}
	public Timestamp getStarttime() {
		return starttime;
	}
	public void setStarttime(Timestamp starttime) {
		this.starttime = starttime;
	}
	public Timestamp getEndtime() {
		return endtime;
	}
	public void setEndtime(Timestamp endtime) {
		this.endtime = endtime;
	}
	public String getRepaytype() {
		return repaytype;
	}
	public void setRepaytype(String repaytype) {
		this.repaytype = repaytype;
	}
	public Timestamp getCreatTime() {
		return creatTime;
	}
	public void setCreatTime(Timestamp creatTime) {
		this.creatTime = creatTime;
	}
	public String getBidname() {
		return bidname;
	}
	public void setBidname(String bidname) {
		this.bidname = bidname;
	}
	
	
}
