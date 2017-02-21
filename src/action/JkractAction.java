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
		 * ��ҳ��ѯ
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
	 //finance root�ı�״̬
	 public String changeJkractState(){
		 HttpServletRequest request = ServletActionContext.getRequest();
		 String flag=request.getParameter("flag");
		 Jkract vo=jkractservice.findById(Integer.parseInt(request.getParameter("id")));
		 if(flag.equals("0")){
			 vo.setState("����׼");
			 jkractservice.modify(vo);
			 return "financeover";
		 }
		 else if(flag.equals("1")){
			 return "financenot";
		 }
		 else if(flag.equals("2")){
			 vo.setState("��ȷ��");
			 jkractservice.modify(vo);
			 return "rootover";
		 }
		 else if(flag.equals("3")){
			 vo.setState("δ��׼");
			 jkractservice.modify(vo);
			 return "rootnot";
		 }
		 return "changeJkractState";
	 }
	 
	 
	 
	 //��ѯ���н����
	 public String findAllJKR(){
//		 jkractList.clear();
		 
//		 for(Jkract jkr : jkractservice.findAll()){
//			 List list = new ArrayList(); 
//			 list.add(userinfoservice.findByid(bidinfoserice.findById(jkr.getBidid()).getUserid()));
//		
//	
//		// List list_tmp = new ArrayList(); //����һ��������ʱ��Ų��ظ�listԪ�ص�List���ϡ�
//		 for(Object obj:list){ 
//		      //���Ը�����Ҫ�����������ǿ��ת�͡�
//		    //��list�����ŵ���һ��User������ô����User u = (User) obj;
//			 Userinfo u = (Userinfo) obj;
//		      if(!jkractList.contains(obj)){ //ע��contains������ͨ��equals�������бȽϵ�������Ҫ�������Լ�����Ҫ���Ƿ���Ҫ��дlist���������equals������
//		    	  jkractList.add(u);//����������ǿ��ת�ͣ�������Ҫдlist_tmp.add(u);
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
			int stratLine =(currentPage-1)*pageSize;//��ǰҳ��֮ǰ������
			 jkractList=jkractservice.findAllJKR(stratLine);
			List totalList=jkractdao.findAllTotalNum();//������
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
