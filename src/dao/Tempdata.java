package dao;

import java.sql.Timestamp;

/**
 * Tempdata entity. @author MyEclipse Persistence Tools
 */
public class Tempdata extends AbstractTempdata implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public Tempdata() {
	}

	/** full constructor */
	public Tempdata(Integer lcrid, Double money, Integer bidid,
			Timestamp buytime) {
		super(lcrid, money, bidid, buytime);
	}

}
