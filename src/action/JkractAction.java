package action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import dao.Bidinfo;
import dao.Jkract;
import dao.JkractDAO;
import dao.Person_Phone;
import dao.Userinfo;
import service.BidinfoService;
import service.JkractService;
import service.UserinfoService;

public class JkractAction {
	Jkract jkract=new Jkract();
	JkractService jkractservice =new JkractService();
	BidinfoService bidinfoserice=new BidinfoService();
	UserinfoService userinfoservice=new UserinfoService();
	JkractDAO jkractdao=new JkractDAO();
	 List lcr_allowed_list=new ArrayList();
	 List lcr_not_list=new ArrayList();
	 List lcr_confirm_list=new ArrayList();
	 List jkr_allowed_list =new ArrayList();
	 List jkr_not_list =new ArrayList();
	 List jkr_confirm_list=new ArrayList();

	 List jkractList=new ArrayList();

	 
	 
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
	 //finance root改变状态
	 public String changeJkractState(){
		 HttpServletRequest request = ServletActionContext.getRequest();
		 String flag=request.getParameter("flag");
		 Jkract vo=jkractservice.findById(Integer.parseInt(request.getParameter("id")));
		 if(flag.equals("0")){
			 vo.setState("已批准");
			 jkractservice.modify(vo);
			 return "financeover";
		 }
		 else if(flag.equals("1")){
			 return "financenot";
		 }
		 else if(flag.equals("2")){
			 vo.setState("已确认");
			 jkractservice.modify(vo);
			 return "rootover";
		 }
		 else if(flag.equals("3")){
			 vo.setState("未批准");
			 jkractservice.modify(vo);
			 return "rootnot";
		 }
		 return "changeJkractState";
	 }
	 
	 
	 
	 //查询所有借款人
	 public String findAllJKR(){
//		 jkractList.clear();
		 
//		 for(Jkract jkr : jkractservice.findAll()){
//			 List list = new ArrayList(); 
//			 list.add(userinfoservice.findByid(bidinfoserice.findById(jkr.getBidid()).getUserid()));
//		
//	
//		// List list_tmp = new ArrayList(); //建立一个用于临时存放不重复list元素的List集合。
//		 for(Object obj:list){ 
//		      //可以根据需要，在这里加上强制转型。
//		    //如list里面存放的是一个User对象，那么加上User u = (User) obj;
//			 Userinfo u = (Userinfo) obj;
//		      if(!jkractList.contains(obj)){ //注意contains方法是通过equals方法进行比较的所以你要根据你自己的需要看是否需要重写list对象里面的equals方法。
//		    	  jkractList.add(u);//如果上面加了强制转型，这里需要写list_tmp.add(u);
//		      }
//		 }
//		 
//		 }
		 
		 
//		 for(Jkract jkr : jkractservice.findAll()){
//			
//			 
//			
//			 jkractList.add(userinfoservice.findByid(bidinfoserice.findById(jkr.getBidid()).getUserid()));
//		 
//		 }
		  
	

			if(currentPage==0){
				currentPage=1;
			}
			if(areaPage==0){
				areaPage=1;
			}
			int stratLine =(currentPage-1)*pageSize;//当前页面之前的条数
			 jkractList=jkractservice.findAllJKR(stratLine);
			List totalList=jkractdao.findAllTotalNum();//总数量
			if(totalList==null ||totalList.size()==0){
				totalPage= 0;
			}
			if(totalList.size()<=10){
				totalPage =1;
			}else{
				if(totalList.size()%10==0){
					totalPage =totalList.size()/10;
				}else{
					totalPage =totalList.size()/10+1;
				}
			}
			HttpServletRequest request=ServletActionContext.getRequest();
			request.setAttribute("totalPage",new Integer(totalPage));
			request.setAttribute("areaPage",new Integer(areaPage));
			request.setAttribute("currentPage",new Integer(currentPage));
		 return "success";
	 }
	public Jkract getJkract() {
		return jkract;
	}
	public void setJkract(Jkract jkract) {
		this.jkract = jkract;
	}
	public JkractService getJkractservice() {
		return jkractservice;
	}
	public void setJkractservice(JkractService jkractservice) {
		this.jkractservice = jkractservice;
	}
	public List getLcr_allowed_list() {
		return lcr_allowed_list;
	}
	public void setLcr_allowed_list(List lcr_allowed_list) {
		this.lcr_allowed_list = lcr_allowed_list;
	}
	public List getLcr_not_list() {
		return lcr_not_list;
	}
	public void setLcr_not_list(List lcr_not_list) {
		this.lcr_not_list = lcr_not_list;
	}
	public List getLcr_confirm_list() {
		return lcr_confirm_list;
	}
	public void setLcr_confirm_list(List lcr_confirm_list) {
		this.lcr_confirm_list = lcr_confirm_list;
	}
	public List getJkr_allowed_list() {
		return jkr_allowed_list;
	}
	public void setJkr_allowed_list(List jkr_allowed_list) {
		this.jkr_allowed_list = jkr_allowed_list;
	}
	public List getJkr_not_list() {
		return jkr_not_list;
	}
	public void setJkr_not_list(List jkr_not_list) {
		this.jkr_not_list = jkr_not_list;
	}
	public List getJkr_confirm_list() {
		return jkr_confirm_list;
	}
	public void setJkr_confirm_list(List jkr_confirm_list) {
		this.jkr_confirm_list = jkr_confirm_list;
	}
	public List getJkractList() {
		return jkractList;
	}
	public void setJkractList(List jkractList) {
		this.jkractList = jkractList;
	}
	public BidinfoService getBidinfoserice() {
		return bidinfoserice;
	}
	public void setBidinfoserice(BidinfoService bidinfoserice) {
		this.bidinfoserice = bidinfoserice;
	}
	public UserinfoService getUserinfoservice() {
		return userinfoservice;
	}
	public void setUserinfoservice(UserinfoService userinfoservice) {
		this.userinfoservice = userinfoservice;
	}
	public JkractDAO getJkractdao() {
		return jkractdao;
	}
	public void setJkractdao(JkractDAO jkractdao) {
		this.jkractdao = jkractdao;
	}
	
}
