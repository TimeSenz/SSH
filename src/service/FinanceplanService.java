package service;

import java.util.List;

import dao.Financeplan;
import dao.FinanceplanDAO;

public class FinanceplanService {
	
	FinanceplanDAO financeplandao=new FinanceplanDAO();
	
	public List findAll(){
		
		return financeplandao.findAll();
	}
	
	public Financeplan findById(Integer id){
		return financeplandao.findById(id);
	}

	public FinanceplanDAO getFinanceplacdao() {
		return financeplandao;
	}

	public void setFinanceplacdao(FinanceplanDAO financeplacdao) {
		this.financeplandao = financeplacdao;
	}

	public FinanceplanDAO getFinanceplandao() {
		return financeplandao;
	}

	public void setFinanceplandao(FinanceplanDAO financeplandao) {
		this.financeplandao = financeplandao;
	}
	
	

}
