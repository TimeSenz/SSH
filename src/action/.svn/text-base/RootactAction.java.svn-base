package action;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.Timestamp;
import java.text.*;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;

import jxl.write.WriteException;
import jxl.write.biff.RowsExceededException;


import org.apache.struts2.ServletActionContext;




import com.opensymphony.xwork2.ActionContext;
import com.sun.org.apache.xerces.internal.impl.xpath.regex.ParseException;

import dao.Fenye;
import dao.Jkract;
import dao.JkractDAO;
import dao.LcractDAO;
import dao.LcractmergeDAO;
import dao.RecordsDAO;
import dao.Userinfo;
import service.JkractService;
import service.RootactService;
import util.DownXls;
import util.JsonUtil;
public class RootactAction {
	RootactService rootactservice=new RootactService();
	JkractDAO jkractdao=new JkractDAO();
	LcractDAO lcractdao=new LcractDAO();
	List jkr_allowed_list =new ArrayList();
    List jkr_not_list=new ArrayList();
    List jkr_confirm_list=new ArrayList();
    List lcr_allowed_list =new ArrayList();
    List lcr_not_list=new ArrayList();
    List lcr_confirm_list=new ArrayList();
    List records_list=new ArrayList();
    Jkract jkract=new Jkract();
    RecordsDAO recordsdao=new RecordsDAO();
    LcractmergeDAO lcractmergedao=new LcractmergeDAO();
    
