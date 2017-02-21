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
 * A data access object (DAO) providing persistence and search support for Fdxx
 * entities. Transaction control of the save(), update() and delete() operations
 * can directly support Spring container-managed transactions or they can be
 * augmented to handle user-managed Spring transactions. Each of these methods
 * provides additional information for how to configure it for the desired type
 * of transaction control.
 * 
 * @see dao.Fdxx
 * @author MyEclipse Persistence Tools
 */

public class FdxxDAO extends HibernateDaoSupport {
	private static final Log log = LogFactory.getLog(FdxxDAO.class);
	// property constants
	public static final String XM = "xm";
	public static final String SJH = "sjh";
	public static final String FWMJ = "fwmj";
	public static final String FWSZCS = "fwszcs";
	public static final String FL = "fl";
	public static final String DKJG = "dkjg";
	public static final String YDJE = "ydje";
	public static final String SQJE = "sqje";
	public static final String DZYX = "dzyx";
	public static final String LY = "ly";
	public static final String LX = "lx";

	protected void initDao() {
		// do nothing
	}

	public void save(Fdxx transientInstance) {
		log.debug("saving Fdxx instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Fdxx persistentInstance) {
		log.debug("deleting Fdxx instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Fdxx findById(java.lang.Integer id) {
		log.debug("getting Fdxx instance with id: " + id);
		try {
			Fdxx instance = (Fdxx) getHibernateTemplate().get("dao.Fdxx", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Fdxx instance) {
		log.debug("finding Fdxx instance by example");
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
		log.debug("finding Fdxx instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Fdxx as model where model."
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

	public List findByFwmj(Object fwmj) {
		return findByProperty(FWMJ, fwmj);
	}

	public List findByFwszcs(Object fwszcs) {
		return findByProperty(FWSZCS, fwszcs);
	}

	public List findByFl(Object fl) {
		return findByProperty(FL, fl);
	}

	public List findByDkjg(Object dkjg) {
		return findByProperty(DKJG, dkjg);
	}

	public List findByYdje(Object ydje) {
		return findByProperty(YDJE, ydje);
	}

	public List findBySqje(Object sqje) {
		return findByProperty(SQJE, sqje);
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
		log.debug("finding all Fdxx instances");
		try {
			String queryString = "from Fdxx";
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
		Query query=getSession().createQuery("from Fdxx");
		List list = query.list();
		return list;
	}
	public Fdxx merge(Fdxx detachedInstance) {
		log.debug("merging Fdxx instance");
		try {
			Fdxx result = (Fdxx) getHibernateTemplate().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Fdxx instance) {
		log.debug("attaching dirty Fdxx instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Fdxx instance) {
		log.debug("attaching clean Fdxx instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static FdxxDAO getFromApplicationContext(ApplicationContext ctx) {
		return (FdxxDAO) ctx.getBean("FdxxDAO");
	}
}