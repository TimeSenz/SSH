package dao;

import java.sql.Timestamp;

/**
 * AbstractBidinfo entity provides the base persistence definition of the
 * Bidinfo entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractBidinfo implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer userid;
	private String reason;
	private Double number;
	private Integer deadline;
	private String state;
	private Timestamp created;
	private Double profit;
	private Double money;
	private Timestamp start;
	private Timestamp end;
	private String overdue;
	private String repaytype;
	private String bidtype;
	private String picture;
	private String remark;
	private Integer rate;
	private String contents;
	private String comname;
	private Integer riskinfo;

	// Constructors

	/** default constructor */
	public AbstractBidinfo() {
	}

	/** full constructor */
	public AbstractBidinfo(Integer userid, String reason, Double number,
			Integer deadline, String state, Timestamp created, Double profit,
			Double money, Timestamp start, Timestamp end, String overdue,
			String repaytype, String bidtype, String picture, String remark,
			Integer rate,String contents,String comname,Integer riskinfo) {
		this.userid = userid;
		this.reason = reason;
		this.number = number;
		this.deadline = deadline;
		this.state = state;
		this.created = created;
		this.profit = profit;
		this.money = money;
		this.start = start;
		this.end = end;
		this.overdue = overdue;
		this.repaytype = repaytype;
		this.bidtype = bidtype;
		this.picture = picture;
		this.remark = remark;
		this.rate = rate;
		this.contents=contents;
		this.comname=comname;
		this.riskinfo=riskinfo;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getUserid() {
		return this.userid;
	}

	public void setUserid(Integer userid) {
		this.userid = userid;
	}

	public String getReason() {
		return this.reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	public Double getNumber() {
		return this.number;
	}

	public void setNumber(Double number) {
		this.number = number;
	}

	public Integer getDeadline() {
		return this.deadline;
	}

	public void setDeadline(Integer deadline) {
		this.deadline = deadline;
	}

	public String getState() {
		return this.state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public Timestamp getCreated() {
		return this.created;
	}

	public void setCreated(Timestamp created) {
		this.created = created;
	}

	public Double getProfit() {
		return this.profit;
	}

	public void setProfit(Double profit) {
		this.profit = profit;
	}

	public Double getMoney() {
		return this.money;
	}

	public void setMoney(Double money) {
		this.money = money;
	}

	public Timestamp getStart() {
		return this.start;
	}

	public void setStart(Timestamp start) {
		this.start = start;
	}

	public Timestamp getEnd() {
		return this.end;
	}

	public void setEnd(Timestamp end) {
		this.end = end;
	}

	public String getOverdue() {
		return this.overdue;
	}

	public void setOverdue(String overdue) {
		this.overdue = overdue;
	}

	public String getRepaytype() {
		return this.repaytype;
	}

	public void setRepaytype(String repaytype) {
		this.repaytype = repaytype;
	}

	public String getBidtype() {
		return this.bidtype;
	}

	public void setBidtype(String bidtype) {
		this.bidtype = bidtype;
	}

	public String getPicture() {
		return this.picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public Integer getRate() {
		return this.rate;
	}

	public void setRate(Integer rate) {
		this.rate = rate;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getComname() {
		return comname;
	}

	public void setComname(String comname) {
		this.comname = comname;
	}

	public Integer getRiskinfo() {
		return riskinfo;
	}

	public void setRiskinfo(Integer riskinfo) {
		this.riskinfo = riskinfo;
	}
	

}