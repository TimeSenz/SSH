package action;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import jxl.write.WriteException;
import jxl.write.biff.RowsExceededException;

import org.apache.struts2.ServletActionContext;

import util.DownXls;

import com.opensymphony.xwork2.ActionContext;

import dao.Clxx;
import dao.ClxxDAO;
import dao.Fdxx;
import dao.FdxxDAO;
import dao.Hxd;
import dao.HxdDAO;
import dao.Jbsq;
import dao.JbsqDAO;
import dao.Userinfo;
import dao.UserinfoDAO;
public class LoanRequests {
	ClxxDAO clxxdao=new ClxxDAO();
	FdxxDAO fdxxdao=new FdxxDAO();
	HxdDAO hxddao=new HxdDAO();
	JbsqDAO jbsqdao=new JbsqDAO();
	UserinfoDAO userinfodao=new UserinfoDAO();
	Clxx clxx=new Clxx();
	Fdxx fdxx=new Fdxx();
	Hxd hxd=new Hxd();
	Jbsq jbsq=new Jbsq();
	Userinfo userinfo=new Userinfo();
	List list =new ArrayList();
	private int currentPage;//当前页数
	private final int pageSize=10;//每页显示的记录条数
	private int totalPage; //总页数
	private int areaPage;  //1.2.3.4.5==1
	public String jbsq(){
	    ActionContext ac = ActionContext.getContext();
	    Userinfo user=(Userinfo)ac.getSession().get("userinfo");
	    user.setJkr("1");
	    userinfodao.update(user);
		Timestamp nowtime = new Timestamp(System.currentTimeMillis()); 
		jbsq.setTime(nowtime);
		jbsqdao.save(jbsq);
		return "success";
	}
	public String clxx(){
		HttpServletRequest request = ServletActionContext.getRequest();
		ActionContext ac = ActionContext.getContext();
		Userinfo user=(Userinfo)ac.getSession().get("userinfo");
		user.setJkr("1");
		userinfodao.update(user);
		String gcsj=request.getParameter("GCN")+"-"+request.getParameter("GCY");
		clxx.setGcsj(gcsj);
		Timestamp nowtime = new Timestamp(System.currentTimeMillis()); 
		clxx.setTime(nowtime);
		clxxdao.save(clxx);
		return "success";
	}
	public String hxd(){
    ActionContext ac = ActionContext.getContext();
	    Userinfo user=(Userinfo)ac.getSession().get("userinfo");
	    user.setJkr("1");
	    userinfodao.update(user);
		Timestamp nowtime = new Timestamp(System.currentTimeMillis()); 
		hxd.setTime(nowtime);
		hxddao.save(hxd);
		return "success";
	}
	public String fdxx(){
    ActionContext ac = ActionContext.getContext();
	    Userinfo user=(Userinfo)ac.getSession().get("userinfo");
	    user.setJkr("1");
	    userinfodao.update(user);
		Timestamp nowtime = new Timestamp(System.currentTimeMillis()); 
		fdxx.setTime(nowtime);
		fdxxdao.save(fdxx);
		return "success";
	}
	public String findJbsq() throws RowsExceededException, WriteException, IOException{
		String path=ServletActionContext.getServletContext().getRealPath("/");
		//System.out.println("Path:"+path);
		list=jbsqdao.findAll();
		DownXls util=new DownXls();
		util.JbsqXls(path,list);
		return "success";
	}
	public String findClxx() throws RowsExceededException, WriteException, IOException{
		String path=ServletActionContext.getServletContext().getRealPath("/");
		//System.out.println("Path:"+path);
		if(currentPage==0){
			currentPage=1;
		}
		if(areaPage==0){
			areaPage=1;
		}
		int stratLine =(currentPage-1)*pageSize;//当前页面之前的条数
		list=clxxdao.findAll(stratLine);
		List totallist=clxxdao.findTotalNum();
		if(totallist==null||totallist.size()==0){
			totalPage=0;
		}
		if(totallist.size()<=10){
			totalPage=1;
		}else{
			if(totallist.size()%10==0){
				totalPage=totallist.size()/10;
			}else{
				totalPage=totallist.size()/10+1;
			}
		}
		HttpServletRequest request=ServletActionContext.getRequest();
		request.setAttribute("totalPage",new Integer(totalPage));
		request.setAttribute("areaPage",new Integer(areaPage));
		request.setAttribute("currentPage",new Integer(currentPage));
		DownXls util=new DownXls();
		util.ClxxXls(path,list);
		return "success";
	}
    public String findHxd() throws RowsExceededException, WriteException, IOException{
		String path=ServletActionContext.getServletContext().getRealPath("/");
		//System.out.println("Path:"+path);
		if(currentPage==0){
			currentPage=1;
		}
		if(areaPage==0){
			areaPage=1;
		}
		int stratLine =(currentPage-1)*pageSize;//当前页面之前的条数
		list=hxddao.findAll(stratLine);
		List totallist=hxddao.findTotalNum();
		if(totallist==null||totallist.size()==0){
			totalPage=0;
		}
		if(totallist.size()<=10){
			totalPage=1;
		}else{
			if(totallist.size()%10==0){
				totalPage=totallist.size()/10;
			}else{
				totalPage=totallist.size()/10+1;
			}
		}
		HttpServletRequest request=ServletActionContext.getRequest();
		request.setAttribute("totalPage",new Integer(totalPage));
		request.setAttribute("areaPage",new Integer(areaPage));
		request.setAttribute("currentPage",new Integer(currentPage));
		DownXls util=new DownXls();
		util.HxdXls(path,list);
		return "success";
	}
	public String findFdxx() throws RowsExceededException, WriteException, IOException{
		String path=ServletActionContext.getServletContext().getRealPath("/");
		//System.out.println("Path:"+path);
		if(currentPage==0){
			currentPage=1;
		}
		if(areaPage==0){
			areaPage=1;
		}
		int stratLine =(currentPage-1)*pageSize;//当前页面之前的条数
		list=fdxxdao.findAll(stratLine);
		List totallist=fdxxdao.findTotalNum();
		if(totallist==null||totallist.size()==0){
			totalPage=0;
		}
		if(totallist.size()<=10){
			totalPage=1;
		}else{
			if(totallist.size()%10==0){
				totalPage=totallist.size()/10;
			}else{
				totalPage=totallist.size()/10+1;
			}
		}
		HttpServletRequest request=ServletActionContext.getRequest();
		request.setAttribute("totalPage",new Integer(totalPage));
		request.setAttribute("areaPage",new Integer(areaPage));
		request.setAttribute("currentPage",new Integer(currentPage));
		DownXls util=new DownXls();
		util.FdxxXls(path, list);
		return "success";
	}
	
	
	//首页我要借款页面的跳转
	public String loans(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String flag=request.getParameter("loan");
		//汇车贷
		if(flag.equals("hcd")){
			return "hcd";
		}
		//汇房贷
		if(flag.equals("hfd")){
		    return "hfd";
				}
	    //汇信贷
		if(flag.equals("hxd")){
		    return "hxd";
				}
		
		return "success";
	}
	
	
	public ClxxDAO getClxxdao() {
		return clxxdao;
	}
	public void setClxxdao(ClxxDAO clxxdao) {
		this.clxxdao = clxxdao;
	}
	public FdxxDAO getFdxxdao() {
		return fdxxdao;
	}
	public void setFdxxdao(FdxxDAO fdxxdao) {
		this.fdxxdao = fdxxdao;
	}
	public HxdDAO getHxddao() {
		return hxddao;
	}
	public void setHxddao(HxdDAO hxddao) {
		this.hxddao = hxddao;
	}
	public JbsqDAO getJbsqdao() {
		return jbsqdao;
	}
	public void setJbsqdao(JbsqDAO jbsqdao) {
		this.jbsqdao = jbsqdao;
	}
	public Clxx getClxx() {
		return clxx;
	}
	public void setClxx(Clxx clxx) {
		this.clxx = clxx;
	}
	public Fdxx getFdxx() {
		return fdxx;
	}
	public void setFdxx(Fdxx fdxx) {
		this.fdxx = fdxx;
	}
	public Hxd getHxd() {
		return hxd;
	}
	public void setHxd(Hxd hxd) {
		this.hxd = hxd;
	}
	public Jbsq getJbsq() {
		return jbsq;
	}
	public void setJbsq(Jbsq jbsq) {
		this.jbsq = jbsq;
	}
	public UserinfoDAO getUserinfodao() {
		return userinfodao;
	}
	public void setUserinfodao(UserinfoDAO userinfodao) {
		this.userinfodao = userinfodao;
	}
	public Userinfo getUserinfo() {
		return userinfo;
	}
	public void setUserinfo(Userinfo userinfo) {
		this.userinfo = userinfo;
	}
	public List getList() {
		return list;
	}
	public void setList(List list) {
		this.list = list;
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
	public int getAreaPage() {
		return areaPage;
	}
	public void setAreaPage(int areaPage) {
		this.areaPage = areaPage;
	}
	public int getPageSize() {
		return pageSize;
	}
}
