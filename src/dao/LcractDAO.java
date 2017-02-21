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
 * Lcract entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see dao.Lcract
 * @author MyEclipse Persistence Tools
 */
public class LcractDAO extends HibernateDaoSupport {
	private static final Log log = LogFactory.getLog(LcractDAO.class);
	// property constants
	public static final String LCRID = "lcrid";
	public static final String BIDID = "bidid";
	public static final String MONEY = "money";
	public static final String STATE = "state";
	public static final String ZCRJE = "zcrje";
	public static final String REMARK = "remark";
	public static final String USERBANKID = "userbankid";
	public static final String USERID = "lcrid";
	protected void initDao() {
		// do nothing
	}
	public void save(Lcract transientInstance) {
		log.debug("saving Lcract instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}
	public void delete(Lcract persistentInstance) {
		log.debug("deleting Lcract instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}
	public List<Lcract> findByUseridList(int userid,int stratLine,int listsize) {
		log.debug("finding all Bidinfo instances");
		try { 
			String queryString =  "from Lcract where lcrid= '"+userid+"'  and remark ='提现' order by time desc";
			//List<Lcract> asd = super.getHibernateTemplate().find(queryString);
			Query queryObject = getSession().createQuery(queryString);
			List<Lcract> lcrlist = queryObject.list(); 
//			System.out.println(asd.size());
//			for (int i = 0; i < asd.size(); i++) {
//				System.out.println(asd.get(i).getState());
//				System.out.println(asd.get(i).getState());
//			}
//			if(listsize<10){
//				queryObject.setMaxResults(10-listsize);
//			}else{
//				queryObject.setMaxResults(0);
//			}
//			queryObject.setFirstResult(stratLine);//从  **条记录开始
			return lcrlist;		
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			//re.printStackTrace();
			throw re;
		}
	}
	public Lcract findById(java.lang.Integer id) {
		log.debug("getting Lcract instance with id: " + id);
		try {
			Lcract instance = (Lcract) getHibernateTemplate().get("dao.Lcract",
					id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
	
	//测试lcractmerge
			public List<Lcract> updateState(Integer Lcractid ){
				 Query query=getSession().createQuery( "from Lcract where id='"+Lcractid+"' ");
					List list = query.list();
				
				return list;
			}
		
	
	//更新
	public void update(Lcract transientInstance) {
		log.debug("updating Lcract instance");
		try {
			getHibernateTemplate().update(transientInstance);
			log.debug("update successful");
		} catch (RuntimeException re) {
			log.error("update failed", re);
			throw re;
		}
	}
	//分页
	public List <Lcract> findByUserid(Object userid) {
		return findByProperty(USERID, userid);
	}
	//分页
    public List findPaging(int currentPage ,int pageSize,String start,String end){
		log.debug("finding paging Lcract instances");
		try {
			String queryString = "from Lcract where created<'"+end+"' and created>'"+start+"'";
			System.out.println(queryString);
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setFirstResult((currentPage-1)*pageSize);
			queryObject.setMaxResults(pageSize);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}
    
    
    //数据库查询第一次出现“未批准”的时间
    public String firstTime(Integer id){
    	   Query query=getSession().createQuery( "from Lcract where bidid='"+id+"' and state= '未批准' order by time ");
    				List list = query.list();
    				if(list.size()!=0){
    				Lcract act=new Lcract();
    				act =(Lcract)list.get(0);
    				String time=act.getTime().toString();
    				return time;}
    				else{
    					return null;
    					
    				}
    				
	}
    //数据库查询第一次出现的时间
    public String tTime(Integer id){
    	   Query query=getSession().createQuery( "from Lcract where bidid='"+id+"' order by time ");
    				List list = query.list();
    				if(list.size()!=0){
    				
    				
    				Lcract act=new Lcract();
    				act =(Lcract)list.get(0);
    				String time=act.getTime().toString();
    				return time;}
    				else{
    					return null;
    					
    				}
	}
    
    
    
    
    //分页优化test
  //根据状态检索
    public List<Lcract> findByState(String state, int stratLine){
		log.debug("finding all Lcract instances");
		try {
			String queryString = "from Lcract where state='"+state+"' order by time";
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
		    Query query=getSession().createQuery( "from Lcract where state='"+state+"' order by time");
			List list = query.list();
			return list;
			}
	
	
	
	
	
	//测试lcractmerge
	public List<Lcract> findLcr(Integer bidid,Timestamp time,String state){
		 Query query=getSession().createQuery( "from Lcract where bidid='"+bidid+"' and time='"+time+"'and state='"+state+"'");
			List list = query.list();
		
		return list;
	}
	
	
	
	
	
	
	public List findByExample(Lcract instance) {
		log.debug("finding Lcract instance by example");
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
		log.debug("finding Lcract instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Lcract as model where model."
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
	public List findAll() {
		log.debug("finding all Lcract instances");
		try {
			String queryString = "from Lcract";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}
	public Lcract merge(Lcract detachedInstance) {
		log.debug("merging Lcract instance");
		try {
			Lcract result = (Lcract) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}
	public void attachDirty(Lcract instance) {
		log.debug("attaching dirty Lcract instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
	public void attachClean(Lcract instance) {
		log.debug("attaching clean Lcract instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
	public static LcractDAO getFromApplicationContext(ApplicationContext ctx) {
		return (LcractDAO) ctx.getBean("LcractDAO");
	}
}