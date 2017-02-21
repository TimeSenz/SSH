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
 * Jkract entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see dao.Jkract
 * @author MyEclipse Persistence Tools
 */
public class JkractDAO extends HibernateDaoSupport {
	private static final Log log = LogFactory.getLog(JkractDAO.class);
	// property constants
	public static final String BIDID = "bidid";
	public static final String STATE = "state";
	public static final String ZCRJE = "zcrje";
	public static final String REMARK = "remark";
	protected void initDao() {
		// do nothing
	}
	public void save(Jkract transientInstance) {
		log.debug("saving Jkract instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}
	public void update(Jkract transientInstance) {
		log.debug("updating Jkract instance");
		try {
			getHibernateTemplate().update(transientInstance);
			log.debug("update successful");
		} catch (RuntimeException re) {
			log.error("update failed", re);
			throw re;
		}
	}
	public void delete(Jkract persistentInstance) {
		log.debug("deleting Jkract instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}
	public Jkract findById(java.lang.Integer id) {
		log.debug("getting Jkract instance with id: " + id);
		try {
			Jkract instance = (Jkract) getHibernateTemplate().get("dao.Jkract",
					id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
	// state
	 public List<Jkract> findByState(String state,int stratLine){
			log.debug("finding all Jkract instances");
			try {
				String queryString = "from Jkract where state='"+state+"' order by time";
				//return getHibernateTemplate().find(queryString);
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
			    Query query=getSession().createQuery( "from Jkract where state='"+state+"' order by time");
				List list = query.list();
				return list;
				}
	 public List findByExample(Jkract instance) {
		log.debug("finding Jkract instance by example");
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
		log.debug("finding Jkract instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Jkract as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}
	public List findByBidid(Object bidid) {
		return findByProperty(BIDID, bidid);
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
	public List<Jkract> findAll(int stratLine) {
		log.debug("finding all Jkract instances");
		try {
			String queryString = "from Jkract";
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setMaxResults(10);//取出10条记录
			queryObject.setFirstResult(stratLine);//从  **条记录开始
			return queryObject.list();	
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public List findAllTotalNum(){
	    Query query=getSession().createQuery("from Jkract");
		List list = query.list();
		return list;
		}
	
	
	public Jkract merge(Jkract detachedInstance) {
		log.debug("merging Jkract instance");
		try {
			Jkract result = (Jkract) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}
	public void attachDirty(Jkract instance) {
		log.debug("attaching dirty Jkract instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
	public void attachClean(Jkract instance) {
		log.debug("attaching clean Jkract instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
	public static JkractDAO getFromApplicationContext(ApplicationContext ctx) {
		return (JkractDAO) ctx.getBean("JkractDAO");
	}
}