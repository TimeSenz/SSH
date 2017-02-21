package action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;

import dao.Rootinfo;
import dao.RootinfoDAO;
import dao.Userinfo;
import service.RootinfoService;

public class RootinfoAction {

	RootinfoService rootinfoservice=new RootinfoService();
	RootinfoDAO rootinfodao=new RootinfoDAO();
	private Rootinfo rootinfo=new Rootinfo();
	private String login;
	private String password;
	int loginflag=0;
	public RootinfoService getRootinfoservice() {
		return rootinfoservice;
	}
	public void setRootinfoservice(RootinfoService rootinfoservice) {
		this.rootinfoservice = rootinfoservice;
	}
	public RootinfoDAO getRootinfodao() {
		return rootinfodao;
	}
	public void setRootinfodao(RootinfoDAO rootinfodao) {
		this.rootinfodao = rootinfodao;
	}
	public Rootinfo getRootinfo() {
		return rootinfo;
	}
	public void setRootinfo(Rootinfo rootinfo) {
		this.rootinfo = rootinfo;
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

	
	
	
	
	//µÇÂ½
	public String login(){
		HttpServletRequest request = ServletActionContext.getRequest();
		List<Rootinfo> list=(List<Rootinfo>)rootinfoservice.findAll();
		ActionContext ac = ActionContext.getContext();
		Boolean jump=false;
	//	System.out.println("rootAction.login() "+list.size());
		for(Rootinfo vo:list){
			if(vo.getLogin().equals(login)&&vo.getPassword().equals(password))
			{
			    loginflag=1;
			    ac.getSession().put("rootinfo",vo);
				ac.getSession().put("loginflag", "root");
		    	//System.out.println("rootÓÃ»§µÇÂ¼³É¹¦");
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
	
	
	
	
	//ÐÞ¸ÄÃÜÂë
    private String newpassword;
    public String getNewpassword() {
		return newpassword;
	}
	public void setNewpassword(String newpassword) {
		this.newpassword = newpassword;
	}

	//ÐÞ¸ÄÃÜÂë
	public String modify(){
    	//HttpServletRequest request = ServletActionContext.getRequest();
    	ActionContext ac = ActionContext.getContext();
    	//Rootinfo vo=(Rootinfo)request.getSession().getAttribute("rootinfo");
    	Rootinfo vo=(Rootinfo) ac.getSession().get("rootinfo");
        System.out.println("new Password  "+newpassword);
    	//Rootinfo rootlist=(Rootinfo)rootinfoservice.findRootById(vo.getId());
        vo.setPassword(newpassword);
    	rootinfoservice.modifyRoot(vo);
    	
    	return  "modify";
    }
	
	
	


	

}
