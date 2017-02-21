package dao;

/**
 * Userinfo entity. @author MyEclipse Persistence Tools
 */
public class Userinfo extends AbstractUserinfo implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public Userinfo() {
	}

	/** full constructor */
	public Userinfo(String nickname, String phone, String sex, String name,
			String idcard, String email, String highedu, String greduate,
			String mairital, String address, String company, String comsize,
			String job, String income, String ecperson, String worktime,
			String homecon, String homeloan, String carcon, String carloan,
			String crreport, String degreecon, String workcon,
			String incomecon, String fieldcon, Double xjye, Double jyje,
			Double yqsy, Double zye, Integer flag, Integer linenum,
			String remain, String remark, String password, String picture,
			String moneykey, Double withdrawal, Double promoney, Integer age,
			String birthday, String jkr, Double bulkAve,
			Double bulkPromoney, Double choiceAve, Double choicePromoney) {
		super(nickname, phone, sex, name, idcard, email, highedu, greduate,
				mairital, address, company, comsize, job, income, ecperson,
				worktime, homecon, homeloan, carcon, carloan, crreport,
				degreecon, workcon, incomecon, fieldcon, xjye, jyje, yqsy, zye,
				flag, linenum, remain, remark, password, picture, moneykey,
				withdrawal, promoney, age, birthday, jkr, bulkAve,
				bulkPromoney, choiceAve, choicePromoney);
	}

}
