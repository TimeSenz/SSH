package action;

import java.io.IOException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import dao.Fenye;
import dao.Jkract;
import dao.Lcract;
import dao.Lcractmerge;
import dao.Person_Phone;
import dao.Tempdata;
import service.LcractService;
import service.LcractmergeService;
import util.HttpOut;
import util.JsonUtil;

public class LcractAction {

	LcractService lcractservice=new LcractService();
    List allowedlist=new ArrayList();
    List notallowedlist=new ArrayList();
    List confirmlist=new ArrayList();
    LcractmergeService lcractmergeservice=new LcractmergeService();
    List <Person_Phone> lcrlist=new ArrayList();
    
    
    
	/**
	 * 分页查询
	 * @return
	 */
	private int currentPage;
	private final int pageSize=10;
	private int totalPage;
	private int areaPage;
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public int getAreaPage() {
		return areaPage;
	}
	public void setAreaPage(int areaPage) {
		this.areaPage = areaPage;
	}
	public int getPageSize() {
		return pageSize;
	}
    //发送给所有理财人短信
    public String findAllLCR(){
    	
     	if(currentPage==0){
    		currentPage=1;
    	}
    	if(areaPage==0){
    		areaPage=1;
    	}
    	lcrlist=lcractservice.findAllLCR();
       for(int  i=0;i<lcrlist.size()-1;i++){
    	   for(int j=lcrlist.size()-1;j>i;j--){
    		   if(lcrlist.get(j).getU().getUserid().equals(lcrlist.get(i).getU().getUserid())){
    			   lcrlist.remove(j);
    		   }
    			   
    	   }
       }
       
       List l=new ArrayList();
       
       int min=(currentPage-1)*pageSize;
       int max=currentPage*pageSize;
       if(max>lcrlist.size()){
    	   max=lcrlist.size();
       }
       for(int i=min;i<max;i++){
    	   
    	   l.add(lcrlist.get(i));
       }
       lcrlist=l;
    
	if(lcrlist==null ||lcrlist.size()==0){
		totalPage= 0;
	}
	if(lcrlist.size()<=10){
		totalPage =1;
	}else{
		if(lcrlist.size()%10==0){
			totalPage =lcrlist.size()/10;
		}else{
			totalPage =lcrlist.size()/10+1;
		}
	}
	HttpServletRequest request=ServletActionContext.getRequest();
	request.setAttribute("totalPage",new Integer(totalPage));
	request.setAttribute("areaPage",new Integer(areaPage));
	request.setAttribute("currentPage",new Integer(currentPage));
		return "success";
		 
    }
    
    //根据状态查询
    public String findByState(){
    	
    	notallowedlist=lcractservice.findByState("未批准");
    	allowedlist=lcractservice.findByState("已批准");
    	confirmlist=lcractservice.findByState("已确认");
    	return "findByState";
    }
    
    //测试lcractmerge
    public void  findLcr(){
    	HttpServletRequest request = ServletActionContext.getRequest();
    	Integer bidid=Integer.parseInt(request.getParameter("bidid"));
    	Integer currentPageAjax=Integer.parseInt(request.getParameter("currentPageAjax"));
    	Integer pageSizeAjax=Integer.parseInt(request.getParameter("pageSizeAjax"));
    	String state=request.getParameter("state");
 		String gettime = request.getParameter("time");
 		SimpleDateFormat dft = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
 		 List lcrlist=new ArrayList();
 		List findlcrlist=new ArrayList();
 		dft.setLenient(false);
 		try {
 			Timestamp time = new Timestamp(dft.parse(gettime).getTime());
 			findlcrlist=lcractservice.findLcr(bidid,time,state);
 	    	//对lcrlist进行分页查询
 		
 			List fenyeList=new ArrayList();
			int min = (currentPageAjax-1)*pageSizeAjax;
			int max = (currentPageAjax)*pageSizeAjax;
			int listsize = findlcrlist.size();
			if(findlcrlist.size()==0){
				min = 0;
				max = 0;
			}
			if(findlcrlist.size()<max){
				max=findlcrlist.size();
			}
			for(int i=min;i<max;i++){
					fenyeList.add(findlcrlist.get(i));
			}
           
			
			Fenye f=new Fenye();
			f.setSize(findlcrlist.size());
			f.setMaxsize(max);
			
			lcrlist.add(fenyeList);
			lcrlist.add(f);
 			
 		    //System.out.println("sdfjsdkg"+lcrlist.size());
 			HttpOut ho=new HttpOut();
 	 		JsonUtil jutil=new JsonUtil();
 	 		
		} catch (Exception e) {
 			// TODO: handle exception
 		}
 		HttpOut ho=new HttpOut();
 		JsonUtil jutil=new JsonUtil();
 		ho.HttpOut(jutil.listToJson(lcrlist));
    	//return "success";
    }
    
    //finance root改变理财人状态
	 public String changeLcractState(){
		 HttpServletRequest request = ServletActionContext.getRequest();
		 String flag=request.getParameter("flag");
		// Lcract vo=lcractservice.findById(Integer.parseInt(request.getParameter("id")));
		 
		 
		 //测试lcractmerge
		 Lcractmerge mer=lcractmergeservice.findById(Integer.parseInt(request.getParameter("id")));
		 
		 Lcract lcr=lcractservice.findById(Integer.parseInt(mer.getParameter()));
		 
		 if(flag.equals("0")){
			 lcr.setState("已批准");
			 lcractservice.modify(lcr);
			 
			 mer.setState("已批准");
			 lcractmergeservice.modify(mer);
			 return "financeover";
		 }
		 
		 else if(flag.equals("1")){
			 return "financenot";
		 }
		 else if(flag.equals("2")){
			 lcr.setState("已确认");
			 lcractservice.modify(lcr);
			 
			 mer.setState("已确认");
			 lcractmergeservice.modify(mer);
			 return "rootover";
		 }
		 else if(flag.equals("3")){
			 lcr.setState("未批准");
			 lcractservice.modify(lcr);
			 
			 mer.setState("未批准");
			 lcractmergeservice.modify(mer);
			 return "rootnot";
		 }
		 return "changeJkractState";
	 }
	public LcractService getLcractservice() {
		return lcractservice;
	}

	public void setLcractservice(LcractService lcractservice) {
		this.lcractservice = lcractservice;
	}

	public List getAllowedlist() {
		return allowedlist;
	}

	public void setAllowedlist(List allowedlist) {
		this.allowedlist = allowedlist;
	}

	public List getNotallowedlist() {
		return notallowedlist;
	}

	public void setNotallowedlist(List notallowedlist) {
		this.notallowedlist = notallowedlist;
	}

	public List getConfirmlist() {
		return confirmlist;
	}

	public void setConfirmlist(List confirmlist) {
		this.confirmlist = confirmlist;
	}
	public List getLcrlist() {
		return lcrlist;
	}
	public void setLcrlist(List lcrlist) {
		this.lcrlist = lcrlist;
	}
	public LcractmergeService getLcractmergeservice() {
		return lcractmergeservice;
	}
	public void setLcractmergeservice(LcractmergeService lcractmergeservice) {
		this.lcractmergeservice = lcractmergeservice;
	}
	
	
}
