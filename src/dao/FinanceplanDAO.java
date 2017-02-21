package dao;

import java.sql.Timestamp;
import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

/**
 * A data access object (DAO) providing persistence and search support for
 * Financeplan entities. Transaction control of the save(), update() and
 * delete() operations can directly support Spring container-managed
 * transactions or they can be augmented to handle user-managed Spring
 * transactions. Each of these methods provides additional information for how
 * to configure it for the desired type of transaction control.
 * 
 * @see dao.Financeplan
 * @author MyEclipse Persistence Tools
 */

public class FinanceplanDAO extends HibernateDaoSupport {
	private static final Log log = LogFactory.getLog(FinanceplanDAO.class);
	// property constants
	public static final String INSURANCE = "insurance";
	public static final String PLANNAME = "planname";
	public static final String LOCKUP = "lockup";
	public static final String OPENING = "opening";
	public static final String LOCKEND = "lockend";
	public static final String SPENT = "spent";
	public static final String PROFIT = "profit";
	public static final String PLANINFO = "planinfo";
	public static final String TERMS = "terms";
	public static final String NUMBER = "number";
	public static final String MONEY = "money";
	public static final String REMARK = "remark";
	public static final String DEADLINE = "deadline";
	public static final String RATE = "rate";
	public static final String REPAYTYPE = "repaytype";
	public static final String BIDTYPE = "bidtype";
	public static final String BIDFLAG = "bidflag";
	public static final String STATE = "state";

	protected void initDao() {
		// do nothing
	}

	public void save(Financeplan transientInstance) {
		log.debug("saving Financeplan instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Financeplan persistentInstance) {
		log.debug("deleting Financeplan instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Financeplan findById(java.lang.Integer id) {
		log.debug("getting Financeplan instance with id: " + id);
		try {
			Financeplan instance = (Financeplan) getHibernateTemplate().get(
					"dao.Financeplan", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Financeplan instance) {
		log.debug("finding Financeplan instance by example");
		try {
			List results = getHibernateTemplate().findByExample(instance);
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value) {
		log.debug("finding Financeplan instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Financeplan as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByInsurance(Object insurance) {
		return findByProperty(INSURANCE, insurance);
	}

	public List findByPlanname(Object planname) {
		return findByProperty(PLANNAME, planname);
	}

	public List findByLockup(Object lockup) {
		return findByProperty(LOCKUP, lockup);
	}

	public List findByOpening(Object opening) {
		return findByProperty(OPENING, opening);
	}

	public List findByLockend(Object lockend) {
		return findByProperty(LOCKEND, lockend);
	}

	public List findBySpent(Object spent) {
		return findByProperty(SPENT, spent);
	}

	public List findByProfit(Object profit) {
		return findByProperty(PROFIT, profit);
	}

	public List findByPlaninfo(Object planinfo) {
		return findByProperty(PLANINFO, planinfo);
	}

	public List findByTerms(Object terms) {
		return findByProperty(TERMS, terms);
	}

	public List findByNumber(Object number) {
		return findByProperty(NUMBER, number);
	}

	public List findByMoney(Object money) {
		return findByProperty(MONEY, money);
	}

	public List findByRemark(Object remark) {
		return findByProperty(REMARK, remark);
	}

	public List findByDeadline(Object deadline) {
		return findByProperty(DEADLINE, deadline);
	}

	public List findByRate(Object rate) {
		return findByProperty(RATE, rate);
	}

	public List findByRepaytype(Object repaytype) {
		return findByProperty(REPAYTYPE, repaytype);
	}

	public List findByBidtype(Object bidtype) {
		return findByProperty(BIDTYPE, bidtype);
	}

	public List findByBidflag(Object bidflag) {
		return findByProperty(BIDFLAG, bidflag);
	}

	public List findByState(Object state) {
		return findByProperty(STATE, state);
	}

	public List findAll() {
		log.debug("finding all Financeplan instances");
		try {
			String queryString = "from Financeplan";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Financeplan merge(Financeplan detachedInstance) {
		log.debug("merging Financeplan instance");
		try {
			Financeplan result = (Financeplan) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Financeplan instance) {
		log.debug("attaching dirty Financeplan instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Financeplan instance) {
		log.debug("attaching clean Financeplan instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static FinanceplanDAO getFromApplicationContext(
			ApplicationContext ctx) {
		return (FinanceplanDAO) ctx.getBean("FinanceplanDAO");
	}
}