package dao;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.Query;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

/**
 * A data access object (DAO) providing persistence and search support for
 * Userinfo entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see dao.Userinfo
 * @author MyEclipse Persistence Tools
 */

public class UserinfoDAO extends HibernateDaoSupport {
	private static final Log log = LogFactory.getLog(UserinfoDAO.class);
	// property constants
	public static final String NICKNAME = "nickname";
	public static final String PHONE = "phone";
	public static final String SEX = "sex";
	public static final String NAME = "name";
	public static final String IDCARD = "idcard";
	public static final String EMAIL = "email";
	public static final String HIGHEDU = "highedu";
	public static final String GREDUATE = "greduate";
	public static final String MAIRITAL = "mairital";
	public static final String ADDRESS = "address";
	public static final String COMPANY = "company";
	public static final String COMSIZE = "comsize";
	public static final String JOB = "job";
	public static final String INCOME = "income";
	public static final String ECPERSON = "ecperson";
	public static final String WORKTIME = "worktime";
	public static final String HOMECON = "homecon";
	public static final String HOMELOAN = "homeloan";
	public static final String CARCON = "carcon";
	public static final String CARLOAN = "carloan";
	public static final String CRREPORT = "crreport";
	public static final String DEGREECON = "degreecon";
	public static final String WORKCON = "workcon";
	public static final String INCOMECON = "incomecon";
	public static final String FIELDCON = "fieldcon";
	public static final String XJYE = "xjye";
	public static final String JYJE = "jyje";
	public static final String YQSY = "yqsy";
	public static final String ZYE = "zye";
	public static final String FLAG = "flag";
	public static final String LINENUM = "linenum";
	public static final String REMAIN = "remain";
	public static final String REMARK = "remark";
	public static final String PASSWORD = "password";
	public static final String PICTURE = "picture";
	public static final String MONEYKEY = "moneykey";
	public static final String WITHDRAWAL = "withdrawal";
	public static final String PROMONEY = "promoney";
	public static final String AGE = "age";
	public static final String BIRTHDAY = "birthday";
	public static final String JKR = "jkr";
	public static final String BULK_AVE = "bulkAve";
	public static final String BULK_PROMONEY = "bulkPromoney";
	public static final String CHOICE_AVE = "choiceAve";
	public static final String CHOICE_PROMONEY = "choicePromoney";

	protected void initDao() {
		// do nothing
	}

