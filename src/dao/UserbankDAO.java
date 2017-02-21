package dao;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

/**
 * A data access object (DAO) providing persistence and search support for
 * Userbank entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see dao.Userbank
 * @author MyEclipse Persistence Tools
 */

public class UserbankDAO extends HibernateDaoSupport {
	private static final Log log = LogFactory.getLog(UserbankDAO.class);
	// property constants
	public static final String USERID = "userid";
	public static final String BANKNAME = "bankname";
	public static final String BANKNUMBR = "banknumbr";
	public static final String REMARK = "remark";
	public static final String REMAIN = "remain";

	protected void initDao() {
		// do nothing
	}

	public void save(Userbank transientInstance) {
		log.debug("saving Userbank instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}
	
	public void updata(Userbank transientInstance) {
		log.debug("updata Userbank instance");
		try {
			getHibernateTemplate().update(transientInstance);;
			log.debug("updata successful");
		} catch (RuntimeException re) {
			log.error("updata failed", re);
			throw re;
		}
	}

	public void delete(Userbank persistentInstance) {
		log.debug("deleting Userbank instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}
	
//	public Userbank findByUserId(Integer id) {
//		log.debug("getting Userbank instance with id: " + id);
//		try {
//			Query query= getSession().createQuery( "from Userbank where userid='"+id+"'  and banknumbr like '%%' ");
//			List list = query.list();
//			if(list.size()!=0){
//				Userbank act=new Userbank();
//				act =(Userbank)list.get(0);
//				return act;
//			}else{
//					return null;
//					
//			}
//		} catch (RuntimeException re) {
//			log.error("get failed", re);
//			throw re;
//		}
//	}
	
	public Userbank findByUserBankId(Integer id) {
		log.debug("getting Userbank instance with id: " + id);
		try {
			String hql = " from Userbank where userbankid = '"+id+"'";
			List<Userbank> list  = getHibernateTemplate().find(hql);
			if(list!=null && list.size()>0){
				return list.get(0);
			}else{
				return null;
			}
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
	
	public Userbank findByUserId(Integer id) {
		log.debug("getting Userbank instance with id: " + id);
		try {
			String hql = " from Userbank where userid = '"+id+"'";
			List<Userbank> list  = getHibernateTemplate().find(hql);
			if(list!=null && list.size()>0){
				return list.get(0);
			}else{
				return null;
			}
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
	public List findByUserIdList(Integer id) {
		log.debug("getting Userbank instance with id: " + id);
		try {
			String hql = " from Userbank where userid = "+id+"";
			List<Userbank> list  = getHibernateTemplate().find(hql);
			
				return list;
			
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public Userbank findById(java.lang.Integer id) {
		log.debug("getting Userbank instance with id: " + id);
		try {
			Userbank instance = (Userbank) getHibernateTemplate().get(
					"dao.Userbank", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Userbank instance) {
		log.debug("finding Userbank instance by example");
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
		log.debug("finding Userbank instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Userbank as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByUserid(Object userid) {
		return findByProperty(USERID, userid);
	}

	public List findByBankname(Object bankname) {
		return findByProperty(BANKNAME, bankname);
	}

	public List findByBanknumbr(Object banknumbr) {
		return findByProperty(BANKNUMBR, banknumbr);
	}

	public List findByRemark(Object remark) {
		return findByProperty(REMARK, remark);
	}

	public List findByRemain(Object remain) {
		return findByProperty(REMAIN, remain);
	}

	public List findAll() {
		log.debug("finding all Userbank instances");
		try {
			String queryString = "from Userbank";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Userbank merge(Userbank detachedInstance) {
		log.debug("merging Userbank instance");
		try {
			Userbank result = (Userbank) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Userbank instance) {
		log.debug("attaching dirty Userbank instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Userbank instance) {
		log.debug("attaching clean Userbank instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static UserbankDAO getFromApplicationContext(ApplicationContext ctx) {
		return (UserbankDAO) ctx.getBean("UserbankDAO");
	}
}