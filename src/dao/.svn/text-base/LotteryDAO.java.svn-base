package dao;

import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

/**
 * A data access object (DAO) providing persistence and search support for
 * Lottery entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see dao.Lottery
 * @author MyEclipse Persistence Tools
 */

public class LotteryDAO extends HibernateDaoSupport {
	private static final Log log = LogFactory.getLog(LotteryDAO.class);
	// property constants
	public static final String NAME = "name";
	public static final String PHONE = "phone";

	protected void initDao() {
		// do nothing
	}

	public void save(Lottery transientInstance) {
		log.debug("saving Lottery instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Lottery persistentInstance) {
		log.debug("deleting Lottery instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Lottery findById(java.lang.Integer userid) {
		log.debug("getting Lottery instance with id: " + userid);
		try {
			Lottery instance = (Lottery) getHibernateTemplate().get(
					"dao.Lottery", userid);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Lottery instance) {
		log.debug("finding Lottery instance by example");
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
		log.debug("finding Lottery instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Lottery as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByName(Object name) {
		return findByProperty(NAME, name);
	}

	public List findByPhone(Object phone) {
		return findByProperty(PHONE, phone);
	}

	public List findAll() {
		log.debug("finding all Lottery instances");
		try {
			String queryString = "from Lottery";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Lottery merge(Lottery detachedInstance) {
		log.debug("merging Lottery instance");
		try {
			Lottery result = (Lottery) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Lottery instance) {
		log.debug("attaching dirty Lottery instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Lottery instance) {
		log.debug("attaching clean Lottery instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static LotteryDAO getFromApplicationContext(ApplicationContext ctx) {
		return (LotteryDAO) ctx.getBean("LotteryDAO");
	}
}