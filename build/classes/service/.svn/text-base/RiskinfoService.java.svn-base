package service;

import java.util.List;

import dao.Riskinfo;
import dao.RiskinfoDAO;

public class RiskinfoService {
	Riskinfo riskinfo=new Riskinfo();
	RiskinfoDAO riskinfodao=new RiskinfoDAO();
	public Riskinfo getRiskinfo() {
		return riskinfo;
	}
	public void setRiskinfo(Riskinfo riskinfo) {
		this.riskinfo = riskinfo;
	}
	public RiskinfoDAO getRiskinfodao() {
		return riskinfodao;
	}
	public void setRiskinfodao(RiskinfoDAO riskinfodao) {
		this.riskinfodao = riskinfodao;
	}
	  
	
	//通过ID查询所有的riskinfo
	 public Riskinfo findRiskinfoById(Integer id){
		   return riskinfodao.findById(id);
	   }

	//查询所有
	 public List findAll(){
		   return riskinfodao.findAll();
	   }
	//更新
	   public void modify(Riskinfo vo){
		   
		   riskinfodao.update(vo);
	   }
         //删除
	   public void delete(Riskinfo del){
		   
		   riskinfodao.delete(del);
	   }
         //添加
	   public void add(Riskinfo riskinfo){
		   
		   riskinfodao.save(riskinfo);
		   
	   }
	   
	   
}
