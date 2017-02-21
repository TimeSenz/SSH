package action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import dao.Financeplan;

import service.FinanceplanService;

public class FinanceplanAction {
	
	FinanceplanService financeplanservice=new FinanceplanService();
	List financeplan_list=new ArrayList();
	Financeplan financeplan=new Financeplan();

	public String findAll(){
		
		financeplan_list=financeplanservice.findAll();
		return "success";
	}
	public String findById(){
		 HttpServletRequest request = ServletActionContext.getRequest();
		 Integer id=new Integer(request.getParameter("id"));
		 financeplan=financeplanservice.findById(id);
		 return "success";
	}
	
	
	public FinanceplanService getFinanceplanservice() {
		return financeplanservice;
	}

	public void setFinanceplanservice(FinanceplanService financeplanservice) {
		this.financeplanservice = financeplanservice;
	}
	public List getFinanceplan_list() {
		return financeplan_list;
	}
	public void setFinanceplan_list(List financeplan_list) {
		this.financeplan_list = financeplan_list;
	}
	public Financeplan getFinanceplan() {
		return financeplan;
	}
	public void setFinanceplan(Financeplan financeplan) {
		this.financeplan = financeplan;
	}
	

}
