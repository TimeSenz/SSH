package action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;

import dao.Riskinfo;
import dao.RiskinfoDAO;
import service.RiskinfoService;

public class RiskinfoAction {

	RiskinfoService riskinfoservice=new RiskinfoService();
	private Riskinfo riskinfo=new Riskinfo();
	RiskinfoDAO riskinfodao=new RiskinfoDAO();
	private String  login;
	private String   password;
	int loginflag=0;
	public RiskinfoService getRiskinfoservice() {
		return riskinfoservice;
	}
	public void setRiskinfoservice(RiskinfoService riskinfoservice) {
		this.riskinfoservice = riskinfoservice;
	}
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
	
	
	public List getRiskinfolist() {
		return riskinfolist;
	}
	public void setRiskinfolist(List riskinfolist) {
		this.riskinfolist = riskinfolist;
	}
	//登陆
	public String login(){
		HttpServletRequest request = ServletActionContext.getRequest();
		List riskinfolist=riskinfodao.findAll();
		List<Riskinfo> list=(List<Riskinfo>)riskinfodao.findAll();
		ActionContext ac = ActionContext.getContext();
		login=request.getParameter("login");
		password=request.getParameter("password");
		request.setAttribute("a", request.getParameter("a"));
		Boolean jump=false;
		for(Riskinfo vo:list){
			if(vo.getLogin().equals(login)&&vo.getPassword().equals(password))
			{
				  
				    loginflag=1;
				    ac.getSession().put("riskinfo",vo);
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
	
	//查询所有的riskinfo
	List  riskinfolist=new ArrayList();
	public String findAll(){
		HttpServletRequest request = ServletActionContext.getRequest();
		riskinfolist=riskinfoservice.findAll();
		return "findAll";
	}
	
	
	//通过ID查询所有
	public String findById(){
		HttpServletRequest request = ServletActionContext.getRequest();
		Integer id=Integer.parseInt(request.getParameter("id"));
		riskinfo=riskinfoservice.findRiskinfoById(id);
		
		return "success";
	}
	
	
	
	//更新riskinfo
	public String modify(){
		Riskinfo vo=riskinfoservice.findRiskinfoById(riskinfo.getId());
		//System.out.println("riskinfo:"+riskinfo.getLogin()+"    "+riskinfo.getPassword());
		riskinfoservice.modify(riskinfo);
		//System.out.println("***********password:"+riskinfo.getPassword());
		return "success";
	}


	//删除
	public String deleteRiskinfo(){
		HttpServletRequest request = ServletActionContext.getRequest();
		Integer id=Integer.parseInt(request.getParameter("id"));
		Riskinfo del=riskinfoservice.findRiskinfoById(id);
		riskinfoservice.delete(del);
		return "delete";
		
		
	}
	
	
	//添加
	public String addRiskinfo(){
	  riskinfoservice.add(riskinfo);
		return "add";
	} 	
}
