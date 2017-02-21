package dao;

import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

/**
 * A data access object (DAO) providing persistence and search support for
 * Cominfo entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see dao.Cominfo
 * @author MyEclipse Persistence Tools
 */

public class CominfoDAO extends HibernateDaoSupport {
	private static final Log log = LogFactory.getLog(CominfoDAO.class);
	// property constants
	public static final String TGZH = "tgzh";
	public static final String FXJZH = "fxjzh";
	public static final String GSZH = "gszh";
	
	public static final String VERSIONNAME = "versionname";
	public static final String VERSIONCODE = "versioncode	";
	public static final String INFO = "info";

	protected void initDao() {
		// do nothing
	}

	public void save(Cominfo transientInstance) {
		log.debug("saving Cominfo instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}
	
	public void update(Cominfo transientInstance) {
		log.debug("update Cominfo instance");
		try {
			getHibernateTemplate().update(transientInstance);
			log.debug("update successful");
		} catch (RuntimeException re) {
			log.error("update failed", re);
			throw re;
		}
	}

	public void delete(Cominfo persistentInstance) {
		log.debug("deleting Cominfo instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Cominfo findById(java.lang.Integer id) {
		log.debug("getting Cominfo instance with id: " + id);
		try {
			
			Cominfo instance = (Cominfo) getHibernateTemplate().get("dao.Cominfo", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Cominfo instance) {
		log.debug("finding Cominfo instance by example");
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
		log.debug("finding Cominfo instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Cominfo as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByTgzh(Object tgzh) {
		return findByProperty(TGZH, tgzh);
	}

	public List findByFxjzh(Object fxjzh) {
		return findByProperty(FXJZH, fxjzh);
	}

	public List findByGszh(Object gszh) {
		return findByProperty(GSZH, gszh);
	}

	public List findAll() {
		log.debug("finding all Cominfo instances");
		try {
			String queryString = "from Cominfo";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Cominfo merge(Cominfo detachedInstance) {
		log.debug("merging Cominfo instance");
		try {
			Cominfo result = (Cominfo) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Cominfo instance) {
		log.debug("attaching dirty Cominfo instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Cominfo instance) {
		log.debug("attaching clean Cominfo instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static CominfoDAO getFromApplicationContext(ApplicationContext ctx) {
		return (CominfoDAO) ctx.getBean("CominfoDAO");
	}
	
}