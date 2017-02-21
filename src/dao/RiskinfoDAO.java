package dao;

import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

/**
 * A data access object (DAO) providing persistence and search support for
 * Riskinfo entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see dao.Riskinfo
 * @author MyEclipse Persistence Tools
 */

public class RiskinfoDAO extends HibernateDaoSupport {
	private static final Log log = LogFactory.getLog(RiskinfoDAO.class);
	// property constants
	public static final String LOGIN = "login";
	public static final String PASSWORD = "password";
	public static final String NAME = "name";
	public static final String PHONE = "phone";
	public static final String COMNAME = "comname";
	public static final String BIDPER = "bidper";
	public static final String REMARK = "remark";
	public static final String REMAIN = "remain";

	protected void initDao() {
		// do nothing
	}

	public void save(Riskinfo transientInstance) {
		log.debug("saving Riskinfo instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}
	public void update(Riskinfo transientInstance) {
		log.debug("update Riskinfo instance");
		try {
			getHibernateTemplate().update(transientInstance);
			log.debug("update successful");
		} catch (RuntimeException re) {
			log.error("update failed", re);
			throw re;
		}
	}

	public void delete(Riskinfo persistentInstance) {
		log.debug("deleting Riskinfo instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Riskinfo findById(java.lang.Integer id) {
		log.debug("getting Riskinfo instance with id: " + id);
		try {
			Riskinfo instance = (Riskinfo) getHibernateTemplate().get(
					"dao.Riskinfo", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Riskinfo instance) {
		log.debug("finding Riskinfo instance by example");
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
		log.debug("finding Riskinfo instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Riskinfo as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByLogin(Object login) {
		return findByProperty(LOGIN, login);
	}

	public List findByPassword(Object password) {
		return findByProperty(PASSWORD, password);
	}

	public List findByName(Object name) {
		return findByProperty(NAME, name);
	}

	public List findByPhone(Object phone) {
		return findByProperty(PHONE, phone);
	}

	public List findAll() {
		log.debug("finding all Riskinfo instances");
		try {
			String queryString = "from Riskinfo";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Riskinfo merge(Riskinfo detachedInstance) {
		log.debug("merging Riskinfo instance");
		try {
			Riskinfo result = (Riskinfo) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Riskinfo instance) {
		log.debug("attaching dirty Riskinfo instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Riskinfo instance) {
		log.debug("attaching clean Riskinfo instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static RiskinfoDAO getFromApplicationContext(ApplicationContext ctx) {
		return (RiskinfoDAO) ctx.getBean("RiskinfoDAO");
	}
}