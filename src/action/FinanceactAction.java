package action;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import dao.BidinfoDAO;
import dao.JkractDAO;
import dao.LcractDAO;
import dao.LcractmergeDAO;
import service.RootactService;
public class FinanceactAction {
	
	RootactService rootactservice=new RootactService();
	JkractDAO jkractdao=new JkractDAO();
	LcractDAO lcractdao=new LcractDAO();
	//�����
	List jkr_allowed_list =new ArrayList();
    List jkr_not_list=new ArrayList();
    List jkr_confirm_list=new ArrayList();
    //�����
    List lcr_allowed_list =new ArrayList();
    List lcr_not_list=new ArrayList();
    List lcr_confirm_list=new ArrayList();
	private int currentPage;//��ǰҳ��
	private final int pageSize=10;//ÿҳ��ʾ�ļ�¼����
	private int totalPage; //��ҳ��
	private int areaPage;  //
	LcractmergeDAO lcractmergedao=new LcractmergeDAO();
	
	//�����  ����׼��
	public String financeAct(){
		if(currentPage==0){
			currentPage=1;
		}
		if(areaPage==0){
			areaPage=1;
		}
		int stratLine =(currentPage-1)*pageSize;//��ǰҳ��֮ǰ������
		jkr_allowed_list=rootactservice.findJkractlist("����׼",stratLine);
		List jatotalList=jkractdao.findTotalNum("����׼");
		if(jatotalList==null||jatotalList.size()==0){
			totalPage=0;
		}
		if(jatotalList.size()<=10){
			totalPage=1;
		}else{
			if(jatotalList.size()%10==0){
				totalPage=jatotalList.size()/10;
			}else{
				totalPage=jatotalList.size()/10+1;
			}
		}
		HttpServletRequest request=ServletActionContext.getRequest();
		request.setAttribute("totalPage",new Integer(totalPage));
		request.setAttribute("areaPage",new Integer(areaPage));
		request.setAttribute("currentPage",new Integer(currentPage));
		return "success";
	}
	//�����   ��ȷ�ϱ�
	public String financeActjc(){
		if(currentPage==0){
			currentPage=1;
		}
		if(areaPage==0){
			areaPage=1;
		}
		int stratLine =(currentPage-1)*pageSize;//��ǰҳ��֮ǰ������
		System.out.println("ɶ��"+stratLine);
		jkr_confirm_list=rootactservice.findJkractlist("��ȷ��",stratLine);
		System.out.println("N�ޣ�"+jkr_confirm_list.size());
		List jctotalList=jkractdao.findTotalNum("��ȷ��");//������
		
		if(jctotalList==null ||jctotalList.size()==0){
			totalPage= 0;
		}
		if(jctotalList.size()<=10){
			totalPage =1;
		}else{
			if(jctotalList.size()%10==0){
				totalPage =jctotalList.size()/10;
			}else{
				totalPage =jctotalList.size()/10+1;
			}
		}
		HttpServletRequest request=ServletActionContext.getRequest();
		request.setAttribute("totalPage",new Integer(totalPage));
		request.setAttribute("areaPage",new Integer(areaPage));
		request.setAttribute("currentPage",new Integer(currentPage));
		return "success";
	}
	//�����  δ��׼��
	public String financeActjn(){
		if(currentPage==0){
			currentPage=1;
		}
		if(areaPage==0){
			areaPage=1;
		}
		int stratLine =(currentPage-1)*pageSize;//��ǰҳ��֮ǰ������
		jkr_not_list=rootactservice.findJkractlist("δ��׼",stratLine);
		List jntotalList=jkractdao.findTotalNum("δ��׼");
		//System.out.println("hgdsfuigvdfjkgodfui"+jntotalList.size());
		if(jntotalList==null||jntotalList.size()==0){
			totalPage=1;
		}
		if(jntotalList.size()<=10){
			totalPage=1;
		}else{
			if(jntotalList.size()%10==0){
				totalPage=jntotalList.size()/10;
			}else{
				totalPage=jntotalList.size()/10+1;
			}
		}
		HttpServletRequest request=ServletActionContext.getRequest();
		request.setAttribute("totalPage",new Integer(totalPage));
		request.setAttribute("areaPage",new Integer(areaPage));
		request.setAttribute("currentPage",new Integer(currentPage));
		//�����
		//jkr_allowed_list=rootactservice.findJkractlist("����׼");
		//jkr_not_list=rootactservice.findJkractlist("δ��׼");		
//		jkr_confirm_list=rootactservice.findJkractlist("��ȷ��");
		//�����
//	    lcr_allowed_list =rootactservice.findLcractList("����׼");
//	    lcr_not_list=rootactservice.findLcractList("δ��׼");
//	    lcr_confirm_list=rootactservice.findLcractList("��ȷ��");
		return "success";
	}
	//��ҳ�Ż�test
	//�����  ����׼��
	public String financeActla(){
		if(currentPage==0){
			currentPage=1;
		}
		if(areaPage==0){
			areaPage=1;
		}
		int stratLine =(currentPage-1)*pageSize;//��ǰҳ��֮ǰ������
		lcr_allowed_list =rootactservice.findLcractList("����׼",stratLine);
		List latotalList=lcractmergedao.findTotalNum("����׼");
		//System.out.println("latotalList++++++++="+latotalList.size());
		//System.out.println("lcr_allowed_list++++++++="+lcr_allowed_list.size());
		if(latotalList==null||latotalList.size()==0){
			totalPage=1;
		}
		if(latotalList.size()<=10){
			totalPage=1;
		}else{
			if(latotalList.size()%10==0){
				totalPage=latotalList.size()/10;
			}else{
				totalPage=latotalList.size()/10+1;
			}
		}
		HttpServletRequest request=ServletActionContext.getRequest();
		request.setAttribute("totalPage",new Integer(totalPage));
		request.setAttribute("areaPage",new Integer(areaPage));
		request.setAttribute("currentPage",new Integer(currentPage));
		//Map map=new HashMap();
		return "success";
	}
	//�����  δ��׼��
	public String financeActln(){
		if(currentPage==0){
			currentPage=1;
		}
		if(areaPage==0){
			areaPage=1;
		}
		int stratLine =(currentPage-1)*pageSize;//��ǰҳ��֮ǰ������
		lcr_not_list=rootactservice.findLcractList("δ��׼",stratLine);
		List lntotalList=lcractmergedao.findTotalNum("δ��׼");
		if(lntotalList==null||lntotalList.size()==0){
			totalPage=1;
		}
		if(lntotalList.size()<=10){
			totalPage=1;
		}else{
			if(lntotalList.size()%10==0){
				totalPage=lntotalList.size()/10;
			}else{
				totalPage=lntotalList.size()/10+1;
			}
		}
		HttpServletRequest request=ServletActionContext.getRequest();
		request.setAttribute("totalPage",new Integer(totalPage));
		request.setAttribute("areaPage",new Integer(areaPage));
		request.setAttribute("currentPage",new Integer(currentPage));
		return "success";
	}
	
