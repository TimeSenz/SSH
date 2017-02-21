package dao;

import java.sql.Timestamp;

/**
 * Newsinfo entity. @author MyEclipse Persistence Tools
 */
public class Newsinfo extends AbstractNewsinfo implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public Newsinfo() {
	}

	/** full constructor */
	public Newsinfo(String title, String contents, Timestamp time,
			String remark, String remain, String cusinfo, String type) {
		super(title, contents, time, remark, remain, cusinfo, type);
	}

}
