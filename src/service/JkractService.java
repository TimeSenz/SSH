package service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import dao.BidinfoDAO;
import dao.Jkract;
import dao.JkractDAO;
import dao.LcractDAO;
import dao.Person_Phone;
import dao.UserinfoDAO;

public class JkractService {
	
	Jkract jkract=new Jkract();
	JkractDAO jkractdao=new JkractDAO();
	LcractDAO lcractdao=new LcractDAO();
	BidinfoDAO bidinfodao=new BidinfoDAO();
	UserinfoDAO userinfodao=new UserinfoDAO();
	Person_Phone Person_Phone=new Person_Phone();
	
	public void save(Jkract jkract){
		
		jkractdao.save(jkract);
	}
	//根据状态
    public List findByState(String state){
		
		return jkractdao.findByState(state);
	}
    //根据id查询
    public Jkract findById(Integer id){
    	
    	return jkractdao.findById(id);
    }
    //更新
    public void modify(Jkract vo){
    	 jkractdao.update(vo);
    }
    
    
    public Map findAllActlist(){
    	
   	 List lcr_allowed_list=lcractdao.findByState("已批准");
	 List lcr_not_list=lcractdao.findByState("未批准");
	 List lcr_confirm_list=lcractdao.findByState("已确认");
	 List jkr_allowed_list =jkractdao.findByState("已批准");
	 List jkr_not_list =jkractdao.findByState("未批准");
	 List jkr_confirm_list=jkractdao.findByState("已确认");
	 
	 Map map=new HashMap();
	 return map;
    	
    }
    //查询所有借款人信息
    public List<Jkract> findAllJKR(int stratLine){
    	List jkractList=new ArrayList();
    	
    	 for(Jkract jkr : jkractdao.findAll(stratLine)){
    		 if(bidinfodao.findById(jkr.getBidid()).getBidtype().equals("精")){
    			
    		 }else{
    			 Person_Phone Person_Phone=new Person_Phone();
        		 Person_Phone.setB(bidinfodao.findById(jkr.getBidid()));
        		 Person_Phone.setU(userinfodao.findById(bidinfodao.findById(jkr.getBidid()).getUserid()));
        		 jkractList.add(Person_Phone);
        		 Person_Phone=null;
    		 }
    		
    		 
		 }
    	 
		 return jkractList;
    }
    
	public Jkract getJkract() {
		return jkract;
	}
	public void setJkract(Jkract jkract) {
		this.jkract = jkract;
	}
	public JkractDAO getJkractdao() {
		return jkractdao;
	}
	public void setJkractdao(JkractDAO jkractdao) {
		this.jkractdao = jkractdao;
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
    
	
	
	

}
