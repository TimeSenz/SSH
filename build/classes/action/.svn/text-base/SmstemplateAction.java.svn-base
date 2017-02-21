package action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import service.SmstemplateService;
import sms_api.Sms;
import util.HttpOut;
import util.JsonUtil;
import dao.Newsinfo;
import dao.Smstemplate;
import dao.SmstemplateDAO;

public class SmstemplateAction {
	private Smstemplate sms=new Smstemplate();
	SmstemplateDAO smsdao=new SmstemplateDAO();
	SmstemplateService smsservice=new SmstemplateService();
	List smslist=new ArrayList();
	
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
	
	
	
    Sms smsUtil=new Sms();
	JsonUtil jutil=new JsonUtil();
	HttpOut ho=new HttpOut();
	public void findAllCid(){
		
		List cidList=smsdao.findAll();
		
		ho.HttpOut(jutil.listToJson(cidList));
		
	}
	public void findByCid() throws IOException{
		HttpServletRequest request = ServletActionContext.getRequest();
		//System.out.println("sdfasdfafd"+request.getParameter("cid"));
		Smstemplate smsBean=(Smstemplate) smsdao.findByCid(request.getParameter("cid")).get(0);
		String json=jutil.BeanToJson(smsBean);
		ho.HttpOut(json);
		
	}
	
	public void findBySmsid() throws IOException{
		HttpServletRequest request = ServletActionContext.getRequest();
		//System.out.println("sdfasdfafd"+request.getParameter("cid"));
		Smstemplate smsBean=(Smstemplate) smsdao.findById(new Integer(request.getParameter("id")));
		String json=jutil.BeanToJson(smsBean);
		ho.HttpOut(json); 
		
	}
	
	public void sendSMS() throws IOException{
		
		HttpServletRequest request = ServletActionContext.getRequest();
		String phone=request.getParameter("phone");
		String p=request.getParameter("p");
		String cid=request.getParameter("cid");
		String []pStr=p.split("#");
//		System.out.println("p:"+p);
//		System.out.println("phone:"+phone);
//		System.out.println("cid:"+cid);
		ho.HttpOut("发送已成功");
		smsUtil.sms_API(phone, pStr, cid);	
		
	}

	//查询所有短信模板
	public String findAll(){
		if(currentPage==0){
			currentPage=1;
		}
		if(areaPage==0){
			areaPage=1;
		}
		int stratLine =(currentPage-1)*pageSize;//当前页面之前的条数
		smslist=smsservice.findAll(stratLine);
    	List list=smsdao.findTotal();
    	if(list==null ||list.size()==0){
			totalPage= 0;
		}
		if(list.size()<=10){
			totalPage =1;
		}else{
			if(list.size()%10==0){
				totalPage =list.size()/10;
			}else{
				totalPage =list.size()/10+1;
			}
		}
		HttpServletRequest request=ServletActionContext.getRequest();
		request.setAttribute("totalPage",new Integer(totalPage));
		request.setAttribute("areaPage",new Integer(areaPage));
		request.setAttribute("currentPage",new Integer(currentPage));
		return "success";
	}
	
	
	//预览单个短信模板
	public String findoneById(){
		HttpServletRequest request = ServletActionContext.getRequest();
			Integer id=Integer.parseInt(request.getParameter("id"));
			sms=smsservice.findSmsById(id);
		return "success";
	}
	//删除短信模板
	public String deleteSms(){
		HttpServletRequest request = ServletActionContext.getRequest();
		Integer id=Integer.parseInt(request.getParameter("id"));
		Smstemplate del=smsservice.findSmsById(id);
		smsservice.delete(del);
		return "success";
	}
	
	//添加短信模板
	public String addSms(){
	    HttpServletRequest request = ServletActionContext.getRequest();
			String cusinfo=request.getParameter("cusinfo");
			sms.setCusinfo(cusinfo);
			smsservice.add(sms);
		return "success";
	}
	
	
	//根据id查询短信模板
	public String findById(){
		HttpServletRequest request=ServletActionContext.getRequest();
		Integer id=Integer.parseInt(request.getParameter("id"));
	    sms=smsservice.findSmsById(id);
		return "success";
	}
	
	//修改短信模板
	public String modifySms(){
		Smstemplate vo = smsservice.findSmsById(sms.getId());
		smsservice.modify(sms);
		return "success";
	}
	public SmstemplateDAO getSmsdao() {
		return smsdao;
	}

	public void setSmsdao(SmstemplateDAO smsdao) {
		this.smsdao = smsdao;
	}
	public SmstemplateService getSmsservice() {
		return smsservice;
	}
	public void setSmsservice(SmstemplateService smsservice) {
		this.smsservice = smsservice;
	}
	public List getSmslist() {
		return smslist;
	}
	public void setSmslist(List smslist) {
		this.smslist = smslist;
	}
	public Smstemplate getSms() {
		return sms;
	}
	public void setSms(Smstemplate sms) {
		this.sms = sms;
	}
	

}
