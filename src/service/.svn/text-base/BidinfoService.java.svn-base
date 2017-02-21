package service;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import dao.Bidinfo;
import dao.BidinfoDAO;
import dao.Bidinfo_Userinfo;
import dao.Records;
import dao.RecordsDAO;
import dao.Riskinfo;
import dao.Root_Lcract;
import dao.Tempdata;
import dao.UserinfoDAO;
import dao.jkr_agreement;
public class BidinfoService {
	Bidinfo bidinfo=new Bidinfo();
	BidinfoDAO bidinfodao=new BidinfoDAO();
	jkr_agreement jkrag=new jkr_agreement();
	UserinfoDAO userinfodao=new UserinfoDAO();
	RecordsDAO recordsdao=new RecordsDAO();
	//查询所有
	public List findAll(int stratLine,Riskinfo riskinfo){
	
		return bidinfodao.findAll(stratLine,riskinfo);
		
	}
	//担保公司
		public List findByGuacom(int stratLine,String guacom){
			List guacomlist=new ArrayList();
			for(Bidinfo bid : bidinfodao.findByGuacom(stratLine,guacom)){
				Bidinfo_Userinfo bidinfo_userinfo=new Bidinfo_Userinfo();
			    bidinfo_userinfo.setId(bid.getId());
			    bidinfo_userinfo.setBid_userid(bid.getUserid());
			    bidinfo_userinfo.setBid_reason(bid.getReason());
			    bidinfo_userinfo.setUser_remark(userinfodao.findById(bid.getUserid()).getRemark());
			    bidinfo_userinfo.setBid_profit(bid.getProfit());
			    bidinfo_userinfo.setBid_money(bid.getNumber());
			    bidinfo_userinfo.setBid_deadline(bid.getDeadline());
			    bidinfo_userinfo.setBid_rate(bid.getRate());
				bidinfo_userinfo.setBid_state(bid.getState());
				bidinfo_userinfo.setBid_bidtype(bid.getBidtype());
				guacomlist.add(bidinfo_userinfo);
				bidinfo_userinfo=null;
			}
			return guacomlist;
		}
	//按标的状态查询“已上标”，“未上标”查询所有标
	public List findByState(String state,int stratLine,Riskinfo riskinfo){
		return bidinfodao.findByState(state,stratLine,riskinfo);
	}
	//检索所有精选理财
	public List findAllFinance(){
		return bidinfodao.findByBidtype("精");
	}
	//检索所有散标 State
	public List findActBid(String state){
		return bidinfodao.findActBidByState(state);
	}
	public List findPaging(int currentPage ,int pageSize,String start,String end){
		List bidinfolist=new ArrayList();
		for(Bidinfo bid : bidinfodao.findPaging(currentPage, pageSize, start, end)){
			Bidinfo_Userinfo bidinfo_userinfo=new Bidinfo_Userinfo();
		    bidinfo_userinfo.setId(bid.getId());
		    bidinfo_userinfo.setBid_userid(bid.getUserid());
		    bidinfo_userinfo.setBid_reason(bid.getReason());
		    bidinfo_userinfo.setUser_remark(userinfodao.findById(bid.getUserid()).getRemark());
		    bidinfo_userinfo.setBid_profit(bid.getProfit());
		    bidinfo_userinfo.setBid_money(bid.getNumber());
		    bidinfo_userinfo.setBid_deadline(bid.getDeadline());
		    bidinfo_userinfo.setBid_rate(bid.getRate());
			bidinfo_userinfo.setBid_state(bid.getState());
			bidinfo_userinfo.setBid_bidtype(bid.getBidtype());
			bidinfolist.add(bidinfo_userinfo);
			bidinfo_userinfo=null;
		}
		return bidinfolist;
	}
	public  void modifyBid(Bidinfo Bidinfo){
		 bidinfodao.update(Bidinfo);  
	   }
	public void save(Bidinfo bidinfo){
		 bidinfodao.save(bidinfo);
	 }
	public Bidinfo findById(Integer id){
		return bidinfodao.findById(id);
	}
        //添加新的标
	public void addBidinfo(Bidinfo bidinfo){
		 bidinfodao.save(bidinfo);
	   }
	  //更新
    public void modify(Bidinfo vo){
		 bidinfodao.update(vo);
	   }
    //删除
    public void delectBid(Integer id){
    	
    	bidinfodao.delete(bidinfodao.findById(id));
    }
  //生成协议
    public List creatxieyi(Integer userid,Integer bidid){
    	List list=new ArrayList();
    		jkrag.setDeadline(bidinfodao.findById(bidid).getDeadline());
    		jkrag.setFff(0.0);
    		jkrag.setJmoney(bidinfodao.findById(bidid).getNumber());
    	    jkrag.setJname(userinfodao.findById(bidinfodao.findById(bidid).getUserid()).getName());
    		//月偿还本息额（元）jkrag.setProfit();
    	    jkrag.setProfit(bidinfodao.findById(bidid).getNumber()*bidinfodao.findById(bidid).getProfit()*bidinfodao.findById(bidid).getDeadline()/1200);
    	    //还款方式（月返息）
    	    jkrag.setRepaytype(bidinfodao.findById(bidid).getRepaytype());
    	    //标的创建时间
    	    jkrag.setCreatTime(bidinfodao.findById(bidid).getCreated());
    	    //标名称
    	    jkrag.setBidname(bidinfodao.findById(bidid).getReason());
    		jkrag.setRmoney(bidinfodao.findById(bidid).getNumber());
//          合同的开始时间  即  放款给借款人时开始生效
//    		String Jname=(String) userinfodao.findById(bidinfodao.findById(bidid).getUserid()).getName();
//    		Timestamp starttime=(Timestamp)recordsdao.findStarttime(bidid, Jname).get(0);
//    		jkrag.setStarttime(starttime);
//    	         合同的结束时间  即  借款人最后一次还款
//    		String username=userinfodao.findById(userid).getName();
//    		Timestamp endtime=(Timestamp)recordsdao.findTimeByBIdid(bidid, username).get(0);
//    		System.out.println("((((((endtime))))))"+recordsdao.findTimeByBIdid(bidid, username));
//    		jkrag.setEndtime(endtime);
    		//还款的开始时间   借款人第一次还款
    		jkrag.setStarttime(bidinfodao.findById(bidid).getStart());
    		//还款的结束时间  借款人第一次还款
    		jkrag.setEndtime(bidinfodao.findById(bidid).getEnd());
    		//jkrag.setTime();每月30 日（24:00前，节假日不顺延）
    		jkrag.setTime(bidinfodao.findById(bidid).getStart());
    		//本息总额（元）jkrag.setTotalmoney(totalmoney);
    		jkrag.setTotalmoney(bidinfodao.findById(bidid).getNumber()*bidinfodao.findById(bidid).getProfit()/1200);
    		
    	list.add(jkrag);
    	return list;
    }
	public Bidinfo getBidinfo() {
		return bidinfo;
	}
	public void setBidinfo(Bidinfo bidinfo) {
		this.bidinfo = bidinfo;
	}
	public BidinfoDAO getBidinfodao() {
		return bidinfodao;
	}
	public void setBidinfodao(BidinfoDAO bidinfodao) {
		this.bidinfodao = bidinfodao;
	}
	public jkr_agreement getJkrag() {
		return jkrag;
	}
	public void setJkrag(jkr_agreement jkrag) {
		this.jkrag = jkrag;
	}
	public UserinfoDAO getUserinfodao() {
		return userinfodao;
	}
	public void setUserinfodao(UserinfoDAO userinfodao) {
		this.userinfodao = userinfodao;
	}
	public RecordsDAO getRecordsdao() {
		return recordsdao;
	}
	public void setRecordsdao(RecordsDAO recordsdao) {
		this.recordsdao = recordsdao;
	}
	
}
