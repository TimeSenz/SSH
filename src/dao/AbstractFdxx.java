package dao;

import java.sql.Timestamp;

/**
 * AbstractFdxx entity provides the base persistence definition of the Fdxx
 * entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractFdxx implements java.io.Serializable {

	// Fields

	private Integer id;
	private String xm;
	private String sjh;
	private String fwmj;
	private String fwszcs;
	private String fl;
	private String dkjg;
	private String ydje;
	private String sqje;
	private String dzyx;
	private String ly;
	private String lx;
	private Timestamp time;

	// Constructors

	/** default constructor */
	public AbstractFdxx() {
	}

	/** minimal constructor */
	public AbstractFdxx(Timestamp time) {
		this.time = time;
	}

	/** full constructor */
	public AbstractFdxx(String xm, String sjh, String fwmj, String fwszcs,
			String fl, String dkjg, String ydje, String sqje, String dzyx,
			String ly, String lx, Timestamp time) {
		this.xm = xm;
		this.sjh = sjh;
		this.fwmj = fwmj;
		this.fwszcs = fwszcs;
		this.fl = fl;
		this.dkjg = dkjg;
		this.ydje = ydje;
		this.sqje = sqje;
		this.dzyx = dzyx;
		this.ly = ly;
		this.lx = lx;
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

	public String getSjh() {
		return this.sjh;
	}

	public void setSjh(String sjh) {
		this.sjh = sjh;
	}

	public String getFwmj() {
		return this.fwmj;
	}

	public void setFwmj(String fwmj) {
		this.fwmj = fwmj;
	}

	public String getFwszcs() {
		return this.fwszcs;
	}

	public void setFwszcs(String fwszcs) {
		this.fwszcs = fwszcs;
	}

	public String getFl() {
		return this.fl;
	}

	public void setFl(String fl) {
		this.fl = fl;
	}

	public String getDkjg() {
		return this.dkjg;
	}

	public void setDkjg(String dkjg) {
		this.dkjg = dkjg;
	}

	public String getYdje() {
		return this.ydje;
	}

	public void setYdje(String ydje) {
		this.ydje = ydje;
	}

	public String getSqje() {
		return this.sqje;
	}

	public void setSqje(String sqje) {
		this.sqje = sqje;
	}

	public String getDzyx() {
		return this.dzyx;
	}

	public void setDzyx(String dzyx) {
		this.dzyx = dzyx;
	}

	public String getLy() {
		return this.ly;
	}

	public void setLy(String ly) {
		this.ly = ly;
	}

	public String getLx() {
		return this.lx;
	}

	public void setLx(String lx) {
		this.lx = lx;
	}

	public Timestamp getTime() {
		return this.time;
	}

	public void setTime(Timestamp time) {
		this.time = time;
	}

}