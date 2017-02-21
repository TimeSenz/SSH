package dao;

import java.sql.Timestamp;

/**
 * AbstractLcractmerge entity provides the base persistence definition of the
 * Lcractmerge entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractLcractmerge implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer lcrid;
	private Integer bidid;
	private Double money;
	private String state;
	private Timestamp time;
	private Double zcrje;
	private String remark;
	private Integer userbankid;
	private String parameter;
	private String varible;
	private String stakes;
	private String value;

	// Constructors

	/** default constructor */
	public AbstractLcractmerge() {
	}

	/** minimal constructor */
	public AbstractLcractmerge(Timestamp time) {
		this.time = time;
	}

	/** full constructor */
	public AbstractLcractmerge(Integer lcrid, Integer bidid, Double money,
			String state, Timestamp time, Double zcrje, String remark,
			Integer userbankid, String parameter, String varible,
			String stakes, String value) {
		this.lcrid = lcrid;
		this.bidid = bidid;
		this.money = money;
		this.state = state;
		this.time = time;
		this.zcrje = zcrje;
		this.remark = remark;
		this.userbankid = userbankid;
		this.parameter = parameter;
		this.varible = varible;
		this.stakes = stakes;
		this.value = value;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getLcrid() {
		return this.lcrid;
	}

	public void setLcrid(Integer lcrid) {
		this.lcrid = lcrid;
	}

	public Integer getBidid() {
		return this.bidid;
	}

	public void setBidid(Integer bidid) {
		this.bidid = bidid;
	}

	public Double getMoney() {
		return this.money;
	}

	public void setMoney(Double money) {
		this.money = money;
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

	public Integer getUserbankid() {
		return this.userbankid;
	}

	public void setUserbankid(Integer userbankid) {
		this.userbankid = userbankid;
	}

	public String getParameter() {
		return this.parameter;
	}

	public void setParameter(String parameter) {
		this.parameter = parameter;
	}

	public String getVarible() {
		return this.varible;
	}

	public void setVarible(String varible) {
		this.varible = varible;
	}

	public String getStakes() {
		return this.stakes;
	}

	public void setStakes(String stakes) {
		this.stakes = stakes;
	}

	public String getValue() {
		return this.value;
	}

	public void setValue(String value) {
		this.value = value;
	}

}