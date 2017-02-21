package dao;

import java.sql.Timestamp;
import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

/**
 * A data access object (DAO) providing persistence and search support for Jbsq
 * entities. Transaction control of the save(), update() and delete() operations
 * can directly support Spring container-managed transactions or they can be
 * augmented to handle user-managed Spring transactions. Each of these methods
 * provides additional information for how to configure it for the desired type
 * of transaction control.
 * 
 * @see dao.Jbsq
 * @author MyEclipse Persistence Tools
 */

public class JbsqDAO extends HibernateDaoSupport {
	private static final Log log = LogFactory.getLog(JbsqDAO.class);
	// property constants
	public static final String XM = "xm";
	public static final String XB = "xb";
	public static final String DKJE = "dkje";
	public static final String DHHM = "dhhm";

	protected void initDao() {
		// do nothing
	}

	public void save(Jbsq transientInstance) {
		log.debug("saving Jbsq instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Jbsq persistentInstance) {
		log.debug("deleting Jbsq instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Jbsq findById(java.lang.Integer id) {
		log.debug("getting Jbsq instance with id: " + id);
		try {
			Jbsq instance = (Jbsq) getHibernateTemplate().get("dao.Jbsq", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Jbsq instance) {
		log.debug("finding Jbsq instance by example");
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
		log.debug("finding Jbsq instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Jbsq as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByXm(Object xm) {
		return findByProperty(XM, xm);
	}

	public List findByXb(Object xb) {
		return findByProperty(XB, xb);
	}

	public List findByDkje(Object dkje) {
		return findByProperty(DKJE, dkje);
	}

	public List findByDhhm(Object dhhm) {
		return findByProperty(DHHM, dhhm);
	}

	public List findAll() {
		log.debug("finding all Jbsq instances");
		try {
			String queryString = "from Jbsq";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Jbsq merge(Jbsq detachedInstance) {
		log.debug("merging Jbsq instance");
		try {
			Jbsq result = (Jbsq) getHibernateTemplate().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Jbsq instance) {
		log.debug("attaching dirty Jbsq instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Jbsq instance) {
		log.debug("attaching clean Jbsq instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static JbsqDAO getFromApplicationContext(ApplicationContext ctx) {
		return (JbsqDAO) ctx.getBean("JbsqDAO");
	}
}