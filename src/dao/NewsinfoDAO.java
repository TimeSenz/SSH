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
 * Newsinfo entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see dao.Newsinfo
 * @author MyEclipse Persistence Tools
 */

public class NewsinfoDAO extends HibernateDaoSupport {
	private static final Log log = LogFactory.getLog(NewsinfoDAO.class);
	// property constants
	public static final String TITLE = "title";
	public static final String CONTENTS = "contents";
	public static final String REMARK = "remark";
	public static final String REMAIN = "remain";
	public static final String CUSINFO = "cusinfo";
	public static final String TYPE = "type";

	protected void initDao() {
		// do nothing
	}

    //实时更新分页查询    新闻动态    新闻公告 还款公告  媒体报道
    public List<Bidinfo> selectBy(String type,int stratLine,int number){
		log.debug("finding all Newsinfo instances");
		try {
			String queryString =  "from Newsinfo  where type='"+type+"'order by time desc ";
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setMaxResults(number);//取出number条记录
			queryObject.setFirstResult(stratLine);//从  **条记录开始
			return queryObject.list();			
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}
  //实时更新分页查询bidlist
  	public List findNum(String type){
  		    Query query=getSession().createQuery( "from Newsinfo  where type='"+type+"'order by time desc ");
  			List list = query.list();
  			return list;
  			}
  	
    public List<Bidinfo> findByFType(String type,int stratLine){
 		log.debug("finding all Newsinfo instances");
 		try {
 			String queryString =  "from Newsinfo  where type='"+type+"' ";
 			Query queryObject = getSession().createQuery(queryString);
 			queryObject.setMaxResults(10);//取出10条记录
 			queryObject.setFirstResult(stratLine);//从  **条记录开始
 			return queryObject.list();			
 		} catch (RuntimeException re) {
 			log.error("find all failed", re);
 			throw re;
 		}
 	}
  	
    public List findTotal(String type){
		    Query query=getSession().createQuery( "from Newsinfo  where type='"+type+"'");
			List list = query.list();
			return list;
			}
  	
  	
	public void save(Newsinfo transientInstance) {
		log.debug("saving Newsinfo instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}
	public void update(Newsinfo transientInstance) {
		log.debug("updating Newsinfo instance");
		try {
			getHibernateTemplate().update(transientInstance);
			log.debug("update successful");
		} catch (RuntimeException re) {
			log.error("update failed", re);
			throw re;
		}
	}
	public void delete(Newsinfo persistentInstance) {
		log.debug("deleting Newsinfo instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Newsinfo findById(java.lang.Integer id) {
		log.debug("getting Newsinfo instance with id: " + id);
		try {
			Newsinfo instance = (Newsinfo) getHibernateTemplate().get(
					"dao.Newsinfo", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Newsinfo instance) {
		log.debug("finding Newsinfo instance by example");
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
		log.debug("finding Newsinfo instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Newsinfo as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByTitle(Object title) {
		return findByProperty(TITLE, title);
	}

	public List findByContents(Object contents) {
		return findByProperty(CONTENTS, contents);
	}

	public List findByRemark(Object remark) {
		return findByProperty(REMARK, remark);
	}

	public List findByRemain(Object remain) {
		return findByProperty(REMAIN, remain);
	}

	public List findByCusinfo(Object cusinfo) {
		return findByProperty(CUSINFO, cusinfo);
	}

	public List findByType(Object type) {
		return findByProperty(TYPE, type);
	}

	public List findAll() {
		log.debug("finding all Newsinfo instances");
		try {
			String queryString = "from Newsinfo";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Newsinfo merge(Newsinfo detachedInstance) {
		log.debug("merging Newsinfo instance");
		try {
			Newsinfo result = (Newsinfo) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Newsinfo instance) {
		log.debug("attaching dirty Newsinfo instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Newsinfo instance) {
		log.debug("attaching clean Newsinfo instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static NewsinfoDAO getFromApplicationContext(ApplicationContext ctx) {
		return (NewsinfoDAO) ctx.getBean("NewsinfoDAO");
	}
}