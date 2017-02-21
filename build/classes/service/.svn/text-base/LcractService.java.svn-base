package service;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import dao.BidinfoDAO;
import dao.Jkract;
import dao.Lcract;
import dao.LcractDAO;
import dao.Lcractmerge;
import dao.Person_Phone;
import dao.Root_Lcract;
import dao.Tempdata;
import dao.TempdataDAO;
import dao.UserinfoDAO;

public class LcractService {

	Lcract lcract=new Lcract();
	LcractDAO lcractdao=new LcractDAO();
	BidinfoDAO bidinfodao=new BidinfoDAO();
	UserinfoDAO userinfodao=new UserinfoDAO();
	TempdataDAO tempdatadao=new TempdataDAO();
	 Person_Phone Person_Phone=new Person_Phone();
	 
	 //测试lcractmerge 
	 //根据bid和time在lcract表中进行查找
	 public List findLcr(Integer bidid,Timestamp time,String state){
		 List lcrlist=new ArrayList();
		 for(Lcract lcr:lcractdao.findLcr(bidid,time,state)){
			 Root_Lcract root_lcract=new Root_Lcract();
	    	 root_lcract.setId(lcr.getId());
	    	 root_lcract.setLcrname(userinfodao.findById(lcr.getLcrid()).getName());
	    	 root_lcract.setMoney(lcr.getMoney());
	    	 root_lcract.setPayment("Fengfu");
	    	 root_lcract.setTime(lcr.getTime());
	    	 root_lcract.setRemark(lcr.getRemark());
	    	 root_lcract.setState(lcr.getState());
	    	 lcrlist.add(root_lcract);
	    	 root_lcract=null; 
		 } 
		 return lcrlist; 
	 }
	 //测试lcractmerge 
	 public void updateState(Integer lcractid){
		 
			Lcract lcr=(Lcract)lcractdao.updateState(lcractid).get(0);
			lcr.setState("已批准");
			lcractdao.update(lcr);
		}
	 //测试lcractmergeroot 
	 public void  affirmState(Integer lcractid){
		 
			Lcract lcr=(Lcract)lcractdao.updateState(lcractid).get(0);
			lcr.setState("已确认");
			lcractdao.update(lcr);
		}
		
	
	 
	//根据状态
	public List findByState(String state){
		
		return lcractdao.findByState(state);
	}
	//findById
	public Lcract findById(Integer id){
		return lcractdao.findById(id);
	}
	 //更新
    public void modify(Lcract vo){
    	lcractdao.update(vo);
    }
    
    //查询所有理财人信息
   
   public List<Person_Phone> findAllLCR(){
   	List lcractList=new ArrayList();
   	
   	 for(Tempdata lcr : tempdatadao.findAll()){
   		 Person_Phone Person_Phone=new Person_Phone();
   		 Person_Phone.setU(userinfodao.findById(lcr.getLcrid()));
   		 lcractList.add(Person_Phone);
   		 Person_Phone=null;
		 }
		 return lcractList;
   }
	public Lcract getLcract() {
		return lcract;
	}
	public void setLcract(Lcract lcract) {
		this.lcract = lcract;
	}
	public LcractDAO getLcractdao() {
		return lcractdao;
	}
	public void setLcractdao(LcractDAO lcractdao) {
		this.lcractdao = lcractdao;
	}
	public BidinfoDAO getBidinfodao() {
		return bidinfodao;
	}
	public void setBidinfodao(BidinfoDAO bidinfodao) {
		this.bidinfodao = bidinfodao;
	}
	public UserinfoDAO getUserinfodao() {
		return userinfodao;
	}
	public void setUserinfodao(UserinfoDAO userinfodao) {
		this.userinfodao = userinfodao;
	}
	public Person_Phone getPerson_Phone() {
		return Person_Phone;
	}
	public void setPerson_Phone(Person_Phone person_Phone) {
		Person_Phone = person_Phone;
	}
	public TempdataDAO getTempdatadao() {
		return tempdatadao;
	}
	public void setTempdatadao(TempdataDAO tempdatadao) {
		this.tempdatadao = tempdatadao;
	}
	

}
