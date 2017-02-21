package dao;

import java.sql.Timestamp;

public class Perrecords {
	private Timestamp time;
	private String type;
	private Double income;
	private Double expand;
	private Double intoacc;
	private String remark;
	public Timestamp getTime() {
		return time;
	}
	public void setTime(Timestamp time) {
		this.time = time;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public Double getIncome() {
		return income;
	}
	public void setIncome(Double income) {
		this.income = income;
	}
	public Double getExpand() {
		return expand;
	}
	public void setExpand(Double expand) {
		this.expand = expand;
	}
	public Double getIntoacc() {
		return intoacc;
	}
	public void setIntoacc(Double intoacc) {
		this.intoacc = intoacc;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	
}
