package service;

import java.sql.Timestamp;

import dao.Lcract;
import dao.Lcractmerge;
import dao.LcractmergeDAO;

public class LcractmergeService {
	LcractmergeDAO lcractmergedao=new LcractmergeDAO();
	//����id��ʱ�����״̬
	public void updateState(Integer lcractmergeid){
		Lcractmerge lcr=(Lcractmerge)lcractmergedao.updateState(lcractmergeid).get(0);
		lcr.setState("����׼");
		lcractmergedao.update(lcr);
		
	}
	 //����lcractmergeroot 
	public void affirmState(Integer lcractmergeid){
		Lcractmerge lcr=(Lcractmerge)lcractmergedao.updateState(lcractmergeid).get(0);
		lcr.setState("��ȷ��");
		lcractmergedao.update(lcr);
		
	}	
	
	//findById
	public Lcractmerge findById(Integer id){
		return lcractmergedao.findById(id);
	}
	
	 //����
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
