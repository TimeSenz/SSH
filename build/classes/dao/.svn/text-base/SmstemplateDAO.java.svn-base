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
 * Smstemplate entities. Transaction control of the save(), update() and
 * delete() operations can directly support Spring container-managed
 * transactions or they can be augmented to handle user-managed Spring
 * transactions. Each of these methods provides additional information for how
 * to configure it for the desired type of transaction control.
 * 
 * @see dao.Smstemplate
 * @author MyEclipse Persistence Tools
 */

public class SmstemplateDAO extends HibernateDaoSupport {
	private static final Log log = LogFactory.getLog(SmstemplateDAO.class);
	// property constants
	public static final String CID = "cid";
	public static final String CONTENTS = "contents";
	public static final String CUSINFO = "cusinfo";
	public static final String REMARK = "remark";
	public static final String REMAIN = "remain";
	public static final String PRONUM = "pronum";

	protected void initDao() {
		// do nothing
	}

	public void save(Smstemplate transientInstance) {
		log.debug("saving Smstemplate instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}
    

	public void update(Smstemplate transientInstance) {
		log.debug("updating Smstemplate instance");
		try {
			getHibernateTemplate().update(transientInstance);
			log.debug("update successful");
		} catch (RuntimeException re) {
			log.error("update failed", re);
			throw re;
		}
	}
	
	public void delete(Smstemplate persistentInstance) {
		log.debug("deleting Smstemplate instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Smstemplate findById(java.lang.Integer id) {
		log.debug("getting Smstemplate instance with id: " + id);
		try {
			Smstemplate instance = (Smstemplate) getHibernateTemplate().get(
					"dao.Smstemplate", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Smstemplate instance) {
		log.debug("finding Smstemplate instance by example");
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
		log.debug("finding Smstemplate instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Smstemplate as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByCid(Object cid) {
		return findByProperty(CID, cid);
	}

	public List findByContents(Object contents) {
		return findByProperty(CONTENTS, contents);
	}

	public List findByCusinfo(Object cusinfo) {
		return findByProperty(CUSINFO, cusinfo);
	}

	public List findByRemark(Object remark) {
		return findByProperty(REMARK, remark);
	}

	public List findByRemain(Object remain) {
		return findByProperty(REMAIN, remain);
	}

	public List findByPronum(Object pronum) {
		return findByProperty(PRONUM, pronum);
	}

	public List findAll() {
		log.debug("finding all Smstemplate instances");
		try {
			String queryString = "from Smstemplate";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}
	//方法重构
	public List<Smstemplate> findAll(int stratLine) {
		log.debug("finding all Smstemplate instances");
		try {
			Query queryObject = getSession().createQuery("from Smstemplate");
			queryObject.setMaxResults(10);//取出10条记录
			queryObject.setFirstResult(stratLine);//从  **条记录开始
			return queryObject.list();	
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}
	public List findTotal(){
	    Query query=getSession().createQuery("from Smstemplate");
		List list = query.list();
		return list;
		}
	
	
	
	public Smstemplate merge(Smstemplate detachedInstance) {
		log.debug("merging Smstemplate instance");
		try {
			Smstemplate result = (Smstemplate) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Smstemplate instance) {
		log.debug("attaching dirty Smstemplate instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Smstemplate instance) {
		log.debug("attaching clean Smstemplate instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static SmstemplateDAO getFromApplicationContext(
			ApplicationContext ctx) {
		return (SmstemplateDAO) ctx.getBean("SmstemplateDAO");
	}
}