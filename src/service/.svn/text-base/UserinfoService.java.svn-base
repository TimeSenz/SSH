package service;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import org.springframework.web.context.request.RequestScope;

import com.opensymphony.xwork2.ActionContext;

import dao.Bidinfo;
import dao.Lcract;
import dao.LcractDAO;
import dao.Perrecords;
import dao.Records;
import dao.RecordsDAO;
import dao.UserbankDAO;
import dao.Userinfo;
import dao.UserinfoDAO;
public class UserinfoService {
	Userinfo userinfo=new Userinfo();
	UserinfoDAO userinfodao=new UserinfoDAO();
	RecordsDAO recordsdao=new RecordsDAO();
	Perrecords perrecords=new Perrecords();
	LcractDAO lcractdao = new LcractDAO();
	public List findAll(){
		return userinfodao.findAll();
	}
	
	public List findAllU(int stratLine){
		return userinfodao.findAllU(stratLine);
	}
	
	public List<Userinfo> selectfindAllUserInfo(String uid,String nickname,String phone,String name,String idcard,String zye){
		return userinfodao.selectfindAllUserInfo(uid,nickname,phone,name,idcard,zye);
	}
	
	
	
	
	public Userinfo findById(Integer id){
		return userinfodao.findById(id);
	}
	
	
	
	public Userinfo findByid(Integer id){
		return  userinfodao.findById(id);
	}
//	List<Userinfo> ulist = new ArrayList<Userinfo>();
//	ulist.add(userinfodao.findById(id));
//	return  ulist;
	
	
	
	public void save(Userinfo user){
		userinfodao.save(user);
	}
	public List findJkr(){
		return userinfodao.findByJkr("1");
	}
	//通过userinfo.name查询userinfo
	public List findByName(String name){
		   return   userinfodao.findByName(name);
	   }
	//更新
	public void modify(Userinfo vo){
		   userinfodao.update(vo);
	   }
	//删除
	public void delectUser(Integer id){
           userinfodao.delete(userinfodao.findById(id));		
	}
	//个人信息资金管理里的交易记录  (含stratLine)
	public List findAllRecords(int userid,int stratLine){
		List<Perrecords> perrecordslist=new ArrayList();
		//Records rec=(Records) recordsdao.findByUserid(userid,stratLine);
 		for(Records rec : recordsdao.findByUseridList(userid,stratLine)){
			Perrecords perrecords=new Perrecords();
				if(rec.getType().equals("借款人还款")){
					perrecords.setTime(rec.getTime());
					perrecords.setType("借款人还款");
					perrecords.setIncome(rec.getMoney());
					perrecords.setExpand(0.0);
					perrecords.setIntoacc(rec.getIntoacc());
					perrecords.setRemark(rec.getRemark());
					perrecordslist.add(perrecords);
				}
				else if(rec.getType().equals("提现")){
					perrecords.setTime(rec.getTime());
					perrecords.setType("提现");
					perrecords.setIncome(0.0);
					perrecords.setExpand(rec.getMoney());
					perrecords.setIntoacc(rec.getIntoacc());
					perrecords.setRemark(rec.getRemark());
					perrecords.setRemark("已放款");
					perrecordslist.add(perrecords);
				}
				else if(rec.getType().equals("为账户充值")){
					perrecords.setTime(rec.getTime());
					perrecords.setType("为账户充值");
					perrecords.setIncome(rec.getMoney());
					perrecords.setExpand(0.0);
					perrecords.setIntoacc(rec.getIntoacc());
					perrecords.setRemark("充值成功");
					perrecordslist.add(perrecords);
				}
				else if(rec.getType().equals("买标")){
					perrecords.setTime(rec.getTime());
					perrecords.setType("买标");
					perrecords.setIncome(0.0);
					perrecords.setExpand(rec.getMoney());
					perrecords.setIntoacc(rec.getOutacc());
					perrecords.setRemark(rec.getRemark());
					perrecordslist.add(perrecords);
				}else if(rec.getType().equals("注册送优惠券")){
					perrecords.setTime(rec.getTime());
					perrecords.setType("注册送优惠券");
					perrecords.setIncome(rec.getMoney());
					perrecords.setExpand(0.0);
					perrecords.setIntoacc(rec.getOutacc());
					perrecords.setRemark("注册送优惠券");
					perrecordslist.add(perrecords);
				}else if(rec.getType().equals("实名认证送优惠券")){
					perrecords.setTime(rec.getTime());
					perrecords.setType("实名认证送优惠券");
					perrecords.setIncome(rec.getMoney());
					perrecords.setExpand(0.0);
					perrecords.setIntoacc(rec.getOutacc());
					perrecords.setRemark("实名认证送优惠券");
					perrecordslist.add(perrecords);
				}else if(rec.getType().equals("初次优选计划送优惠券")){
					perrecords.setTime(rec.getTime());
					perrecords.setType("初次优选计划送优惠券");
					perrecords.setIncome(rec.getMoney());
					perrecords.setExpand(0.0);
					perrecords.setIntoacc(rec.getOutacc());
					perrecords.setRemark("初次优选计划送优惠券");
					perrecordslist.add(perrecords);
				}
		}
		for(Lcract lcr : lcractdao.findByUseridList(userid,stratLine,perrecordslist.size())){
			Perrecords perrecords=new Perrecords();
			if(lcr.getRemark().equals("提现")&&!lcr.getState().equals("已确认")){
				perrecords.setTime(lcr.getTime());
				perrecords.setType("提现");
				perrecords.setIncome(0.0);
				perrecords.setExpand(lcr.getMoney());
				//暂时为0.0
				ActionContext ac = ActionContext.getContext();
				//session修改
				//userinfo=(Userinfo) ac.getSession().get("userinfo");
				userinfo=userinfodao.findById(userid);
				perrecords.setIntoacc(userinfo.getXjye());
				//Records rec = (Records)recordsdao.findByUserid(lcr.getLcrid());
				//perrecords.setRemark(rec);
				perrecords.setRemark(lcr.getState());
				perrecordslist.add(perrecords);
			}
			//冒泡排序
			 for(int i=0;i<perrecordslist.size()-1;i++) {   
				 for(int j=1;j<perrecordslist.size()-i;j++) {    	
					 Perrecords a;;    
					//Date1.after(Date2),当Date1大于Date2时，返回TRUE，当小于等于时，返回false； 
					//Date1.before(Date2)，当Date1小于Date2时，返回TRUE，当大于等于时，返回false； 
					 if(perrecordslist.get(j-1).getTime().before(perrecordslist.get(j).getTime())) {   
						 //比较两个整数的大小         
						 a=perrecordslist.get(j-1);     
						 perrecordslist.set((j-1),perrecordslist.get(j));     
						 perrecordslist.set(j,a);   
						 }   
					 } 
				 }
				}
			
			

		

		return   perrecordslist;
	}
	//个人信息资金管理里的交易记录  (不含stratLine)
		public List findAllRecordsTotal(int userid){
			List<Perrecords> totalList=new ArrayList();
			for(Records rec : recordsdao.findByUserid(userid)){
			Perrecords perrecords=new Perrecords();
//			if(rec.getType().equals("借款人还款")){
//				perrecords.setTime(rec.getTime());
//				perrecords.setType("借款人还款");
//				perrecords.setIncome(rec.getMoney());
//				perrecords.setExpand(0.0);
//				perrecords.setIntoacc(rec.getIntoacc());
//				perrecords.setRemark(rec.getRemark());
//				totalList.add(perrecords);
//			}
//			else if(rec.getType().equals("提现")){
//				perrecords.setTime(rec.getTime());
//				perrecords.setType("提现");
//				perrecords.setIncome(0.0);
//				perrecords.setExpand(rec.getMoney());
//				perrecords.setIntoacc(rec.getIntoacc());
//				perrecords.setRemark(rec.getRemark());
//				totalList.add(perrecords);
//			}
//			else if(rec.getType().equals("为账户充值")){
//				perrecords.setTime(rec.getTime());
//				perrecords.setType("为账户充值");
//				perrecords.setIncome(rec.getMoney());
//				perrecords.setExpand(0.0);
//				perrecords.setIntoacc(rec.getIntoacc());
//				perrecords.setRemark(rec.getRemark());
//				totalList.add(perrecords);
//			}
//			else 
				if(rec.getType().equals("买标")){
				perrecords.setTime(rec.getTime());
				perrecords.setType("买标");
				perrecords.setIncome(0.0);
				perrecords.setExpand(rec.getMoney());
				perrecords.setIntoacc(rec.getOutacc());
				perrecords.setRemark(rec.getRemark());
				totalList.add(perrecords);
			}
			}
			for(Lcract lcr : lcractdao.findByUserid(userid)){
				Perrecords perrecords=new Perrecords();
				if(lcr.getRemark().equals("提现")){
					perrecords.setTime(lcr.getTime());
					perrecords.setType("提现");
					perrecords.setIncome(0.0);
					perrecords.setExpand(lcr.getMoney());
					//暂时为0.0
					
					perrecords.setIntoacc(0.0);
					perrecords.setRemark(lcr.getState());
					totalList.add(perrecords);
				}
			}
			return   totalList;
		}
		
