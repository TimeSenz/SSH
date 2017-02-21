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
	//��ѯ����
	public List findAll(int stratLine,Riskinfo riskinfo){
	
		return bidinfodao.findAll(stratLine,riskinfo);
		
	}
	//������˾
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
	//�����״̬��ѯ�����ϱꡱ����δ�ϱꡱ��ѯ���б�
	public List findByState(String state,int stratLine,Riskinfo riskinfo){
		return bidinfodao.findByState(state,stratLine,riskinfo);
	}
	//�������о�ѡ���
	public List findAllFinance(){
		return bidinfodao.findByBidtype("��");
	}
	//��������ɢ�� State
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
        //����µı�
	public void addBidinfo(Bidinfo bidinfo){
		 bidinfodao.save(bidinfo);
	   }
	  //����
    public void modify(Bidinfo vo){
		 bidinfodao.update(vo);
	   }
    //ɾ��
    public void delectBid(Integer id){
    	
    	bidinfodao.delete(bidinfodao.findById(id));
    }
  //����Э��
    public List creatxieyi(Integer userid,Integer bidid){
    	List list=new ArrayList();
    		jkrag.setDeadline(bidinfodao.findById(bidid).getDeadline());
    		jkrag.setFff(0.0);
    		jkrag.setJmoney(bidinfodao.findById(bidid).getNumber());
    	    jkrag.setJname(userinfodao.findById(bidinfodao.findById(bidid).getUserid()).getName());
    		//�³�����Ϣ�Ԫ��jkrag.setProfit();
    	    jkrag.setProfit(bidinfodao.findById(bidid).getNumber()*bidinfodao.findById(bidid).getProfit()*bidinfodao.findById(bidid).getDeadline()/1200);
    	    //���ʽ���·�Ϣ��
    	    jkrag.setRepaytype(bidinfodao.findById(bidid).getRepaytype());
    	    //��Ĵ���ʱ��
    	    jkrag.setCreatTime(bidinfodao.findById(bidid).getCreated());
    	    //������
    	    jkrag.setBidname(bidinfodao.findById(bidid).getReason());
    		jkrag.setRmoney(bidinfodao.findById(bidid).getNumber());
//          ��ͬ�Ŀ�ʼʱ��  ��  �ſ�������ʱ��ʼ��Ч
//    		String Jname=(String) userinfodao.findById(bidinfodao.findById(bidid).getUserid()).getName();
//    		Timestamp starttime=(Timestamp)recordsdao.findStarttime(bidid, Jname).get(0);
//    		jkrag.setStarttime(starttime);
//    	         ��ͬ�Ľ���ʱ��  ��  ��������һ�λ���
//    		String username=userinfodao.findById(userid).getName();
//    		Timestamp endtime=(Timestamp)recordsdao.findTimeByBIdid(bidid, username).get(0);
//    		System.out.println("((((((endtime))))))"+recordsdao.findTimeByBIdid(bidid, username));
//    		jkrag.setEndtime(endtime);
    		//����Ŀ�ʼʱ��   ����˵�һ�λ���
    		jkrag.setStarttime(bidinfodao.findById(bidid).getStart());
    		//����Ľ���ʱ��  ����˵�һ�λ���
    		jkrag.setEndtime(bidinfodao.findById(bidid).getEnd());
    		//jkrag.setTime();ÿ��30 �գ�24:00ǰ���ڼ��ղ�˳�ӣ�
    		jkrag.setTime(bidinfodao.findById(bidid).getStart());
    		//��Ϣ�ܶԪ��jkrag.setTotalmoney(totalmoney);
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
