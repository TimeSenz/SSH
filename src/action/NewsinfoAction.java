package action;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import dao.Cusinfo;
import dao.Finance;
import dao.Newsinfo;
import dao.NewsinfoDAO;
import service.NewsinfoService;
public class NewsinfoAction {
    NewsinfoService newsinfoservice=new NewsinfoService();
    private NewsinfoDAO newsinfodao=new NewsinfoDAO();
    private Newsinfo newsinfo=new Newsinfo();
    List donglist=new ArrayList();
    List gonglist=new ArrayList();
    List huanlist=new ArrayList();
    List meilist=new ArrayList();
    List moredonglist=new ArrayList();
    List moregonglist=new ArrayList();
    List morehuanlist=new ArrayList();
    List moremeilist=new ArrayList();
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
    //新闻动态  查询所有
    public String findAllByDong(){
    	if(currentPage==0){
			currentPage=1;
		}
		if(areaPage==0){
			areaPage=1;
		}
		int stratLine =(currentPage-1)*pageSize;//当前页面之前的条数
    	donglist=newsinfoservice.findByType("动",stratLine);
    	List list=newsinfodao.findTotal("动");
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
    	return "findAllByDong";
    }
    //根据新闻类型查询（新闻公告  还款公告  媒体报道）所有
    public String findAllByGong(){
    	HttpServletRequest request = ServletActionContext.getRequest();
	 	if(currentPage==0){
			currentPage=1;
		}
		if(areaPage==0){
			areaPage=1;
		}
		int stratLine =(currentPage-1)*pageSize;//当前页面之前的条数
	
    		gonglist=newsinfoservice.findByType("公",stratLine);
    		List list=newsinfodao.findTotal("公");
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
    		request.setAttribute("totalPage",new Integer(totalPage));
    		request.setAttribute("areaPage",new Integer(areaPage));
    		request.setAttribute("currentPage",new Integer(currentPage));
    		return "gong";
    }
    public String findAllByHuan(){
    	HttpServletRequest request = ServletActionContext.getRequest();
	 	if(currentPage==0){
			currentPage=1;
		}
		if(areaPage==0){
			areaPage=1;
		}
		int stratLine =(currentPage-1)*pageSize;//当前页面之前的条数
	
    		huanlist=newsinfoservice.findByType("还",stratLine);
    		List list=newsinfodao.findTotal("还");
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
    		request.setAttribute("totalPage",new Integer(totalPage));
    		request.setAttribute("areaPage",new Integer(areaPage));
    		request.setAttribute("currentPage",new Integer(currentPage));
    		return "huan";
    	}
    
    
    public String findAllByMei(){
    	HttpServletRequest request = ServletActionContext.getRequest();
	 	if(currentPage==0){
			currentPage=1;
		}
		if(areaPage==0){
			areaPage=1;
		}
		int stratLine =(currentPage-1)*pageSize;//当前页面之前的条数
	
    	
    		meilist=newsinfoservice.findByType("媒",stratLine);
    		List list=newsinfodao.findTotal("媒");
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
    		request.setAttribute("totalPage",new Integer(totalPage));
    		request.setAttribute("areaPage",new Integer(areaPage));
    		request.setAttribute("currentPage",new Integer(currentPage));
    		return "mei";
    	}
    
   
    //新增新闻
    public String addNewsinfo(){
        HttpServletRequest request = ServletActionContext.getRequest();
		String contents=request.getParameter("contents");
		String cusinfo=request.getParameter("cusinfo");
		newsinfo.setContents(contents);
		newsinfo.setCusinfo(cusinfo);
		newsinfoservice.add(newsinfo);
		return "success";
    } 
    //删除新闻
    public String deleteNewsinfo(){
    	HttpServletRequest request = ServletActionContext.getRequest();
		Integer id=Integer.parseInt(request.getParameter("id"));
		Newsinfo del=newsinfoservice.findNewsinfoById(id);
		newsinfoservice.delete(del);
		return "delete";
    }
    //通过ID查询所有
  		public String findById(){
  			HttpServletRequest request = ServletActionContext.getRequest();
  			Integer id=Integer.parseInt(request.getParameter("id"));
  			newsinfo=newsinfoservice.findNewsinfoById(id);
  			return "success";
  		}
    //修改新闻
		public String modify(){
			Newsinfo vo=newsinfoservice.findNewsinfoById(newsinfo.getId());
		    HttpServletRequest request = ServletActionContext.getRequest();
		    String contents=request.getParameter("contents");
		    newsinfo.setContents(contents);
			newsinfoservice.modify(newsinfo);
			return "success";
		}
	//预览单个新闻
		public String findoneById(){
			HttpServletRequest request = ServletActionContext.getRequest();
  			Integer id=Integer.parseInt(request.getParameter("id"));
  			newsinfo=newsinfoservice.findNewsinfoById(id);
  			return "success";
		}
	//查询更多新闻公告
		public String findByGong(){
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
			moregonglist=newsinfoservice.findFirstByType("公", stratLine, 10);
			List totalList=newsinfodao.findNum("公");//总数量
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
			return "findByGong";
		}
		
