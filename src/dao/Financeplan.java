package dao;

import java.sql.Timestamp;

/**
 * Financeplan entity. @author MyEclipse Persistence Tools
 */
public class Financeplan extends AbstractFinanceplan implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public Financeplan() {
	}

	/** minimal constructor */
	public Financeplan(Timestamp start, Timestamp end) {
		super(start, end);
	}

	/** full constructor */
	public Financeplan(String insurance, String planname, String lockup,
			String opening, String lockend, Double spent, String profit,
			String planinfo, String terms, Double number, Double money,
			String remark, Integer deadline, Timestamp start, Timestamp end,
			Integer rate, String repaytype, String bidtype, String bidflag,
			String state) {
		super(insurance, planname, lockup, opening, lockend, spent, profit,
				planinfo, terms, number, money, remark, deadline, start, end,
				rate, repaytype, bidtype, bidflag, state);
	}

}