	//�����  ��ȷ�ϱ�
	public String financeActlc(){
		if(currentPage==0){
			currentPage=1;
		}
		if(areaPage==0){
			areaPage=1;
		}
		int stratLine =(currentPage-1)*pageSize;//��ǰҳ��֮ǰ������
		 lcr_confirm_list=rootactservice.findLcractList("��ȷ��",stratLine);
		 List lctotalList=lcractmergedao.findTotalNum("��ȷ��");
		 if(lctotalList==null||lctotalList.size()==0){
			 totalPage=1;
		 }
		 if(lctotalList.size()<=10){
			 totalPage=1;
		 }else{
			 if(lctotalList.size()%10==0){
				 totalPage=lctotalList.size()/10;
			 }else{
				 totalPage=lctotalList.size()/10+1;
			 }
		 }
		HttpServletRequest request=ServletActionContext.getRequest();
		request.setAttribute("totalPage",new Integer(totalPage));
		request.setAttribute("areaPage",new Integer(areaPage));
		request.setAttribute("currentPage",new Integer(currentPage));
		return "success";
	}
	public RootactService getRootactservice() {
		return rootactservice;
	}
	public void setRootactservice(RootactService rootactservice) {
		this.rootactservice = rootactservice;
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
	public JkractDAO getJkractdao() {
		return jkractdao;
	}
	public void setJkractdao(JkractDAO jkractdao) {
		this.jkractdao = jkractdao;
	}
	public LcractDAO getLcractdao() {
		return lcractdao;
	}
	public void setLcractdao(LcractDAO lcractdao) {
		this.lcractdao = lcractdao;
	}    
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
	public int getPageSize() {
		return pageSize;
	}
	public int getAreaPage() {
		return areaPage;
	}
	public void setAreaPage(int areaPage) {
		this.areaPage = areaPage;
	}
	public LcractmergeDAO getLcractmergedao() {
		return lcractmergedao;
	}
	public void setLcractmergedao(LcractmergeDAO lcractmergedao) {
		this.lcractmergedao = lcractmergedao;
	}
	
}