package dao;

import java.sql.Timestamp;

/**
 * AbstractTempdata entity provides the base persistence definition of the
 * Tempdata entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractTempdata implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer lcrid;
	private Double money;
	private Integer bidid;
	private Timestamp buytime;

	// Constructors

	/** default constructor */
	public AbstractTempdata() {
	}

	/** full constructor */
	public AbstractTempdata(Integer lcrid, Double money, Integer bidid,
			Timestamp buytime) {
		this.lcrid = lcrid;
		this.money = money;
		this.bidid = bidid;
		this.buytime = buytime;
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

	public Double getMoney() {
		return this.money;
	}

	public void setMoney(Double money) {
		this.money = money;
	}

	public Integer getBidid() {
		return this.bidid;
	}

	public void setBidid(Integer bidid) {
		this.bidid = bidid;
	}

	public Timestamp getBuytime() {
		return this.buytime;
	}

	public void setBuytime(Timestamp buytime) {
		this.buytime = buytime;
	}

}