		public List findAllRecordsTotalAjax(int currentPageAjax,int pageSizeAjax,String starTimeAjax,String endTimeAjax,int userid){
			List<Perrecords> totalList=new ArrayList();
			for(Records rec : recordsdao.findByUserid(userid)){
			Perrecords perrecords=new Perrecords();
				if(rec.getType().equals("买标")){
				perrecords.setTime(rec.getTime());
				perrecords.setType("买标");
				perrecords.setIncome(0.0);
				perrecords.setExpand(rec.getMoney());
				perrecords.setIntoacc(rec.getOutacc());
				perrecords.setRemark(rec.getRemark());
				totalList.add(perrecords);
			}
			}
			for(Lcract lcr : lcractdao.findByUserid(userid)){
				Perrecords perrecords=new Perrecords();
				if(lcr.getRemark().equals("提现")){
					perrecords.setTime(lcr.getTime());
					perrecords.setType("提现");
					perrecords.setIncome(0.0);
					perrecords.setExpand(lcr.getMoney());
					//暂时为0.0
					
					perrecords.setIntoacc(0.0);
					perrecords.setRemark(lcr.getState());
					totalList.add(perrecords);
				}
			}
			
			return   totalList;
		}
	
	
	
	
	
	
	
	
	public Userinfo getUserinfo() {
		return userinfo;
	}
	public void setUserinfo(Userinfo userinfo) {
		this.userinfo = userinfo;
	}
	public UserinfoDAO getUserinfodao() {
		return userinfodao;
	}
	public void setUserinfodao(UserinfoDAO userinfodao) {
		this.userinfodao = userinfodao;
	}
	
        public RecordsDAO getRecordsdao() {
		return recordsdao;
	}
	public void setRecordsdao(RecordsDAO recordsdao) {
		this.recordsdao = recordsdao;
	}
	public Perrecords getPerrecords() {
		return perrecords;
	}
	public void setPerrecords(Perrecords perrecords) {
		this.perrecords = perrecords;
	}
	public LcractDAO getLcractdao() {
		return lcractdao;
	}
	public void setLcractdao(LcractDAO lcractdao) {
		this.lcractdao = lcractdao;
	}


}
