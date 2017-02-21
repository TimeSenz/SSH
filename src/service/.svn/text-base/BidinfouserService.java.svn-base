package service;
import java.util.ArrayList;
import java.util.List;
import dao.Bidinfo;
import dao.BidinfoDAO;
import dao.Bidinfo_Userinfo;
import dao.UserinfoDAO;
public class BidinfouserService {
	Bidinfo_Userinfo bidinfo_userinfo=new Bidinfo_Userinfo();
	BidinfoDAO bidinfodao=new BidinfoDAO();
	UserinfoDAO userinfodao=new UserinfoDAO();
	//查询bidlist
	public List  findAllBidinfo(int stratLine){
		List BidList=new ArrayList();
		for(Bidinfo bid : bidinfodao.findList(stratLine)){
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
			BidList.add(bidinfo_userinfo);
			bidinfo_userinfo=null;
		}
		return BidList;
	}
	//根据标签分页检索bidlist
	public List findByInfo(String bidtype,String loan,String grade,int stratLine){
           List BidList=new ArrayList();
		for(Bidinfo bid : bidinfodao.selectBy(bidtype,loan,stratLine) ){
			Bidinfo_Userinfo bidinfo_userinfo=new Bidinfo_Userinfo();
		    bidinfo_userinfo.setId(bid.getId());
		    bidinfo_userinfo.setBid_userid(bid.getUserid());
		    bidinfo_userinfo.setBid_reason(bid.getReason());
		    bidinfo_userinfo.setUser_remark(userinfodao.findById(bid.getUserid()).getRemark());
		    bidinfo_userinfo.setBid_profit(bid.getProfit());
		    bidinfo_userinfo.setBid_money(bid.getMoney());
		    bidinfo_userinfo.setBid_deadline(bid.getDeadline());
		    bidinfo_userinfo.setBid_rate(bid.getRate());
			bidinfo_userinfo.setBid_state(bid.getState());
			bidinfo_userinfo.setBid_bidtype(bid.getBidtype());
			if(grade==null||grade.equals("")){
				BidList.add(bidinfo_userinfo);
			}else{ 
				if(bidinfo_userinfo.getUser_remark().equals(grade)){
				  BidList.add(bidinfo_userinfo);
			}
			}
			bidinfo_userinfo=null;
		}
		return BidList;
	}
	public Bidinfo_Userinfo getBidinfo_userinfo() {
		return bidinfo_userinfo;
	}
	public void setBidinfo_userinfo(Bidinfo_Userinfo bidinfo_userinfo) {
		this.bidinfo_userinfo = bidinfo_userinfo;
	}
	public BidinfoDAO getBidinfodao() {
		return bidinfodao;
	}
	public void setBidinfodao(BidinfoDAO bidinfodao) {
		this.bidinfodao = bidinfodao;
	}
	public UserinfoDAO getUserinfodao() {
		return userinfodao;
	}
	public void setUserinfodao(UserinfoDAO userinfodao) {
		this.userinfodao = userinfodao;
	}	
}