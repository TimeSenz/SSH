package dao;

import java.sql.Timestamp;
import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.Query;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

/**
 * A data access object (DAO) providing persistence and search support for Clxx
 * entities. Transaction control of the save(), update() and delete() operations
 * can directly support Spring container-managed transactions or they can be
 * augmented to handle user-managed Spring transactions. Each of these methods
 * provides additional information for how to configure it for the desired type
 * of transaction control.
 * 
 * @see dao.Clxx
 * @author MyEclipse Persistence Tools
 */

public class ClxxDAO extends HibernateDaoSupport {
	private static final Log log = LogFactory.getLog(ClxxDAO.class);
	// property constants
	public static final String XM = "xm";
	public static final String SJH = "sjh";
	public static final String GCSJ = "gcsj";
	public static final String DJCS = "djcs";
	public static final String GZJG = "gzjg";
	public static final String DZYX = "dzyx";
	public static final String LY = "ly";
	public static final String LX = "lx";

	protected void initDao() {
		// do nothing
	}

	public void save(Clxx transientInstance) {
		log.debug("saving Clxx instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Clxx persistentInstance) {
		log.debug("deleting Clxx instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Clxx findById(java.lang.Integer id) {
		log.debug("getting Clxx instance with id: " + id);
		try {
			Clxx instance = (Clxx) getHibernateTemplate().get("dao.Clxx", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Clxx instance) {
		log.debug("finding Clxx instance by example");
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
		log.debug("finding Clxx instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Clxx as model where model."
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

	public List findBySjh(Object sjh) {
		return findByProperty(SJH, sjh);
	}

	public List findByGcsj(Object gcsj) {
		return findByProperty(GCSJ, gcsj);
	}

	public List findByDjcs(Object djcs) {
		return findByProperty(DJCS, djcs);
	}

	public List findByGzjg(Object gzjg) {
		return findByProperty(GZJG, gzjg);
	}

	public List findByDzyx(Object dzyx) {
		return findByProperty(DZYX, dzyx);
	}

	public List findByLy(Object ly) {
		return findByProperty(LY, ly);
	}

	public List findByLx(Object lx) {
		return findByProperty(LX, lx);
	}

	public List findAll(int stratLine) {
		log.debug("finding all Clxx instances");
		try {
			String queryString = "from Clxx";
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setMaxResults(10);//取出10条记录
			queryObject.setFirstResult(stratLine);//从  **条记录开始
			return queryObject.list();	
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}
	public List findTotalNum(){
		Query query=getSession().createQuery("from Clxx");
		List list = query.list();
		return list;
	}
	public Clxx merge(Clxx detachedInstance) {
		log.debug("merging Clxx instance");
		try {
			Clxx result = (Clxx) getHibernateTemplate().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Clxx instance) {
		log.debug("attaching dirty Clxx instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Clxx instance) {
		log.debug("attaching clean Clxx instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static ClxxDAO getFromApplicationContext(ApplicationContext ctx) {
		return (ClxxDAO) ctx.getBean("ClxxDAO");
	}
}