	public void save(Userinfo transientInstance) {
		log.debug("saving Userinfo instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}
	public void update(Userinfo transientInstance) {
		log.debug("saving Userinfo instance");
		try {
			getHibernateTemplate().update(transientInstance);
			log.debug("update successful");
		} catch (RuntimeException re) {
			log.error("update failed", re);
			throw re;
		}
	}

	public void delete(Userinfo persistentInstance) {
		log.debug("deleting Userinfo instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Userinfo findById(java.lang.Integer id) {
		log.debug("getting Userinfo instance with id: " + id);
		try {
			Userinfo instance = (Userinfo) getHibernateTemplate().get(
					"dao.Userinfo", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Userinfo instance) {
		log.debug("finding Userinfo instance by example");
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
		log.debug("finding Userinfo instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Userinfo as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}
	
	//查询所有用户
	public List findAllU(int stratLine) {
		log.debug("finding all Jkract instances");
		try {
			String queryString = "from Userinfo where phone!='null'";
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setMaxResults(10);//取出10条记录
			queryObject.setFirstResult(stratLine);//从  **条记录开始
			return queryObject.list();	
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}
	//给用户添加资金
	//模糊--条件--查询所有用户
	public List<Userinfo> selectfindAllUserInfo(String uid,String nickname,String phone,String name,String idcard,String zye) {
		log.debug("finding all Jkract instances");
		try {
			String queryString = "from Userinfo where "
					//用户id
					+ "userid like '%"+uid+"%' and "
					//昵称
					+ "nickname like '%"+nickname+"%' and "
					//电话
					+ "phone like '%"+phone+"%'  and "
					//真实姓名
					+ "name like '%"+name+"%' and "
					//身份证号
					+ "idcard like '%"+idcard+"%' and "
					//总资产
					+ "zye like '%"+zye+"%'";
			System.out.println("UserinfoDAO------selectfindAllUserInfo-----SQL-----"+queryString);
			Query queryObject = getSession().createQuery(queryString);
			return queryObject.list();	
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public List findAllTotalNum(){
	    Query query=getSession().createQuery(" from Userinfo where phone!='null' ");
		List list = query.list();
		return list;
		}
	

	public List findByNickname(Object nickname) {
		return findByProperty(NICKNAME, nickname);
	}

	public List findByPhone(Object phone) {
		return findByProperty(PHONE, phone);
	}

	public List findBySex(Object sex) {
		return findByProperty(SEX, sex);
	}

	public List findByName(Object name) {
		return findByProperty(NAME, name);
	}

	public List findByIdcard(Object idcard) {
		return findByProperty(IDCARD, idcard);
	}

	public List findByEmail(Object email) {
		return findByProperty(EMAIL, email);
	}

	public List findByHighedu(Object highedu) {
		return findByProperty(HIGHEDU, highedu);
	}

	public List findByGreduate(Object greduate) {
		return findByProperty(GREDUATE, greduate);
	}

	public List findByMairital(Object mairital) {
		return findByProperty(MAIRITAL, mairital);
	}

	public List findByAddress(Object address) {
		return findByProperty(ADDRESS, address);
	}

	public List findByCompany(Object company) {
		return findByProperty(COMPANY, company);
	}

	public List findByComsize(Object comsize) {
		return findByProperty(COMSIZE, comsize);
	}

	public List findByJob(Object job) {
		return findByProperty(JOB, job);
	}

	public List findByIncome(Object income) {
		return findByProperty(INCOME, income);
	}

	public List findByEcperson(Object ecperson) {
		return findByProperty(ECPERSON, ecperson);
	}

	public List findByWorktime(Object worktime) {
		return findByProperty(WORKTIME, worktime);
	}

	public List findByHomecon(Object homecon) {
		return findByProperty(HOMECON, homecon);
	}

	public List findByHomeloan(Object homeloan) {
		return findByProperty(HOMELOAN, homeloan);
	}

	public List findByCarcon(Object carcon) {
		return findByProperty(CARCON, carcon);
	}

	public List findByCarloan(Object carloan) {
		return findByProperty(CARLOAN, carloan);
	}

	public List findByCrreport(Object crreport) {
		return findByProperty(CRREPORT, crreport);
	}

	public List findByDegreecon(Object degreecon) {
		return findByProperty(DEGREECON, degreecon);
	}

	public List findByWorkcon(Object workcon) {
		return findByProperty(WORKCON, workcon);
	}

	public List findByIncomecon(Object incomecon) {
		return findByProperty(INCOMECON, incomecon);
	}

	public List findByFieldcon(Object fieldcon) {
		return findByProperty(FIELDCON, fieldcon);
	}

	public List findByXjye(Object xjye) {
		return findByProperty(XJYE, xjye);
	}

	public List findByJyje(Object jyje) {
		return findByProperty(JYJE, jyje);
	}

	public List findByYqsy(Object yqsy) {
		return findByProperty(YQSY, yqsy);
	}

	public List findByZye(Object zye) {
		return findByProperty(ZYE, zye);
	}

	public List findByFlag(Object flag) {
		return findByProperty(FLAG, flag);
	}

	public List findByLinenum(Object linenum) {
		return findByProperty(LINENUM, linenum);
	}

	public List findByRemain(Object remain) {
		return findByProperty(REMAIN, remain);
	}

	public List findByRemark(Object remark) {
		return findByProperty(REMARK, remark);
	}

	public List findByPassword(Object password) {
		return findByProperty(PASSWORD, password);
	}

	public List findByPicture(Object picture) {
		return findByProperty(PICTURE, picture);
	}

	public List findByMoneykey(Object moneykey) {
		return findByProperty(MONEYKEY, moneykey);
	}

	public List findByWithdrawal(Object withdrawal) {
		return findByProperty(WITHDRAWAL, withdrawal);
	}

	public List findByPromoney(Object promoney) {
		return findByProperty(PROMONEY, promoney);
	}

	public List findByAge(Object age) {
		return findByProperty(AGE, age);
	}

	public List findByBirthday(Object birthday) {
		return findByProperty(BIRTHDAY, birthday);
	}

	public List findByJkr(Object jkr) {
		return findByProperty(JKR, jkr);
	}

	public List findByBulkWithdrawal(Object bulkAve) {
		return findByProperty(BULK_AVE, bulkAve);
	}

	public List findByBulkPromoney(Object bulkPromoney) {
		return findByProperty(BULK_PROMONEY, bulkPromoney);
	}

	public List findByChoiceWithdrawal(Object choiceAve) {
		return findByProperty(CHOICE_AVE, choiceAve);
	}

	public List findByChoicePromoney(Object choicePromoney) {
		return findByProperty(CHOICE_PROMONEY, choicePromoney);
	}

	public List<Userinfo> findAll() {
		log.debug("finding all Userinfo instances");
		try {
			String queryString = "from Userinfo";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	
	public Userinfo merge(Userinfo detachedInstance) {
		log.debug("merging Userinfo instance");
		try {
			Userinfo result = (Userinfo) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Userinfo instance) {
		log.debug("attaching dirty Userinfo instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Userinfo instance) {
		log.debug("attaching clean Userinfo instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static UserinfoDAO getFromApplicationContext(ApplicationContext ctx) {
		return (UserinfoDAO) ctx.getBean("UserinfoDAO");
	}
}