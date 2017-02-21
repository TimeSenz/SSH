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
 * Records entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see dao.Records
 * @author MyEclipse Persistence Tools
 */

public class RecordsDAO extends HibernateDaoSupport {
	private static final Log log = LogFactory.getLog(RecordsDAO.class);
	// property constants
	public static final String TYPE = "type";
	public static final String INTOINFO = "intoinfo";
	public static final String OUTTOINFO = "outtoinfo";
	public static final String MONEY = "money";
	public static final String PAYTYPE = "paytype";
	public static final String PEOPLE = "people";
	public static final String REMARK = "remark";
	public static final String REMAIN = "remain";
	public static final String BIDID = "bidid";
	public static final String USERID = "userid";
	public static final String INTOACC = "intoacc";
	public static final String OUTACC = "outacc";

	protected void initDao() {
		// do nothing
	}
	
	public void save(Records transientInstance) {
		log.debug("saving Records instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Records persistentInstance) {
		log.debug("deleting Records instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}
	public void update(Records transientInstance) {
		log.debug("update Records instance");
		try {
			getHibernateTemplate().update(transientInstance);
			log.debug("update successful");
		} catch (RuntimeException re) {
			log.error("update failed", re);
			throw re;
		}
	}

	public Records findById(java.lang.Integer id) {
		log.debug("getting Records instance with id: " + id);
		try {
			Records instance = (Records) getHibernateTemplate().get(
					"dao.Records", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Records instance) {
		log.debug("finding Records instance by example");
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
		log.debug("finding Records instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Records as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByType(Object type) {
		return findByProperty(TYPE, type);
	}

	public List findByIntoinfo(Object intoinfo) {
		return findByProperty(INTOINFO, intoinfo);
	}

	public List findByOuttoinfo(Object outtoinfo) {
		return findByProperty(OUTTOINFO, outtoinfo);
	}

	public List findByMoney(Object money) {
		return findByProperty(MONEY, money);
	}

	public List findByPaytype(Object paytype) {
		return findByProperty(PAYTYPE, paytype);
	}

	public List findByPeople(Object people) {
		return findByProperty(PEOPLE, people);
	}

	public List findByRemark(Object remark) {
		return findByProperty(REMARK, remark);
	}

	public List findByRemain(Object remain) {
		return findByProperty(REMAIN, remain);
	}

	public List findByBidid(Object bidid) {
		return findByProperty(BIDID, bidid);
	}

	
	//分页
		public List<Records> findByUseridList(Object userid,int stratLine) {
			log.debug("finding all Bidinfo instances");
			try {
				String queryString =  "from Records where userid='"+userid+"'";
				Query queryObject = getSession().createQuery(queryString);
//				queryObject.setMaxResults(10);//取出10条记录
//				queryObject.setFirstResult(stratLine);//从  **条记录开始
				return queryObject.list();		
			} catch (RuntimeException re) {
				log.error("find all failed", re);
				throw re;
			}
		}
    //分页
	public List <Records> findByUserid(Object userid) {
		return findByProperty(USERID, userid);
	}
//	//合同开始的时间
//	public List findStarttime(Integer bidid,String Jname){
//		log.debug("finding all Records instances");
//		try {
//			String queryString = "select time from Records where bidid='"+bidid+"'and intoinfo='"+Jname+"'";
//			Query queryObject = getSession().createQuery(queryString);
//		
//			return queryObject.list();	
//		} catch (RuntimeException re) {
//			log.error("find all failed", re);
//			throw re;
//		}
//	}
//    //合同结束的时间
//	public List findTimeByBIdid(Integer bidid,String username) {
//		log.debug("finding all Records instances");
//		try {
//			String queryString = "select time from Records where bidid='"+bidid+"' and  intoinfo='"+username+"' order by time desc";
//			Query queryObject = getSession().createQuery(queryString);
//		
//			return queryObject.list();	
//		} catch (RuntimeException re) {
//			log.error("find all failed", re);
//			throw re;
//		}
//	}
	public List findByIntoacc(Object intoacc) {
		return findByProperty(INTOACC, intoacc);
	}

	public List findByOutacc(Object outacc) {
		return findByProperty(OUTACC, outacc);
	}

	public List findAll(int stratLine) {
		log.debug("finding all Records instances");
		try {
			String queryString = "from Records";
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setMaxResults(10);//取出10条记录
			queryObject.setFirstResult(stratLine);//从  **条记录开始
			return queryObject.list();	
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}
	/**
	 * 修改日期：2015-01-01
	 * 修改需求：带查询条件
	 * 修改人：贾凡
	 * 原来方法备份：
	 * 
		public List<Records> findAllByTime(int stratLine) {
		log.debug("finding all Records instances");
		try {
			String queryString = "from Records order by time desc ";
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setMaxResults(100);//取出10条记录
			queryObject.setFirstResult(stratLine);//从  **条记录开始
			return queryObject.list();	
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}
	 * 
	 * */
	public List<Records> findAllByTimeTow(String jsType,String jsPeople,String startTime,String endTime) {
		log.debug("finding all Records instances");
		try {
			String queryString = " from Records  where "
											//类型查询
											+ " type like '%"+jsType+"%' "
											//相关人查询(上标人)
									        + " and people like '%"+jsPeople+"%' "
									        //起始时间
									        + " and time between '"+startTime+"' "
									        //结束时间
									        + " and '"+endTime+"' order by time desc ";
			System.out.println("RecordsDAO------findAllByTime-----SQL-----"+queryString);
			Query queryObject = getSession().createQuery(queryString);
			return queryObject.list();	
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}
	public List<Records> findAllByTime(int stratLine,String jsType,String jsPeople,String startTime,String endTime) {
		log.debug("finding all Records instances");
		try {
			// from Records where type like '%%' and people like '%%' and time   between '2015-01-04 00:00:00' and '2015-1-05 23:59:59'  order by time desc 
//			if(startTime==""){
//				startTime="date_sub(now(), interval '30' day)";
//			}
//			if(endTime==""){
//				endTime="now()";
//			}
			String queryString = " from Records  where "
											//类型查询
											+ " type like '%"+jsType+"%' "
											//相关人查询(上标人)
									        + " and people like '%"+jsPeople+"%' "
									        //起始时间
									        + " and time between '"+startTime+"' "
									        //结束时间
									        + " and '"+endTime+"' order by time desc ";
			System.out.println("RecordsDAO------findAllByTime-----SQL-----"+queryString);
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setMaxResults(10);//取出10条记录
			queryObject.setFirstResult(stratLine);//从  **条记录开始
			return queryObject.list();	
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}
	
	
	public List earnMoney(int bidid,int userid) {
		log.debug("earnMoney all Userinfo instances");
		try {
			String queryString = "from Records where bidid="+bidid
					+" and userid="+userid
					+" and type='借款人还款' "
					+ "order by time desc";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("earnMoney all failed", re);
			throw re;
		}
	}
	//分页totalNum
	public List findTotalNum(){
		    Query query=getSession().createQuery( "from Records order by time desc");
			List list = query.list();
			return list;
			}
	public Records merge(Records detachedInstance) {
		log.debug("merging Records instance");
		try {
			Records result = (Records) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Records instance) {
		log.debug("attaching dirty Records instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Records instance) {
		log.debug("attaching clean Records instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static RecordsDAO getFromApplicationContext(ApplicationContext ctx) {
		return (RecordsDAO) ctx.getBean("RecordsDAO");
	}
}