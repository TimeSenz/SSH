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
 * Bidinfo entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see dao.Bidinfo
 * @author MyEclipse Persistence Tools
 */

public class BidinfoDAO extends HibernateDaoSupport {
	private static final Log log = LogFactory.getLog(BidinfoDAO.class);
	// property constants
	public static final String USERID = "userid";
	public static final String REASON = "reason";
	public static final String NUMBER = "number";
	public static final String DEADLINE = "deadline";
	public static final String STATE = "state";
	public static final String PROFIT = "profit";
	public static final String MONEY = "money";
	public static final String OVERDUE = "overdue";
	public static final String REPAYTYPE = "repaytype";
	public static final String BIDTYPE = "bidtype";
	public static final String PICTURE = "picture";
	public static final String REMARK = "remark";
	public static final String RATE = "rate";
	public static final String COMNAME = "comname";
	public static final String RISKINFO = "riskinfo";

	protected void initDao() {
		// do nothing
	}

	public void save(Bidinfo transientInstance) {
		log.debug("saving Bidinfo instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Bidinfo persistentInstance) {
		log.debug("deleting Bidinfo instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Bidinfo findById(java.lang.Integer id) {
		log.debug("getting Bidinfo instance with id: " + id);
		try {
			Bidinfo instance = (Bidinfo) getHibernateTemplate().get(
					"dao.Bidinfo", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	//散标基础检索
      public List<Bidinfo> findPaging(int currentPage ,int pageSize,String start,String end){
		
		
		log.debug("finding paging Bidinfo instances");
		try {
			
			String queryString = "from Bidinfo where created<'"+end+"' and created>'"+start+"' and bidtype!= '精' " +
					"and state!='未上标' and state!='已整合'";
			//System.out.println(queryString);
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setFirstResult((currentPage-1)*pageSize);
			queryObject.setMaxResults(pageSize);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

      //散标检索（标的类型、借款期限）
      public List<Bidinfo> findPaging(int currentPage ,int pageSize,String start,String end,String sqlFlag){
  		
  		
  		log.debug("finding paging Bidinfo instances");
  		try {
  			
  			String queryString = "from Bidinfo where created<'"+end+"' and created>'"+start+"' and bidtype!= '精' " +
  					"and state!='未上标' and state!='已整合' "+sqlFlag;
  			//System.out.println(queryString);
  			Query queryObject = getSession().createQuery(queryString);
  			queryObject.setFirstResult((currentPage-1)*pageSize);
  			queryObject.setMaxResults(pageSize);
  			return queryObject.list();
  		} catch (RuntimeException re) {
  			log.error("find all failed", re);
  			throw re;
  		}
  	}
      //实时更新分页查询bidlist
      public List<Bidinfo> selectBy(String bidtype,String loan,int stratLine){
		log.debug("finding all Bidinfo instances");
		try {
			String queryString =  "from Bidinfo where 1=1 "+bidtype+" "+loan+"and bidtype!= '精' " +
				"and state!='未上标' and state!='已整合'";
			//System.out.println("baituola"+queryString);
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setMaxResults(10);//取出10条记录
			queryObject.setFirstResult(stratLine);//从  **条记录开始
			return queryObject.list();			
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}
 	 //实时更新分页查询bidlist
  	public List findNum(String bidtype,String loan){
  		    Query query=getSession().createQuery("from Bidinfo where 1=1 "+bidtype+" "+loan+"and bidtype!= '精' " +
  					"and state!='未上标' and state!='已整合'");
  			List list = query.list();
  			return list;
  			}
  	
      public void update(Bidinfo transientInstance) {
  		log.debug("update Bidinfo instance");
  		try {
  			//System.out.println("标金额："+transientInstance.getMoney());
  		
  			getHibernateTemplate().update(transientInstance);
  			log.debug("update successful");
  		} catch (RuntimeException re) {
  			log.error("update failed", re);
  			throw re;
  		}
  	}

    //担保公司
  	public List<Bidinfo> findByGuacom(int stratLine,String guacom) {
  		log.debug("finding all Bidinfo instances by guacom");
  		try {
  			String queryString = "from Bidinfo where bidtype!='精'  and state!='已整合' and guacom='"+guacom+"'";
  			Query queryObject = getSession().createQuery(queryString);
  			queryObject.setMaxResults(10);//取出10条记录
  			queryObject.setFirstResult(stratLine);//从  **条记录开始
  			return queryObject.list();	
  		} catch (RuntimeException re) {
  			log.error("find all failed", re);
  			throw re;
  		}
  	}

  	public List findGuacomTotalNum(String guacom){
  	    Query query=getSession().createQuery(" from Bidinfo where bidtype!='精'  and state!='已整合'  and guacom='"+guacom+"'");
  		List list = query.list();
  		return list;
  		}
      
      
      
	public List findByExample(Bidinfo instance) {
		log.debug("finding Bidinfo instance by example");
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
		log.debug("finding Bidinfo instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Bidinfo as model where model."
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

	public List findByReason(Object reason) {
		return findByProperty(REASON, reason);
	}

	public List findByNumber(Object number) {
		return findByProperty(NUMBER, number);
	}

	public List findByDeadline(Object deadline) {
		return findByProperty(DEADLINE, deadline);
	}

	public List findByState(Object state) {
		return findByProperty(STATE, state);
	}
	public List findActBidByState(String state){
		log.debug("finding actbid  instances");
		try {
			String queryString = "from Bidinfo where bidtype!='精' and state='"+state+"'";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public List findByProfit(Object profit) {
		return findByProperty(PROFIT, profit);
	}

	public List findByMoney(Object money) {
		return findByProperty(MONEY, money);
	}

	public List findByOverdue(Object overdue) {
		return findByProperty(OVERDUE, overdue);
	}

	public List findByRepaytype(Object repaytype) {
		return findByProperty(REPAYTYPE, repaytype);
	}

	public List findByBidtype(Object bidtype) {
		return findByProperty(BIDTYPE, bidtype);
	}

	public List findByPicture(Object picture) {
		return findByProperty(PICTURE, picture);
	}

	public List findByRemark(Object remark) {
		return findByProperty(REMARK, remark);
	}

	public List findByRate(Object rate) {
		return findByProperty(RATE, rate);
	}
   //检索所有散标
	//方法一
	public List<Bidinfo> findAll(int stratLine) {
		log.debug("finding all Bidinfo instances");
		try {
			String queryString = "from Bidinfo where bidtype!='精'";
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setMaxResults(10);//取出10条记录
			queryObject.setFirstResult(stratLine);//从  **条记录开始
			return queryObject.list();	
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}
	//方法重构
	public List<Bidinfo> findAll(int stratLine,Riskinfo riskinfo) {
		log.debug("finding all Bidinfo instances");
		String queryString;
		try {
			if(riskinfo.getBidper()==0){
				
				queryString= "from Bidinfo where bidtype!='精' and riskinfo="+riskinfo.getId();
			}else{
				 queryString = "from Bidinfo where bidtype!='精'";
			}
			
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
	    Query query=getSession().createQuery(" from Bidinfo where bidtype!='精' ");
		List list = query.list();
		return list;
		}
	//分页
	public List<Bidinfo> findList(int stratLine) {
		log.debug("finding all Bidinfo instances");
		try {
			String queryString =  "from Bidinfo where bidtype!='精' and state!='未上标' and state!='已整合' " ;
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setMaxResults(10);//取出10条记录
			queryObject.setFirstResult(stratLine);//从  **条记录开始
			return queryObject.list();		
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}
	 //分页
	public List findTotalNum(){
		    Query query=getSession().createQuery(" from Bidinfo where bidtype!='精'  and state!='未上标' and state!='已整合' ");
			List list = query.list();
			return list;
			}
	//按标的状态查询“已上标”，“未上标”查询所有标
	public List findByState(String  state,int stratLine){
		log.debug("finding by state");
		try {
			String queryString="none";
			if(state.equals("none")){
				 queryString = "from Bidinfo where state!='未上标' and bidtype!='精'  and state!='已整合' ";
			}else{
				 queryString = "from Bidinfo where state='"+state+"' and bidtype!='精' and state!='已整合'  ";
			}
			//System.out.println(queryString);
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setMaxResults(10);//取出10条记录
			queryObject.setFirstResult(stratLine);//从  **条记录开始
			return queryObject.list();		
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}
	//重载
	public List findByState(String  state,int stratLine,Riskinfo riskinfo){
		log.debug("finding by state");
		try {
			String queryString="none";
			if(state.equals("none")){
				 queryString = "from Bidinfo where state!='未上标' and bidtype!='精'  and state!='已整合' ";
			}else{
				 queryString = "from Bidinfo where state='"+state+"' and bidtype!='精' and state!='已整合'  ";
			}
            if(riskinfo.getBidper()==0){
				
				queryString= queryString+" and riskinfo="+riskinfo.getId();
			}
			
			System.out.println(queryString);
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setMaxResults(10);//取出10条记录
			queryObject.setFirstResult(stratLine);//从  **条记录开始
			return queryObject.list();		
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}
	public List findBidNum(String state){
		String queryString="none";
		if(state.equals("none")){
			 queryString = "from Bidinfo where state!='未上标' and bidtype!='精' and state!='已整合'";
		}else{
			 queryString = "from Bidinfo where state='"+state+"' and bidtype!='精' and state!='已整合' ";
		}
	    Query query=getSession().createQuery(queryString);
		List list = query.list();
		return list;
		}
	
	public Bidinfo merge(Bidinfo detachedInstance) {
		log.debug("merging Bidinfo instance");
		try {
			Bidinfo result = (Bidinfo) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Bidinfo instance) {
		log.debug("attaching dirty Bidinfo instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Bidinfo instance) {
		log.debug("attaching clean Bidinfo instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static BidinfoDAO getFromApplicationContext(ApplicationContext ctx) {
		return (BidinfoDAO) ctx.getBean("BidinfoDAO");
	}
}