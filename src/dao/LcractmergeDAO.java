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
 * A data access object (DAO) providing persistence and search support for
 * Lcractmerge entities. Transaction control of the save(), update() and
 * delete() operations can directly support Spring container-managed
 * transactions or they can be augmented to handle user-managed Spring
 * transactions. Each of these methods provides additional information for how
 * to configure it for the desired type of transaction control.
 * 
 * @see dao.Lcractmerge
 * @author MyEclipse Persistence Tools
 */

public class LcractmergeDAO extends HibernateDaoSupport {
	private static final Log log = LogFactory.getLog(LcractmergeDAO.class);
	// property constants
	public static final String LCRID = "lcrid";
	public static final String BIDID = "bidid";
	public static final String MONEY = "money";
	public static final String STATE = "state";
	public static final String ZCRJE = "zcrje";
	public static final String REMARK = "remark";
	public static final String USERBANKID = "userbankid";
	public static final String PARAMETER = "parameter";
	public static final String VARIBLE = "varible";
	public static final String STAKES = "stakes";
	public static final String VALUE = "value";

	protected void initDao() {
		// do nothing
	}

	public void save(Lcractmerge transientInstance) {
		log.debug("saving Lcractmerge instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Lcractmerge persistentInstance) {
		log.debug("deleting Lcractmerge instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	
	//更新
	public void update(Lcractmerge transientInstance) {
		log.debug("updating Lcractmerge instance");
		try {
			getHibernateTemplate().update(transientInstance);
			log.debug("update successful");
		} catch (RuntimeException re) {
			log.error("update failed", re);
			throw re;
		}
	}
	
	
	public Lcractmerge findById(java.lang.Integer id) {
		log.debug("getting Lcractmerge instance with id: " + id);
		try {
			Lcractmerge instance = (Lcractmerge) getHibernateTemplate().get(
					"dao.Lcractmerge", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Lcractmerge instance) {
		log.debug("finding Lcractmerge instance by example");
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
		log.debug("finding Lcractmerge instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Lcractmerge as model where model."
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

	public List findByBidid(Object bidid) {
		return findByProperty(BIDID, bidid);
	}

	public List findByMoney(Object money) {
		return findByProperty(MONEY, money);
	}

	public List findByState(Object state) {
		return findByProperty(STATE, state);
	}

	public List findByZcrje(Object zcrje) {
		return findByProperty(ZCRJE, zcrje);
	}

	public List findByRemark(Object remark) {
		return findByProperty(REMARK, remark);
	}

	public List findByUserbankid(Object userbankid) {
		return findByProperty(USERBANKID, userbankid);
	}

	public List findByParameter(Object parameter) {
		return findByProperty(PARAMETER, parameter);
	}

	public List findByVarible(Object varible) {
		return findByProperty(VARIBLE, varible);
	}

	public List findByStakes(Object stakes) {
		return findByProperty(STAKES, stakes);
	}

	public List findByValue(Object value) {
		return findByProperty(VALUE, value);
	}

	//测试lcractmerge
		public List<Lcractmerge> updateState(Integer Lcractmergeid ){
			 Query query=getSession().createQuery( "from Lcractmerge where id='"+Lcractmergeid+"' ");
				List list = query.list();
			
			return list;
		}
	
	
	
	
	//测试lcractmerge
    public List<Lcractmerge> findByState(String state, int stratLine){
		log.debug("finding all Lcractmerge instances");
		try {
			String queryString = "from Lcractmerge where state='"+state+"' order by time";
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setMaxResults(10);//取出10条记录
			queryObject.setFirstResult(stratLine);//从  **条记录开始
			return queryObject.list();	
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}
    //分页totalNum
	public List findTotalNum(String state){
		    Query query=getSession().createQuery( "from Lcractmerge where state='"+state+"' order by time");
			List list = query.list();
			return list;
			}
	
	
	
	
	
	
	
	
	
	
	public List findAll() {
		log.debug("finding all Lcractmerge instances");
		try {
			String queryString = "from Lcractmerge";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Lcractmerge merge(Lcractmerge detachedInstance) {
		log.debug("merging Lcractmerge instance");
		try {
			Lcractmerge result = (Lcractmerge) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Lcractmerge instance) {
		log.debug("attaching dirty Lcractmerge instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Lcractmerge instance) {
		log.debug("attaching clean Lcractmerge instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static LcractmergeDAO getFromApplicationContext(
			ApplicationContext ctx) {
		return (LcractmergeDAO) ctx.getBean("LcractmergeDAO");
	}
}