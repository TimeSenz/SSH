package service;

import java.util.List;

import dao.Finance;
import dao.FinanceDAO;

public class FinanceService {
	Finance finance=new Finance();
	FinanceDAO financedao=new FinanceDAO();
	public Finance getFinance() {
		return finance;
	}
	public void setFinance(Finance finance) {
		this.finance = finance;
	}
	public FinanceDAO getFinancedao() {
		return financedao;
	}
	public void setFinancedao(FinanceDAO financedao) {
		this.financedao = financedao;
	}
	
	//查询所有
	public List findAll(){
		   return financedao.findAll();
	   }

    //通过ID查询所有的finance
	public Finance findFinanceById(Integer id){
	           return financedao.findById(id);
           }
    //删除
	public void delete(Finance del){
		    financedao.delete(del);
            }	 
	//添加
	public void add(Finance finance){
		    financedao.save(finance);
	    } 
	//更新
	public void modify(Finance vo){
		    financedao.update(vo);
	    }

}
