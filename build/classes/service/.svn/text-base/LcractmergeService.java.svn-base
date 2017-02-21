package service;

import java.sql.Timestamp;

import dao.Lcract;
import dao.Lcractmerge;
import dao.LcractmergeDAO;

public class LcractmergeService {
	LcractmergeDAO lcractmergedao=new LcractmergeDAO();
	//根据id和时间更新状态
	public void updateState(Integer lcractmergeid){
		Lcractmerge lcr=(Lcractmerge)lcractmergedao.updateState(lcractmergeid).get(0);
		lcr.setState("已批准");
		lcractmergedao.update(lcr);
		
	}
	 //测试lcractmergeroot 
	public void affirmState(Integer lcractmergeid){
		Lcractmerge lcr=(Lcractmerge)lcractmergedao.updateState(lcractmergeid).get(0);
		lcr.setState("已确认");
		lcractmergedao.update(lcr);
		
	}	
	
	//findById
	public Lcractmerge findById(Integer id){
		return lcractmergedao.findById(id);
	}
	
	 //更新
    public void modify(Lcractmerge vo){
    	lcractmergedao.update(vo);
    }
	
	
	
	
	
	
	
	public LcractmergeDAO getLcractmergedao() {
		return lcractmergedao;
	}

	public void setLcractmergedao(LcractmergeDAO lcractmergedao) {
		this.lcractmergedao = lcractmergedao;
	}
}