    private int currentPage;//当前页数
	private final int pageSize=10;//每页显示的记录条数
	private int totalPage; //总页数
	private int areaPage;  //1.2.3.4.5==1
	int currentPageAjax;
	int pageSizeAjax;
	String starTimeAjax;
	String endTimeAjax;
	
	
	//借款人  已批准表
	public String rootAct(){
		if(currentPage==0){
			currentPage=1;
		}
		if(areaPage==0){
			areaPage=1;
		}
		int stratLine =(currentPage-1)*pageSize;//当前页面之前的条数
		jkr_allowed_list=rootactservice.findJkractlist("已批准",stratLine);
		List jatotalList=jkractdao.findTotalNum("已批准");
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
	
	//借款人   已确认表
	public String rootActjc(){
		if(currentPage==0){
			currentPage=1;
		}
		if(areaPage==0){
			areaPage=1;
		}
		int stratLine =(currentPage-1)*pageSize;//当前页面之前的条数
		jkr_confirm_list=rootactservice.findJkractlist("已确认",stratLine);
		List jctotalList=jkractdao.findTotalNum("已确认");//总数量
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
	
	//借款人  未批准表
	public String rootActjn(){
		if(currentPage==0){
			currentPage=1;
		}
		if(areaPage==0){
			areaPage=1;
		}
		int stratLine =(currentPage-1)*pageSize;//当前页面之前的条数
		jkr_not_list=rootactservice.findJkractlist("未批准",stratLine);
		List jntotalList=jkractdao.findTotalNum("未批准");
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
		//借款人
		//jkr_allowed_list=rootactservice.findJkractlist("已批准");
		//jkr_not_list=rootactservice.findJkractlist("未批准");		
//		jkr_confirm_list=rootactservice.findJkractlist("已确认");
		//理财人
//	    lcr_allowed_list =rootactservice.findLcractList("已批准");
//	    lcr_not_list=rootactservice.findLcractList("未批准");
//	    lcr_confirm_list=rootactservice.findLcractList("已确认");
		return "success";
	}
	
	//理财人  已批准表
	public String rootActla(){
		if(currentPage==0){
			currentPage=1;
		}
		if(areaPage==0){
			areaPage=1;
		}
		int stratLine =(currentPage-1)*pageSize;//当前页面之前的条数
		lcr_allowed_list =rootactservice.findLcractList("已批准",stratLine);
		List latotalList=lcractmergedao.findTotalNum("已批准");
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
		return "success";
	}
	
	//理财人  未批准表
//测试lcractmerge
	public String rootActln(){
		if(currentPage==0){
			currentPage=1;
		}
		if(areaPage==0){
			areaPage=1;
		}
		int stratLine =(currentPage-1)*pageSize;//当前页面之前的条数
		lcr_not_list=rootactservice.findLcractList("未批准",stratLine);
		List lntotalList=lcractmergedao.findTotalNum("未批准");
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
	
	//理财人  已确认表
	public String rootActlc(){
		if(currentPage==0){
			currentPage=1;
		}
		if(areaPage==0){
			areaPage=1;
		}
		int stratLine =(currentPage-1)*pageSize;//当前页面之前的条数
		 lcr_confirm_list=rootactservice.findLcractList("已确认",stratLine);
		 List lctotalList=lcractmergedao.findTotalNum("已确认");
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
	//批准借款人操作
	public String changeJkract(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String flag=request.getParameter("flag");
		Integer id=new Integer(request.getParameter("id"));
		String finance=request.getParameter("finance");
		
		System.out.println("flag:"+flag+"   id"+id);
		rootactservice.changeJkract(id, flag);
		if(finance!=null&&finance.equals("1")){
			
			return "finance";
			
		}
		return "success";
	}
	//批准理财人
	public String changeLcract(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String flag=request.getParameter("flag");
		Integer id=new Integer(request.getParameter("id"));
		
		String finance=request.getParameter("finance");
		//System.out.println("flag:"+flag+"   id"+id);
		rootactservice.changeLcract(id, flag);
		if(finance!=null&&finance.equals("1")){
			
			return "finance";
			
		}
		return "success";
	}
	//检索流水
	public String records(){
		if(currentPage==0){
			currentPage=1;
		}
		if(areaPage==0){
			areaPage=1;
		}
		int stratLine=(currentPage-1)*pageSize;
		String jsType ="";
		String jsPeople = "";
		String startTime ="2011-01-01 00:00:00";
		String endTime ="2020-01-06 23:59:59";
		records_list=rootactservice.findAllRecords(stratLine,jsType,jsPeople,startTime,endTime);
		List recordslist=recordsdao.findTotalNum();
		if(recordslist==null||recordslist.size()==0){
			totalPage=1;
		}
		if(recordslist.size()<=10){
			totalPage=1;
		}else{
			if(recordslist.size()%10==0){
				totalPage=recordslist.size()/10;
			}else{
				totalPage=recordslist.size()/10+1;
			}
		}
		HttpServletRequest request=ServletActionContext.getRequest();
		request.setAttribute("currentPage",new Integer(currentPage));
		request.setAttribute("totalPage", new Integer(totalPage));
		request.setAttribute("areaPage", new Integer(areaPage));
		return "success";
	}
	/**
	 * 修改人：贾凡
	 * 修改时间：2015-01-07
	 * 修改内容：添加财务流水Excel下载功能
	 * */
	public void  personRecordsAjax() throws RowsExceededException, WriteException, IOException{
		HttpServletRequest request = ServletActionContext.getRequest();
		//获取默认值
		String jsType = request.getParameter("zjlsLx");
		String jsPeople = request.getParameter("zjlsXgr");
		String startTime = request.getParameter("zjlsQsrq");
		String endTime = request.getParameter("zjlsJsrq");
		//获取30天前日期
		SimpleDateFormat dft = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");		
		Calendar date = Calendar.getInstance();		
		date.set(Calendar.DATE, date.get(Calendar.DATE) - 30);
		//获取当前日期
		Timestamp nowtime = new Timestamp(System.currentTimeMillis()); 
		//判断第一次加载时为空或是检索时没有添值给默认值
		if(jsType==null||jsType.trim()==""||jsType.trim().equals("全部")){
			jsType = "";
		}
		if(jsPeople==null||jsPeople.trim()==""){
			jsPeople = "";
		}
		if(startTime==null||startTime.trim()==""){
			startTime = dft.format(date.getTime());
		}
		if(endTime==null||endTime.trim()==""){
			endTime = dft.format(nowtime);
		}
		records_list=rootactservice.findAllRecordss(jsType,jsPeople,startTime,endTime);
	
		//上传至服务器
		DownXls util=new DownXls();
		String path=ServletActionContext.getServletContext().getRealPath("/");
		util.RecordsXls(path,records_list);
		System.out.println("Path:"+path);
		
		//获取状态是下载还是查询
		//2状态为下载	其他状态都为查询活着加载
//		String status = request.getParameter("status");
//		if(status==null||status.trim()==""){
		/********************************************************************************************************************************
		 *********************************************************************分页方法****************************************************
		 *******************************************************************************************************************************/
			HttpServletResponse response = ServletActionContext.getResponse();
			response.setContentType("text/html; charset=utf-8");
			PrintWriter out;
			JsonUtil jsonUtil =new JsonUtil();
			List fenyeList=new ArrayList();
			int min = (currentPageAjax-1)*pageSizeAjax;
			int max = (currentPageAjax)*pageSizeAjax;
			if(max==0){
				max=10;
			}
			int listsize = records_list.size();
			if(listsize==0){
				min = 0;
				max = 0;
			}
			if(listsize<max){
				max=listsize;
			}
			for(int i=min;i<max;i++){
				fenyeList.add(records_list.get(i));
				//System.out.println(i);
			}
			//String jason=jsonUtil.listToJson(fenyeList);
			List listtest=new ArrayList();
			
			Fenye f=new Fenye();
			f.setSize(listsize);
			f.setMaxsize(max);
			listtest.add(fenyeList);
			listtest.add(f);
			String jasonmax = jsonUtil.listToJson(listtest);
			//String jasonmax = jsonUtil.BeanToJson(listsize);
			//System.out.println(jason);
			//System.out.println(jasonmax);
			try {
				out = response.getWriter();
				//out.print(jason);
				out.print(jasonmax);
				//System.out.println(jasonmax);
				out.flush();
				out.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		
//		}else{
//			//如果状态为2则为下载方法
//			try {
//				this.selectRecordsXls();
//			} catch (Exception e) {
//				// TODO: handle exception
//			}
//			
//		}
	}
	
	
	
	public String selectRecordsXls() throws RowsExceededException, WriteException, IOException{
		//把xls存储至服务器
		String path=ServletActionContext.getServletContext().getRealPath("/");
		System.out.println("Path:"+path);
		HttpServletRequest request = ServletActionContext.getRequest();
		//获取默认值
		String jsType = request.getParameter("zjlsLx");
		String jsPeople = request.getParameter("zjlsXgr");
		String startTime = request.getParameter("zjlsQsrq");
		String endTime = request.getParameter("zjlsJsrq");
		//获取30天前日期
		SimpleDateFormat dft = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");		
		Calendar date = Calendar.getInstance();		
		date.set(Calendar.DATE, date.get(Calendar.DATE) - 30);
		//获取当前日期
		Timestamp nowtime = new Timestamp(System.currentTimeMillis()); 
		//判断第一次加载时为空或是检索时没有添值给默认值
		if(jsType==null||jsType.trim()==""||jsType.trim().equals("全部")){
			jsType = "";
		}
		if(jsPeople==null||jsPeople.trim()==""){
			jsPeople = "";
		}
		if(startTime==null||startTime.trim()==""){
			startTime = dft.format(date.getTime());
		}
		if(endTime==null||endTime.trim()==""){
			endTime = dft.format(nowtime);
		}
		records_list=recordsdao.findAllByTimeTow(jsType,jsPeople,startTime,endTime);
		DownXls util=new DownXls();
		util.RecordsXls(path,records_list);
		//下载到PC本地
		try {
			HttpServletResponse response = ServletActionContext.getResponse();
			response.setHeader("Pragma","No-cache");  
			response.setHeader("Cache-Control","no-cache");  
			response.setDateHeader("Expires", 0); 
			String url = path+"Excel\\RecordsXls.xls";
			String fileName = "zjls.xls";
			File f = new File(url);
			FileInputStream fin = new FileInputStream(f);
			response.reset();//设置为没有缓存
			response.setContentType("application/x-download;charset=GBK");
			response.setHeader("Content-Disposition","attachment;filename="+fileName);
			OutputStream output = response.getOutputStream();
			byte[] buf = new byte[1024];
			int r = 0;
			while ((r = fin.read(buf, 0, buf.length)) != -1){
				output.write(buf, 0, r);
			}
			fin.close();
			output.flush();
			output.close();
			output=null;  
			response.flushBuffer();
		} catch (Exception e) {
			e.getStackTrace();
		}
		return "success";
	}
	
	
	//财务检索流水
	public String records_finance(){
		if(currentPage==0){
			currentPage=1;
		}
		if(areaPage==0){
			areaPage=1;
		}
		int stratLine=(currentPage-1)*pageSize;
		HttpServletRequest request = ServletActionContext.getRequest();
		//获取默认值
		String jsType = request.getParameter("zjlsLx");
		String jsPeople = request.getParameter("zjlsXgr");
		String startTime = request.getParameter("zjlsQsrq");
		String endTime = request.getParameter("zjlsJsrq");
		//获取30天前日期
		SimpleDateFormat dft = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");		
		Calendar date = Calendar.getInstance();		
		date.set(Calendar.DATE, date.get(Calendar.DATE) - 30);
		//获取当前日期
		Timestamp nowtime = new Timestamp(System.currentTimeMillis()); 
		//判断第一次加载时为空或是检索时没有添值给默认值
		if(jsType==null||jsType.trim()==""||jsType.trim().equals("全部")){
			jsType = "";
		}
		if(jsPeople==null||jsPeople.trim()==""){
			jsPeople = "";
		}
		if(startTime==null||startTime.trim()==""){
			startTime = dft.format(date.getTime());
		}
		if(endTime==null||endTime.trim()==""){
			endTime = dft.format(nowtime);
		}
		records_list=rootactservice.findAllRecords(stratLine,jsType,jsPeople,startTime,endTime);
		List list=recordsdao.findTotalNum();
		if(list==null||list.size()==0){
			totalPage=1;
		}
		if(list.size()<=10){
			totalPage=1;
		}else{
			if(list.size()%10==0){
				totalPage=list.size()/10;
			}else{
				totalPage=list.size()/10+1;
			}
		}
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
	public Jkract getJkract() {
		return jkract;
	}
	public void setJkract(Jkract jkract) {
		this.jkract = jkract;
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
	public List getRecords_list() {
		return records_list;
	}
	public void setRecords_list(List records_list) {
		this.records_list = records_list;
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

	public RecordsDAO getRecordsdao() {
		return recordsdao;
	}

	public void setRecordsdao(RecordsDAO recordsdao) {
		this.recordsdao = recordsdao;
	}


	public LcractmergeDAO getLcractmergedao() {
		return lcractmergedao;
	}

	public void setLcractmergedao(LcractmergeDAO lcractmergedao) {
		this.lcractmergedao = lcractmergedao;
	}


	public int getCurrentPageAjax() {
		return currentPageAjax;
	}

	public void setCurrentPageAjax(int currentPageAjax) {
		this.currentPageAjax = currentPageAjax;
	}

	public int getPageSizeAjax() {
		return pageSizeAjax;
	}

	public void setPageSizeAjax(int pageSizeAjax) {
		this.pageSizeAjax = pageSizeAjax;
	}

	public String getStarTimeAjax() {
		return starTimeAjax;
	}

	public void setStarTimeAjax(String starTimeAjax) {
		this.starTimeAjax = starTimeAjax;
	}

	public String getEndTimeAjax() {
		return endTimeAjax;
	}

	public void setEndTimeAjax(String endTimeAjax) {
		this.endTimeAjax = endTimeAjax;
	}

	
}
