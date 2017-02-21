package service;

import java.util.List;

import dao.Cusinfo;
import dao.CusinfoDAO;
import dao.Finance;

public class CusinfoService {
   CusinfoDAO  cusinfodao=new CusinfoDAO();

	//查询所有
	public List findAll(){
		   return cusinfodao.findAll();
	   }
	//通过ID查询所有的finance
    public Cusinfo findCusinfoById(Integer id){
		   return cusinfodao.findById(id);
	           }
    //删除
   	public void delete(Cusinfo del){
   		       cusinfodao.delete(del);
               }	
	//更新
	public void modify(Cusinfo vo){
		cusinfodao.update(vo);
	    }
	//添加
	public void add(Cusinfo cusinfo){
		    cusinfodao.save(cusinfo);
	    } 

  public CusinfoDAO getCusinfodao() {
	return cusinfodao;
   }
  public void setCusinfodao(CusinfoDAO cusinfodao) {
	this.cusinfodao = cusinfodao;
   }
}