		//查询更多新闻动态
		public String findByDong(){
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
			moredonglist=newsinfoservice.findFirstByType("动", stratLine, 10);
			List totalList=newsinfodao.findNum("动");//总数量
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
			return "findByDong";
		}
		//查询更多还款公告
				public String findByHuan(){
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
					morehuanlist=newsinfoservice.findFirstByType("还", stratLine, 10);
					List totalList=newsinfodao.findNum("还");//总数量
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
					return "findByHuan";
				}
		//查询更多媒体报道
		public String findByMei(){
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
					moremeilist=newsinfoservice.findFirstByType("媒", stratLine, 10);
					List totalList=newsinfodao.findNum("媒");//总数量
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
					return "findByMei";
				}
		 //通过ID查询单个所有
  		public String findOneById(){
  			HttpServletRequest request = ServletActionContext.getRequest();
  			Integer id=Integer.parseInt(request.getParameter("id"));
  			newsinfo=newsinfoservice.findNewsinfoById(id);
  			return "success";
  		}
		
		
	public Newsinfo getNewsinfo() {
		return newsinfo;
	}
	public void setNewsinfo(Newsinfo newsinfo) {
		this.newsinfo = newsinfo;
	}
	public List getDonglist() {
		return donglist;
	}
	public void setDonglist(List donglist) {
		this.donglist = donglist;
	}
	public List getGonglist() {
		return gonglist;
	}
	public void setGonglist(List gonglist) {
		this.gonglist = gonglist;
	}
	public NewsinfoService getNewsinfoservice() {
		return newsinfoservice;
	}
	public void setNewsinfoservice(NewsinfoService newsinfoservice) {
		this.newsinfoservice = newsinfoservice;
	}
	public NewsinfoDAO getNewsinfodao() {
		return newsinfodao;
	}
	public void setNewsinfodao(NewsinfoDAO newsinfodao) {
		this.newsinfodao = newsinfodao;
	}
	public List getMoredonglist() {
		return moredonglist;
	}
	public void setMoredonglist(List moredonglist) {
		this.moredonglist = moredonglist;
	}
	public List getMoregonglist() {
		return moregonglist;
	}
	public void setMoregonglist(List moregonglist) {
		this.moregonglist = moregonglist;
	}
	public List getMorehuanlist() {
		return morehuanlist;
	}
	public void setMorehuanlist(List morehuanlist) {
		this.morehuanlist = morehuanlist;
	}
	public List getMoremeilist() {
		return moremeilist;
	}
	public void setMoremeilist(List moremeilist) {
		this.moremeilist = moremeilist;
	}
	public List getHuanlist() {
		return huanlist;
	}
	public void setHuanlist(List huanlist) {
		this.huanlist = huanlist;
	}
	public List getMeilist() {
		return meilist;
	}
	public void setMeilist(List meilist) {
		this.meilist = meilist;
	}
	
	
}