package dao;

/**
 * Userbank entity. @author MyEclipse Persistence Tools
 */
public class Userbank extends AbstractUserbank implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public Userbank() {
	}

	/** minimal constructor */
	public Userbank(Integer userbankid) {
		super(userbankid);
	}

	/** full constructor */
	public Userbank(Integer userbankid, Integer userid, String bankname,
			String banknumbr, String remark, String remain) {
		super(userbankid, userid, bankname, banknumbr, remark, remain);
	}

}
