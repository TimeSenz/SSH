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
 * Tempdata entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see dao.Tempdata
 * @author MyEclipse Persistence Tools
 */

public class TempdataDAO extends HibernateDaoSupport {
	private static final Log log = LogFactory.getLog(TempdataDAO.class);
	// property constants
	public static final String LCRID = "lcrid";
	public static final String MONEY = "money";
	public static final String BIDID = "bidid";

	protected void initDao() {
		// do nothing
	}

	public void save(Tempdata transientInstance) {
		log.debug("saving Tempdata instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Tempdata persistentInstance) {
		log.debug("deleting Tempdata instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Tempdata findById(java.lang.Integer id) {
		log.debug("getting Tempdata instance with id: " + id);
		try {
			Tempdata instance = (Tempdata) getHibernateTemplate().get(
					"dao.Tempdata", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Tempdata instance) {
		log.debug("finding Tempdata instance by example");
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
		log.debug("finding Tempdata instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Tempdata as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByLcrid(Object lcrid) {
		return findByProperty(LCRID, lcrid);
	}

	public List findByMoney(Object money) {
		return findByProperty(MONEY, money);
	}

	public List findByBidid(Object bidid) {
		return findByProperty(BIDID, bidid);
	}

	
	
	
	public List<Tempdata> findAll() {
		log.debug("finding all Tempdata instances");
		try {
			String queryString = "from Tempdata";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}
	
//	//根据用户id，类型
//	public List findByUser_Type(String user,String type){
//
//		log.debug("finding all Tempdata instances");
//		try {
//			if(type.equals("bluk")){
//				
//				String queryString = "from Tempdata where lcrid ="+user;
//			}
//			
//			
//			return getHibernateTemplate().find(queryString);
//		} catch (RuntimeException re) {
//			log.error("find all failed", re);
//			throw re;
//		}
//	
//		
//	}

	public Tempdata merge(Tempdata detachedInstance) {
		log.debug("merging Tempdata instance");
		try {
			Tempdata result = (Tempdata) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Tempdata instance) {
		log.debug("attaching dirty Tempdata instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Tempdata instance) {
		log.debug("attaching clean Tempdata instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static TempdataDAO getFromApplicationContext(ApplicationContext ctx) {
		return (TempdataDAO) ctx.getBean("TempdataDAO");
	}
	//根据bidinfo检索所有与此bidinfo.id有关理财人信息
	public List findByBidid(Integer bidid) {
		log.debug("finding bybidid Tempdata instances");
		try {
			String queryString = "from Tempdata where bidid="+bidid;
			System.out.println("queryString:"+queryString);
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find bybidid failed", re);
			throw re;
		}
	}
}