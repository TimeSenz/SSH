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
	 * 分页查询
	 */
	private int currentPage;//当前页数
	private final int pageSize=10;//每页显示的记录条数
	private int totalPage; //总页数
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
	//查询bidlist
	public String findAllBidinfo(){
		/**
		 * 分页
		 */
		if(currentPage==0){
			currentPage=1;
		}
		if(areaPage==0){
			areaPage=1;
		}
		int stratLine =(currentPage-1)*pageSize;//当前页面之前的条数
		BidList=bidinfouserservice.findAllBidinfo(stratLine);
		List totalList=bidinfodao.findTotalNum();//总数量
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
	//实时更新查询bidlist
	public String modifyBidList( ){
		//获得单选按钮的值
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
//		value="抵" 
//			value="信"
//				value="债"
//					value="租"
//		
		else if(bidtype.equals("1")){
			bidtype="and bidtype='抵'";
		}
		else if(bidtype.equals("2")){
			bidtype="and bidtype='信'";
		}
		else if(bidtype.equals("3")){
			bidtype="and bidtype='债'";
		}
		else if(bidtype.equals("4")){
			bidtype="and bidtype='租'";
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
         * 分页查询
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
		//将单选按钮的值传回去
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
