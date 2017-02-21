package action;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import service.CusinfoService;

import com.opensymphony.xwork2.ActionContext;

import dao.Cusinfo;
import dao.CusinfoDAO;
import dao.Finance;
public class CusinfoAction {
	CusinfoDAO cusinfodao=new CusinfoDAO();
	CusinfoService cusinfoservice=new CusinfoService();
	private Cusinfo cusinfo=new Cusinfo();
	private String login;
	private String password;
	int loginflag=0;
	//登陆
	public String login(){
		System.out.println("cusinfo_Login ***********************");
		HttpServletRequest request = ServletActionContext.getRequest();
		//List<Finance> list=(List<Finance>)financedao.findAll();
		List<Cusinfo>  list=(List<Cusinfo>)cusinfodao.findAll();
		ActionContext ac = ActionContext.getContext();
		Boolean jump=false;
		//for(Finance vo:list){
		  for(Cusinfo vo:list){
		   if(vo.getLogin().equals(login)&&vo.getPassword().equals(password))
			{
			    loginflag=1;
			    ac.getSession().put("cusinfo",vo);
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
	    //查询所有的cusinfo
		List  cusinfolist=new ArrayList();
		public String findAll(){
			cusinfolist=cusinfoservice.findAll();
			return "findAll";
		}
		//删除
		public String deleteCusinfo(){
			HttpServletRequest request = ServletActionContext.getRequest();
			Integer id=Integer.parseInt(request.getParameter("id"));
			Cusinfo del=cusinfoservice.findCusinfoById(id);
			cusinfoservice.delete(del);
			return "delete";
		}
		//通过ID查询所有
		public String findById(){
			HttpServletRequest request = ServletActionContext.getRequest();
			Integer id=Integer.parseInt(request.getParameter("id"));
			cusinfo=cusinfoservice.findCusinfoById(id);
			return "success";
		}
			
		//更新cusinfo
		public String modify(){
			Cusinfo vo=cusinfoservice.findCusinfoById(cusinfo.getId());
			cusinfoservice.modify(cusinfo);
			return "success";
		}
		
		//添加
		public String addCusinfo(){
			cusinfoservice.add(cusinfo);
			return "add";
		} 
		
	
	
	public List getCusinfolist() {
		return cusinfolist;
		}
	public void setCusinfolist(List cusinfolist) {
		this.cusinfolist = cusinfolist;
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
	public CusinfoDAO getCusinfodao() {
		return cusinfodao;
	}
	public void setCusinfodao(CusinfoDAO cusinfodao) {
		this.cusinfodao = cusinfodao;
	}
	public CusinfoService getCusinfoservice() {
		return cusinfoservice;
	}
	public void setCusinfoservice(CusinfoService cusinfoservice) {
		this.cusinfoservice = cusinfoservice;
	}
	public Cusinfo getCusinfo() {
		return cusinfo;
	}
	public void setCusinfo(Cusinfo cusinfo) {
		this.cusinfo = cusinfo;
	}
	
}
