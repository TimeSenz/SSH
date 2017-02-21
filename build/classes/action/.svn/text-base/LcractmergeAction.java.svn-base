package action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import dao.Bidinfo;
import dao.Lcract;
import dao.LcractmergeDAO;
import dao.Userinfo;
import service.BidinfoService;
import service.LcractService;
import service.LcractmergeService;
import service.RootactService;
import service.UserinfoService;
import util.HttpOut;
import util.JsonUtil;

public class LcractmergeAction {
	
	LcractmergeService lcractmergeservice=new LcractmergeService();
 	LcractmergeDAO lcractmergedao=new LcractmergeDAO();
 	LcractService  lcractservice=new LcractService();
 	RootactService rootactservice=new RootactService();
 	BidinfoService bidinfoservice=new BidinfoService();
 	UserinfoService userinfoservice=new UserinfoService();
 	
 	//finance
 	public String confirmLcr(){
    	HttpServletRequest request = ServletActionContext.getRequest();
    	String lcractidall=request.getParameter("lcractid");
    	 String []ba= lcractidall.split("#");
	     for(int i=1;i<ba.length;i++){
	    	lcractservice.updateState(new Integer(ba[i]));
	     }
    	String flag=request.getParameter("flag");
    	Integer lcractmergeid=Integer.parseInt(request.getParameter("lcractmergeId"));
    	if(flag.equals("true")){
    		lcractmergeservice.updateState(lcractmergeid);	
    	}
    	HttpOut ho=new HttpOut();
    	ho.HttpOut("ok");
    	return "success";
    }
 	
 	
 	//root
 	public String affirmLcr(){
    	HttpServletRequest request = ServletActionContext.getRequest();
    	String lcractidall=request.getParameter("lcractid");
    	 String []ba= lcractidall.split("#");
	     for(int i=1;i<ba.length;i++){
	    	lcractservice.affirmState(new Integer(ba[i]));
	    	Lcract lcract=lcractservice.findById(new Integer(ba[i]));
	    	Bidinfo bidinfo=bidinfoservice.findById(lcract.getBidid());
	    	Userinfo userinfo=userinfoservice.findById(lcract.getLcrid());	
	    	rootactservice.insertRecords(lcract, bidinfo, userinfo);
	    	
	     }
    	String flag=request.getParameter("flag");
    	Integer lcractmergeid=Integer.parseInt(request.getParameter("lcractmergeId"));
    	if(flag.equals("true")){
    		lcractmergeservice.affirmState(lcractmergeid);	
    	}
    	HttpOut ho=new HttpOut();
    	ho.HttpOut("ok");
    	return "success";
    }	
 	
 	
 	
 	
 	
 	
	public LcractmergeService getLcractmergeservice() {
		return lcractmergeservice;
	}
	public void setLcractmergeservice(LcractmergeService lcractmergeservice) {
		this.lcractmergeservice = lcractmergeservice;
	}
	public LcractmergeDAO getLcractmergedao() {
		return lcractmergedao;
	}
	public void setLcractmergedao(LcractmergeDAO lcractmergedao) {
		this.lcractmergedao = lcractmergedao;
	}
	public LcractService getLcractservice() {
		return lcractservice;
	}
	public void setLcractservice(LcractService lcractservice) {
		this.lcractservice = lcractservice;
	}
	public RootactService getRootactservice() {
		return rootactservice;
	}
	public void setRootactservice(RootactService rootactservice) {
		this.rootactservice = rootactservice;
	}
	public BidinfoService getBidinfoservice() {
		return bidinfoservice;
	}
	public void setBidinfoservice(BidinfoService bidinfoservice) {
		this.bidinfoservice = bidinfoservice;
	}
	public UserinfoService getUserinfoservice() {
		return userinfoservice;
	}
	public void setUserinfoservice(UserinfoService userinfoservice) {
		this.userinfoservice = userinfoservice;
	}
}
