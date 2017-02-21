package dao;

import java.sql.Timestamp;

/**
 * AbstractJbsq entity provides the base persistence definition of the Jbsq
 * entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractJbsq implements java.io.Serializable {

	// Fields

	private Integer id;
	private String xm;
	private String xb;
	private Double dkje;
	private String dhhm;
	private Timestamp time;

	// Constructors

	/** default constructor */
	public AbstractJbsq() {
	}

	/** minimal constructor */
	public AbstractJbsq(Timestamp time) {
		this.time = time;
	}

	/** full constructor */
	public AbstractJbsq(String xm, String xb, Double dkje, String dhhm,
			Timestamp time) {
		this.xm = xm;
		this.xb = xb;
		this.dkje = dkje;
		this.dhhm = dhhm;
		this.time = time;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getXm() {
		return this.xm;
	}

	public void setXm(String xm) {
		this.xm = xm;
	}

	public String getXb() {
		return this.xb;
	}

	public void setXb(String xb) {
		this.xb = xb;
	}

	public Double getDkje() {
		return this.dkje;
	}

	public void setDkje(Double dkje) {
		this.dkje = dkje;
	}

	public String getDhhm() {
		return this.dhhm;
	}

	public void setDhhm(String dhhm) {
		this.dhhm = dhhm;
	}

	public Timestamp getTime() {
		return this.time;
	}

	public void setTime(Timestamp time) {
		this.time = time;
	}

}