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
 * A data access object (DAO) providing persistence and search support for Hxd
 * entities. Transaction control of the save(), update() and delete() operations
 * can directly support Spring container-managed transactions or they can be
 * augmented to handle user-managed Spring transactions. Each of these methods
 * provides additional information for how to configure it for the desired type
 * of transaction control.
 * 
 * @see dao.Hxd
 * @author MyEclipse Persistence Tools
 */

public class HxdDAO extends HibernateDaoSupport {
	private static final Log log = LogFactory.getLog(HxdDAO.class);
	// property constants
	public static final String XM = "xm";
	public static final String SJH = "sjh";
	public static final String SZCS = "szcs";
	public static final String GSMC = "gsmc";
	public static final String ZW = "zw";
	public static final String YSR = "ysr";
	public static final String DKJE = "dkje";
	public static final String DKQX = "dkqx";
	public static final String DZYX = "dzyx";
	public static final String LY = "ly";
	public static final String LX = "lx";

	protected void initDao() {
		// do nothing
	}

	public void save(Hxd transientInstance) {
		log.debug("saving Hxd instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Hxd persistentInstance) {
		log.debug("deleting Hxd instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Hxd findById(java.lang.Integer id) {
		log.debug("getting Hxd instance with id: " + id);
		try {
			Hxd instance = (Hxd) getHibernateTemplate().get("dao.Hxd", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Hxd instance) {
		log.debug("finding Hxd instance by example");
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
		log.debug("finding Hxd instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Hxd as model where model."
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

	public List findBySzcs(Object szcs) {
		return findByProperty(SZCS, szcs);
	}

	public List findByGsmc(Object gsmc) {
		return findByProperty(GSMC, gsmc);
	}

	public List findByZw(Object zw) {
		return findByProperty(ZW, zw);
	}

	public List findByYsr(Object ysr) {
		return findByProperty(YSR, ysr);
	}

	public List findByDkje(Object dkje) {
		return findByProperty(DKJE, dkje);
	}

	public List findByDkqx(Object dkqx) {
		return findByProperty(DKQX, dkqx);
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
		log.debug("finding all Hxd instances");
		try {
			String queryString = "from Hxd";
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
		Query query=getSession().createQuery("from Hxd");
		List list = query.list();
		return list;
	}
	public Hxd merge(Hxd detachedInstance) {
		log.debug("merging Hxd instance");
		try {
			Hxd result = (Hxd) getHibernateTemplate().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Hxd instance) {
		log.debug("attaching dirty Hxd instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Hxd instance) {
		log.debug("attaching clean Hxd instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static HxdDAO getFromApplicationContext(ApplicationContext ctx) {
		return (HxdDAO) ctx.getBean("HxdDAO");
	}
}