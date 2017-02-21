package action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;

import dao.Finance;
import dao.FinanceDAO;
import service.FinanceService;

public class FinanceAction {
	
	FinanceService financeservice=new FinanceService();
	private Finance finance=new Finance();
        FinanceDAO financedao=new FinanceDAO();
        private String login;
	private String password;
	int loginflag=0;
	public FinanceService getFinanceservice() {
		return financeservice;
	}
	public void setFinanceservice(FinanceService financeservice) {
		this.financeservice = financeservice;
	}
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
	public String getLogin() {
		return login;
	}
	public void setLogin(String login) {
		this.login = login;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getLoginflag() {
		return loginflag;
	}
	public void setLoginflag(int loginflag) {
		this.loginflag = loginflag;
	}
	
	
	//登陆
	public String login(){
		HttpServletRequest request = ServletActionContext.getRequest();
		List<Finance> list=(List<Finance>)financedao.findAll();
		ActionContext ac = ActionContext.getContext();
		Boolean jump=false;
		for(Finance vo:list){
			if(vo.getLogin().equals(login)&&vo.getPassword().equals(password))
			{
			    loginflag=1;
			    ac.getSession().put("finance",vo);
				ac.getSession().put("loginflag", "1");
		    	//System.out.println("登录成功");
		    	return "login";
			}else{
				ac.getSession().put("loginflag", "0");
				
			}
		}
		if(jump){
			return "login";
			
		}else{
			return "fail";
		}
	}
	
	//查询所有的finance
	List  financelist=new ArrayList();
	public List getFinancelist() {
		return financelist;
	}
	public void setFinancelist(List financelist) {
		this.financelist = financelist;
	}
	public String findAll(){
		HttpServletRequest request = ServletActionContext.getRequest();
		financelist=financeservice.findAll();
		return "findAll";
	}
	
	//删除
	public String deleteFinance(){
		HttpServletRequest request = ServletActionContext.getRequest();
		Integer id=Integer.parseInt(request.getParameter("id"));
		Finance del=financeservice.findFinanceById(id);
		financeservice.delete(del);
		return "delete";
	}
	
	//添加
	public String addFinance(){
	  financeservice.add(finance);
		return "add";
	} 
	
	//通过ID查询所有
	public String findById(){
		HttpServletRequest request = ServletActionContext.getRequest();
		Integer id=Integer.parseInt(request.getParameter("id"));
		finance=financeservice.findFinanceById(id);
		return "success";
	}
	
	//更新finance
	public String modify(){
		Finance vo=financeservice.findFinanceById(finance.getId());
		financeservice.modify(finance);
		return "success";
	}
}
