package dao;

/**
 * AbstractCominfo entity provides the base persistence definition of the
 * Cominfo entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractCominfo implements java.io.Serializable {

	// Fields

	private Integer id;
	private Double tgzh;
	private Double fxjzh;
	private Double gszh;
	private String versionname;
	private Integer versioncode;
	private String info;

	// Constructors

	/** default constructor */
	public AbstractCominfo() {
	}

	/** minimal constructor */
	public AbstractCominfo(Integer id) {
		this.id = id;
	}

	/** full constructor */
	public AbstractCominfo(Integer id, Double tgzh, Double fxjzh, Double gszh,String versionname,Integer versioncode,String info) {
		this.id = id;
		this.tgzh = tgzh;
		this.fxjzh = fxjzh;
		this.gszh = gszh;
		this.versionname = versionname;
		this.versioncode = versioncode;
		this.info = info;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Double getTgzh() {
		return this.tgzh;
	}

	public void setTgzh(Double tgzh) {
		this.tgzh = tgzh;
	}

	public Double getFxjzh() {
		return this.fxjzh;
	}

	public void setFxjzh(Double fxjzh) {
		this.fxjzh = fxjzh;
	}

	public Double getGszh() {
		return this.gszh;
	}

	public void setGszh(Double gszh) {
		this.gszh = gszh;
	}

	public String getVersionname() {
		return versionname;
	}

	public void setVersionname(String versionname) {
		this.versionname = versionname;
	}

	public Integer getVersioncode() {
		return versioncode;
	}

	public void setVersioncode(Integer versioncode) {
		this.versioncode = versioncode;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}


}