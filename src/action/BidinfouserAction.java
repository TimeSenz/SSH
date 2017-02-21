package action;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;
import org.hibernate.type.BagType;
import org.springframework.stereotype.Controller;
import com.opensymphony.xwork2.ActionContext;
import dao.BidinfoDAO;
import service.BidinfouserService;
public class BidinfouserAction {
    BidinfouserService bidinfouserservice =new BidinfouserService();
    BidinfoDAO bidinfodao=new BidinfoDAO();
    List BidList=new ArrayList();
	String bidtype;
	String loan;
	String grade;
	/**
	 * ��ҳ��ѯ
	 */
	private int currentPage;//��ǰҳ��
	private final int pageSize=10;//ÿҳ��ʾ�ļ�¼����
	private int totalPage; //��ҳ��
	private int areaPage;  //1.2.3.4.5
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
   public BidinfoDAO getBidinfodao() {
		return bidinfodao;
	}
	public void setBidinfodao(BidinfoDAO bidinfodao) {
		this.bidinfodao = bidinfodao;
	}
	//��ѯbidlist
	public String findAllBidinfo(){
		/**
		 * ��ҳ
		 */
		if(currentPage==0){
			currentPage=1;
		}
		if(areaPage==0){
			areaPage=1;
		}
		int stratLine =(currentPage-1)*pageSize;//��ǰҳ��֮ǰ������
		BidList=bidinfouserservice.findAllBidinfo(stratLine);
		List totalList=bidinfodao.findTotalNum();//������
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
		return "findAllBidinfo";
	}
	//ʵʱ���²�ѯbidlist
	public String modifyBidList( ){
		//��õ�ѡ��ť��ֵ
		HttpServletRequest request=ServletActionContext.getRequest();
		String bi =  request.getParameter("bidtype");
		String lo =  request.getParameter("loan");
		String gr =  request.getParameter("grade");
		
		if(bidtype==null||bidtype.equals("unlimited")){
			bidtype="";
		}
//		else{
//			bidtype="and bidtype='"+bidtype+"'";
//		}
//		
//		value="��" 
//			value="��"
//				value="ծ"
//					value="��"
//		
		else if(bidtype.equals("1")){
			bidtype="and bidtype='��'";
		}
		else if(bidtype.equals("2")){
			bidtype="and bidtype='��'";
		}
		else if(bidtype.equals("3")){
			bidtype="and bidtype='ծ'";
		}
		else if(bidtype.equals("4")){
			bidtype="and bidtype='��'";
		}
		
		if(loan==null||loan.equals("unlimited")){
			loan="";
		}
		else {
			if(loan.equals("24")){
			loan="and deadline >'"+loan+"'";
		}
//		else {
//			String str=loan;
//			String a=str.substring(0,str.indexOf("&"));
//			String b=str.substring(str.indexOf("&")+1,str.indexOf("#"));
//			loan="and deadline<='"+b+"'and deadline>='"+a+"'";
//		}
			else if(loan.equals("1")){
				loan="and deadline<='"+6+"'and deadline>='"+3+"'";
			}
			else if(loan.equals("2")){
				loan="and deadline<='"+15+"'and deadline>='"+9+"'";
			}
			else if(loan.equals("3")){
				loan="and deadline<='"+24+"'and deadline>='"+18+"'";
			}
		}
		if(grade.equals("unlimited")){
			grade="";
		}
        /**
         * ��ҳ��ѯ
         */
        if(currentPage==0){
        	currentPage=1;
        }  
		if(areaPage==0){
			areaPage=1;
		}
		int stratLine=(currentPage-1)*pageSize;
		BidList=bidinfouserservice.findByInfo(bidtype,loan,grade,stratLine);
		List totalList=bidinfodao.findNum(bidtype,loan);
		if(totalList==null||totalList.size()==0){
			totalPage=0;
		}
		if(totalList.size()<=10){
			totalPage=1;
		}else{
			if(totalList.size()%10==0){
				totalPage=totalList.size()/10;
			}
			else{
                totalPage=totalList.size()/10+1;				
			}
		}
	
		request.setAttribute("totalPage",new Integer(totalPage));
		request.setAttribute("areaPage", new Integer(areaPage));
		request.setAttribute("currentPage", new Integer(currentPage));
		//����ѡ��ť��ֵ����ȥ
		request.setAttribute("bidtype",bi);
		request.setAttribute("loan", lo);
		request.setAttribute("grade", gr);
		//System.out.println(" +"+currentPage+areaPage);
//		ActionContext ac = ActionContext.getContext();
//		ac.getSession().put("bidtype", bidtype);
		return "modifyBidList";
	}

	public BidinfouserService getBidinfouserservice() {
		return bidinfouserservice;
	}
	public void setBidinfouserservice(BidinfouserService bidinfouserservice) {
		this.bidinfouserservice = bidinfouserservice;
	}
	public List getBidList() {
		return BidList;
	}
	public void setBidList(List bidList) {
		BidList = bidList;
	}
	public String getBidtype() {
		return bidtype;
	}
	public void setBidtype(String bidtype) {
		this.bidtype = bidtype;
	}
	public String getLoan() {
		return loan;
	}
	public void setLoan(String loan) {
		this.loan = loan;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
}
