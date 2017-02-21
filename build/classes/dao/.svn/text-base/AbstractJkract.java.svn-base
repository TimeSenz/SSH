package dao;

import java.sql.Timestamp;

/**
 * AbstractJkract entity provides the base persistence definition of the Jkract
 * entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractJkract implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer bidid;
	private String state;
	private Timestamp time;
	private Double zcrje;
	private String remark;

	// Constructors

	/** default constructor */
	public AbstractJkract() {
	}

	/** minimal constructor */
	public AbstractJkract(Timestamp time) {
		this.time = time;
	}

	/** full constructor */
	public AbstractJkract(Integer bidid, String state, Timestamp time,
			Double zcrje, String remark) {
		this.bidid = bidid;
		this.state = state;
		this.time = time;
		this.zcrje = zcrje;
		this.remark = remark;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getBidid() {
		return this.bidid;
	}

	public void setBidid(Integer bidid) {
		this.bidid = bidid;
	}

	public String getState() {
		return this.state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public Timestamp getTime() {
		return this.time;
	}

	public void setTime(Timestamp time) {
		this.time = time;
	}

	public Double getZcrje() {
		return this.zcrje;
	}

	public void setZcrje(Double zcrje) {
		this.zcrje = zcrje;
	}

	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

}