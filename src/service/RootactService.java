package service;
import java.math.BigDecimal;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import dao.Bidinfo;
import dao.BidinfoDAO;
import dao.Cominfo;
import dao.CominfoDAO;
import dao.Jkract;
import dao.JkractDAO;
import dao.Lcract;
import dao.LcractDAO;
import dao.Lcractmerge;
import dao.LcractmergeDAO;
import dao.Person_Phone;
import dao.Records;
import dao.RecordsDAO;
import dao.Records_Nick;
import dao.Root_Jkract;
import dao.Root_Lcract;
import dao.Tempdata;
import dao.TempdataDAO;
import dao.Userbank;
import dao.UserbankDAO;
import dao.Userinfo;
import dao.UserinfoDAO;
import dao.repayPlan;
public class RootactService {
	BidinfoService bidinfoservice=new BidinfoService();
	Root_Lcract root_lcract=new Root_Lcract();
	 Records_Nick records_nick=new  Records_Nick();
	JkractDAO jkractdao=new JkractDAO();
	LcractDAO lcractdao=new LcractDAO();
	BidinfoDAO bidinfodao=new BidinfoDAO();
	UserinfoDAO userinfodao=new UserinfoDAO();
	TempdataDAO tempdatadao=new TempdataDAO();
	RecordsDAO recordsdao=new RecordsDAO();
	CominfoDAO cominfodao=new CominfoDAO();
	UserbankDAO userbankdao = new UserbankDAO();
	LcractmergeDAO lcractmergedao=new LcractmergeDAO();
	 Map actmap=new HashMap();
	 //检索关于用户信息
	 public Map findBidByUser(Userinfo user){
		 List lclist=new ArrayList();
		 List jklist=new ArrayList();
		 lclist=recordsdao.findByIntoinfo(user.getName());
		 Map map=new HashMap();
         map.put("lclist", lclist);
         return map; 
	 }
	 //检索借款人所有可操作表
	  public List findJkractlist(String flag,int stratLine){
		     List jkr_allowed_list =new ArrayList();
		     List jkr_not_list=new ArrayList();
		     List jkr_confirm_list=new ArrayList();
			 if(flag.equals("已批准")){
				 for(Jkract jkr : jkractdao.findByState("已批准",stratLine)){
					 Root_Jkract root_jkract=new Root_Jkract();
					 root_jkract.setId(jkr.getId());
					 root_jkract.setBid_reason(bidinfodao.findById(jkr.getBidid()).getReason());
					 root_jkract.setBidid(jkr.getBidid());
					 root_jkract.setJkr_id(bidinfodao.findById(jkr.getBidid()).getUserid());
					 root_jkract.setJkr_name(userinfodao.findById(bidinfodao.findById(jkr.getBidid()).getUserid()).getName());
					 root_jkract.setRemark(jkr.getRemark());
					 root_jkract.setState(jkr.getState());
					 root_jkract.setTime(jkr.getTime());
					 root_jkract.setZcrje(jkr.getZcrje());
					 jkr_allowed_list.add(root_jkract);
					 root_jkract=null;
				 }
				 return jkr_allowed_list;
			 }else if(flag.equals("未批准")){
				 for(Jkract jkr : jkractdao.findByState("未批准",stratLine)){
					 Root_Jkract root_jkract=new Root_Jkract();
					 root_jkract.setId(jkr.getId());
					 root_jkract.setBid_reason(bidinfodao.findById(jkr.getBidid()).getReason());
					 root_jkract.setBidid(jkr.getBidid());
					 root_jkract.setJkr_id(bidinfodao.findById(jkr.getBidid()).getUserid());
					 root_jkract.setJkr_name(userinfodao.findById(bidinfodao.findById(jkr.getBidid()).getUserid()).getName());
					 root_jkract.setRemark(jkr.getRemark());
					 root_jkract.setState(jkr.getState());
					 root_jkract.setTime(jkr.getTime());
					 root_jkract.setZcrje(jkr.getZcrje());
				     jkr_not_list.add(root_jkract);
					 root_jkract=null;
					 }
				     return jkr_not_list;
			 }else if(flag.equals("已确认")){
	               for(Jkract jkr:jkractdao.findByState("已确认",stratLine)){
	            	   Root_Jkract root_jkract=new Root_Jkract();
						 root_jkract.setId(jkr.getId());
						 root_jkract.setBid_reason(bidinfodao.findById(jkr.getBidid()).getReason());
						 root_jkract.setBidid(jkr.getBidid());
						 root_jkract.setJkr_id(bidinfodao.findById(jkr.getBidid()).getUserid());
						 root_jkract.setJkr_name(userinfodao.findById(bidinfodao.findById(jkr.getBidid()).getUserid()).getName());
						 root_jkract.setRemark(jkr.getRemark());
						 root_jkract.setState(jkr.getState());
						 root_jkract.setTime(jkr.getTime());
						 root_jkract.setZcrje(jkr.getZcrje());	
	  				     jkr_confirm_list.add(root_jkract);  
	  				     root_jkract=null;	 
	  			 }
	               
				 return jkr_confirm_list;
			 }
             return null;
//			 actmap.put("jkr_allowed_list", jkr_allowed_list);
//			 actmap.put("jkr_confirm_list", jkr_confirm_list);
//			 actmap.put("jkr_allowed_list", jkr_allowed_list);	
		    }
	  //整合act信息
	  public Root_Lcract integrate(Lcract lcract){
		     //查询银行卡方法
		     Userbank ubank; 
		     if(lcract.getUserbankid()==null){
		    	 ubank = userbankdao.findByUserId(lcract.getLcrid());
		     }else{
		    	 ubank = userbankdao.findByUserBankId(lcract.getUserbankid());
		     } 
	    	 Root_Lcract root_lcract=new Root_Lcract();
	    	 root_lcract.setId(lcract.getId());
	    	 
	    	 if(ubank==null){
	    		 root_lcract.setBankid("---");
	    		//读取银行卡名称
		    	 root_lcract.setBankname("---");
	    		//读取银行卡号
		    	 root_lcract.setBanknumber("---");
	    	 }else{
	    		//读取银行卡名称
		    	 root_lcract.setBankname(ubank.getBankname());
		    	//读取银行卡ID
	    		 root_lcract.setBankid(ubank.getUserbankid().toString());
	    		//读取银行卡号
		    	 root_lcract.setBanknumber(ubank.getBanknumbr());
	    	 }
	    	 
	    	 
	    	 root_lcract.setBidid(lcract.getBidid());
	    	
	    	 
	    	 Double realMoney=lcract.getMoney()*0.002;
	    	 if(realMoney<3){
	    		 
	    		 realMoney=3.0;
	    	 }
	    	 if(realMoney>50){
	    		 realMoney=50.0;
	    	 }
	    	 root_lcract.setCharge(realMoney);
	    
	    	 root_lcract.setMoney(lcract.getMoney());
	    	 root_lcract.setPayment("Fengfu");
	    	 root_lcract.setRemark(lcract.getRemark());
	    	 root_lcract.setState(lcract.getState());
	    	 root_lcract.setTime(lcract.getTime());
	    	 root_lcract.setLcrname(userinfodao.findById(lcract.getLcrid()).getName());
	    	 return root_lcract;
	  }
	  
	  
	  
	  //测试lcractmerge
	  //整合act信息
	  public Root_Lcract integrater(Lcractmerge lcractmerge){
		     //查询银行卡方法
		     Userbank ubank; 
		     if(lcractmerge.getUserbankid()==null){
		    	 ubank = userbankdao.findByUserId(lcractmerge.getLcrid());
		     }else{
		    	 ubank = userbankdao.findByUserBankId(lcractmerge.getUserbankid());
		     } 
	    	 Root_Lcract root_lcract=new Root_Lcract();
	    	 root_lcract.setId(lcractmerge.getId());
	    	 
	    	 if(ubank==null){
	    		 root_lcract.setBankid("---");
	    		//读取银行卡名称
		    	 root_lcract.setBankname("---");
	    		//读取银行卡号
		    	 root_lcract.setBanknumber("---");
	    	 }else{
	    		//读取银行卡名称
		    	 root_lcract.setBankname(ubank.getBankname());
		    	//读取银行卡ID
	    		 root_lcract.setBankid(ubank.getUserbankid().toString());
	    		//读取银行卡号
		    	 root_lcract.setBanknumber(ubank.getBanknumbr());
	    	 }
	    	 
	    	 
	    	 root_lcract.setBidid(lcractmerge.getBidid());
	    	 
	    	 //测试lcractmerge
	    	 if(lcractmerge.getBidid()!=null){
	    		
	    		 root_lcract.setBidreason(bidinfodao.findById(lcractmerge.getBidid()).getReason());
		    	 }
	    	
	    	 
	    	 Double realMoney=lcractmerge.getMoney()*0.002;
	    	 if(realMoney<3){
	    		 
	    		 realMoney=3.0;
	    	 }
	    	 if(realMoney>50){
	    		 realMoney=50.0;
	    	 }
	    	 root_lcract.setCharge(realMoney);
	    
	    	 root_lcract.setMoney(lcractmerge.getMoney());
	    	 root_lcract.setPayment("Fengfu");
	    	 root_lcract.setRemark(lcractmerge.getRemark());
	    	 root_lcract.setState(lcractmerge.getState());
	    	 root_lcract.setTime(lcractmerge.getTime());
	    	 
	    	 
	    	 if(lcractmerge.getUserbankid()!=null){
	    	 root_lcract.setLcrname(userinfodao.findById(lcractmerge.getLcrid()).getName());
	    	 }
	    	 return root_lcract;
	  }
	  
	  
	  
	  
	  //分页优化test
	  //检索所有可操作理财人操作表
		//测试lcractmerge
	  public List findLcractList(String flag,int stratLine){
		     List lcr_allowed_list =new ArrayList();
		     List lcr_not_list=new ArrayList();
		     List lcr_confirm_list=new ArrayList();
		     if(flag.equals("未批准")){
		    	// System.out.println("检索未批准理财人信息");
		    	 //System.out.println("list大小"+lcractdao.findByState("未批准").size());
//		    	 for(Lcractmerge lcractmerge:lcractmergedao.findByState("未批准",stratLine)){
//		    		 //System.out.println("ID："+lcract.getLcrid()+"金额"+lcract.getMoney()+"时间"+lcract.getTime());
//			    	 Root_Lcract root_lcrac= integrate(lcractmerge);
//			    	 lcr_not_list.add(root_lcrac);
//			    	// System.out.println("lcr_not_list.size:  "+lcr_not_list.size());
//			     }
		     	 for(Lcractmerge lcractmerge:lcractmergedao.findByState("未批准",stratLine)){
			    	 Root_Lcract root_lcrac= integrater(lcractmerge);
			    	 lcr_not_list.add(root_lcrac);                                
			     }
		    	 return lcr_not_list;
		        }else if(flag.equals("已批准")){
		    	 for(Lcractmerge lcractmerge:lcractmergedao.findByState("已批准",stratLine)){
		    		 Root_Lcract root_lcrac= integrater(lcractmerge);
			    	 lcr_allowed_list.add(root_lcrac);
			     }
		    	 return lcr_allowed_list;
		     }else if(flag.equals("已确认")){
			    	 for(Lcractmerge lcractmerge:lcractmergedao.findByState("已确认",stratLine)){
				    	 Root_Lcract root_lcrac=  integrater(lcractmerge);
				    	 lcr_confirm_list.add(root_lcrac);
				     }
			    	 return lcr_confirm_list;
			     }
		  return null;
	  }
	  
	//改标Jkract状态
	public void changeJkract(Integer id,String flag){
		Jkract jkract=jkractdao.findById(id);
		Bidinfo bidinfo=bidinfodao.findById(jkract.getBidid());
		Userinfo userinfo=userinfodao.findById(bidinfo.getUserid());
		if(flag.endsWith("2")){
			jkract.setState("已确认");
			jkractdao.update(jkract);			
			System.out.println("改变状态已发生");
			insertRecords(jkract, bidinfo, userinfo);
			bidinfo.setState("还款中");
			bidinfodao.update(bidinfo);
			
			//测试lcractmerge
			 insertLcractmerge(bidinfo.getNumber(),bidinfodao.findById(jkract.getBidid()));
			
			
			 
			 
			
			List <Tempdata> tempdatalist=tempdatadao.findByBidid(jkract.getBidid());
			System.out.println(tempdatalist.size());
			for(Tempdata temp:tempdatalist){
				insertLcract(temp,bidinfodao.findById(jkract.getBidid()));
			}
		}else {
			jkract.setState("未批准");
			jkractdao.update(jkract);
			System.out.println("状态改变至未批准状态");
			
			
		}
	}
	//改变Lcract状态
	//测试lcractmerge
	public void changeLcract(Integer id,String flag){
		//测试lcractmerge
         Lcractmerge mer=lcractmergedao.findById(id);
		 Lcract lcract=lcractdao.findById(Integer.parseInt(mer.getParameter()));
		Userinfo userinfo=userinfodao.findById(lcract.getLcrid());		
        if(flag.endsWith("2")){
        	if(lcract.getBidid()!=null){
        		Bidinfo bidinfo=bidinfodao.findById(lcract.getBidid());
            	lcract.setState("已确认");
    			lcractdao.update(lcract);			
    			insertRecords(lcract, bidinfo, userinfo);
        	}
        	if(lcract.getRemark()!=null&&lcract.getRemark().equals("提现")){
        		lcract.setState("已确认");
        		lcractdao.update(lcract);
        		
        		mer.setState("已确认");
        		lcractmergedao.update(mer);
        		//withdrawal提现金额
        		userinfo.setWithdrawal(userinfo.getWithdrawal()+lcract.getMoney());
        		userinfodao.update(userinfo);
        		System.out.println("提现确认开始");
        		insertRecords(lcract, userinfo);
        	}	
		}else{
			lcract.setState("未批准");
			lcractdao.update(lcract);
			
			mer.setState("未批准");
    		lcractmergedao.update(mer);
			System.out.println("状态改变至未批准状态");
			
		}
	}
	
	// 获取tempdata ,bidinfo.repaytype
	public void insertLcract(Tempdata tempdata,Bidinfo bidinfo){
		System.out.println("++++++++"+bidinfo.getRepaytype());
		Timestamp nowtime = new Timestamp(System.currentTimeMillis()); 
		Calendar cal = Calendar.getInstance();
		cal.setTime(nowtime);
		cal.add(Calendar.MONTH, bidinfo.getDeadline());
		bidinfo.setStart(nowtime);
	    bidinfo.setEnd(new Timestamp(cal.getTime().getTime()));
	    bidinfodao.update(bidinfo);
		if(bidinfo.getRepaytype().equals("月返息")){
			System.out.println("月返息类 满标 流转");
			
			double money =tempdata.getMoney()*bidinfo.getProfit()/12/100;
			for(int i=0;i<bidinfo.getDeadline();i++){
				Lcract lcract=new Lcract();
				lcract.setBidid(bidinfo.getId());
				lcract.setLcrid(tempdata.getLcrid());
				lcract.setMoney(money);
				lcract.setState("未批准");
				lcract.setRemark("息#"+money);
				Calendar tempcal=Calendar.getInstance();
				tempcal.setTime(nowtime);
				tempcal.add(Calendar.MONTH, i);
				lcract.setTime(new Timestamp(tempcal.getTime().getTime()));
				if(i==bidinfo.getDeadline()-1){
					lcract.setMoney(money+tempdata.getMoney());
					lcract.setRemark("息加本#"+tempdata.getMoney()+"#"+money);
				}
				lcractdao.save(lcract);
				//System.out.println("lcract.time ："+lcract.getTime()+"   Money :"+lcract.getMoney());测试lcract生成信息
			}
		}else if(bidinfo.getRepaytype().equals("等额本息")){
				System.out.println("等额本息 满标 流转");
				//（钱*月利息*月份+钱）/月份
				//月利息=年化/12
				//利润
				double lirun =tempdata.getMoney()*bidinfo.getProfit()/12/100;
				//本金
				double benjin =tempdata.getMoney()/bidinfo.getDeadline();
				//月返
				double money =benjin+lirun;
				for (int i = 0; i < bidinfo.getDeadline(); i++) {
					Lcract lcract=new Lcract();
					lcract.setBidid(bidinfo.getId());
					lcract.setLcrid(tempdata.getLcrid());
					lcract.setMoney(money);
					lcract.setState("未批准");
					Calendar tempcal=Calendar.getInstance();
					tempcal.setTime(nowtime);
					tempcal.add(Calendar.MONTH, i);
					lcract.setRemark("息加本#"+tempdata.getMoney()+"#"+money);
					lcract.setTime(new Timestamp(tempcal.getTime().getTime()));
					lcractdao.save(lcract);
				}
		}else if(bidinfo.getRepaytype().equals("到期还本付息")){
			    System.out.println("到期还本付息类 满标 流转");
			
			    double money =tempdata.getMoney()*bidinfo.getProfit()/12/100*bidinfo.getDeadline();
			
			    int i=bidinfo.getDeadline();
				Lcract lcract=new Lcract();
				lcract.setBidid(bidinfo.getId());
				lcract.setLcrid(tempdata.getLcrid());
				//lcract.setMoney(money);
				lcract.setState("未批准");
				Calendar tempcal=Calendar.getInstance();
				tempcal.setTime(nowtime);
				tempcal.add(Calendar.MONTH, i);
				lcract.setTime(new Timestamp(tempcal.getTime().getTime()));
				lcract.setMoney(money+tempdata.getMoney());
				lcract.setRemark("息加本#"+tempdata.getMoney()+"#"+money);
				lcractdao.save(lcract);
				//System.out.println("lcract.time ："+lcract.getTime()+"   Money :"+lcract.getMoney());测试lcract生成信息
			
		}
	}
	

	//测试lcractmerge
	 public void insertLcractmerge(Double totalmoney,Bidinfo bidinfo){
		Timestamp nowtime = new Timestamp(System.currentTimeMillis()); 
		Calendar cal = Calendar.getInstance();
		cal.setTime(nowtime);
		cal.add(Calendar.MONTH, bidinfo.getDeadline());
		if(bidinfo.getRepaytype().equals("月返息")){
			double money =totalmoney*bidinfo.getProfit()/12/100;
		for(int i=0;i<bidinfo.getDeadline();i++){
			Lcractmerge lcractmerge=new Lcractmerge();
			lcractmerge.setBidid(bidinfo.getId());
			lcractmerge.setMoney(money);
			lcractmerge.setState("未批准");
			Calendar tempcal=Calendar.getInstance();
			tempcal.setTime(nowtime);
			tempcal.add(Calendar.MONTH, i);
			lcractmerge.setTime(new Timestamp(tempcal.getTime().getTime()));
			if(i==bidinfo.getDeadline()-1){
				lcractmerge.setMoney(money+totalmoney);
			}
			lcractmergedao.save(lcractmerge);	
		}	
		}
		else if(bidinfo.getRepaytype().equals("等额本息")){
			//利润
			double lirun=totalmoney*bidinfo.getProfit()/12/100;
			//本金
			double benjin=totalmoney/bidinfo.getDeadline();
			//月返
			double money=benjin+lirun;
			for(int i=0;i<bidinfo.getDeadline();i++){
				Lcractmerge lcractmerge=new Lcractmerge();
				lcractmerge.setBidid(bidinfo.getId());
				lcractmerge.setMoney(money);
				lcractmerge.setState("未批准");
				Calendar tempcal=Calendar.getInstance();
				tempcal.setTime(nowtime);
				tempcal.add(Calendar.MONTH, i);
				lcractmerge.setTime(new Timestamp(tempcal.getTime().getTime()));
				lcractmerge.setRemark("息加本#"+totalmoney+"#"+money);
				lcractmergedao.save(lcractmerge);
			}	
		}
        else if(bidinfo.getRepaytype().equals("到期还本付息")){
        	double money=totalmoney*bidinfo.getProfit()/12/100*bidinfo.getDeadline();
        	int i=bidinfo.getDeadline();
        	Lcractmerge lcractmerge=new Lcractmerge();
        	lcractmerge.setBidid(bidinfo.getId());
            lcractmerge.setState("未批准");
        	Calendar tempcal=Calendar.getInstance();
			tempcal.setTime(nowtime);
			tempcal.add(Calendar.MONTH, i);
			lcractmerge.setTime(new Timestamp(tempcal.getTime().getTime()));
			lcractmerge.setMoney(money+totalmoney);
			lcractmerge.setRemark("息加本#"+totalmoney+"#"+money);
			lcractmergedao.save(lcractmerge);	
		}
	 }
	
	
	//生成还款计划1
		public List repayPlan(Integer id) throws ParseException{
			Bidinfo bidinfo=bidinfodao.findById(id);
			return insertRepayPlan(bidinfo.getNumber(),bidinfodao.findById(id));
		}
		//生成还款计划2
	     public List insertRepayPlan(Double totalmoney,Bidinfo bidinfo) throws ParseException{
	    	List planlist=new ArrayList();
	    	DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
			format.setLenient(false);
			String otime=lcractdao.tTime(bidinfo.getId());
			Timestamp ttime = new Timestamp(format.parse(otime).getTime());
			if(ttime!=null){
	 		Calendar cal = Calendar.getInstance();
	 		cal.setTime(ttime);
	 		cal.add(Calendar.MONTH, bidinfo.getDeadline());
	 		bidinfo.setStart(ttime);
	 	    bidinfo.setEnd(new Timestamp(cal.getTime().getTime()));
	 		if(bidinfo.getRepaytype().equals("月返息")){
	 			double money =totalmoney*bidinfo.getProfit()/12/100;
	 			for(int i=0;i<bidinfo.getDeadline();i++){
	 				repayPlan repayplan=new repayPlan();
	 				repayplan.setBidid(bidinfo.getId());  
	 				BigDecimal b = new BigDecimal(money);
	 			    double f = b.setScale(2,BigDecimal.ROUND_HALF_UP).doubleValue();
	 				repayplan.setMoney(f);
	 				Calendar tempcal=Calendar.getInstance();
	 				tempcal.setTime(ttime);
	 				tempcal.add(Calendar.MONTH, i);
	 				repayplan.setTime(new Timestamp(tempcal.getTime().getTime()));
	 				if(i==bidinfo.getDeadline()-1){
		 				BigDecimal b1 = new BigDecimal(money+totalmoney);
		 			    double f1 = b1.setScale(2,BigDecimal.ROUND_HALF_UP).doubleValue();
		 				repayplan.setMoney(f1);
	 				}
	 				String daotime=lcractdao.firstTime(bidinfo.getId());
	 				Timestamp firsttime = new Timestamp(format.parse(daotime).getTime());
	 				if(firsttime==null){
	 					repayplan.setState("已偿还");
	 				}else{
		 				if(repayplan.getTime().compareTo(firsttime)==-1){
		 					repayplan.setState("已偿还");
		 				}else{
		 					repayplan.setState("未偿还");
		 				}
	 				}
	 				
	 				planlist.add(repayplan);
	 			}
	 		}else if(bidinfo.getRepaytype().equals("等额本息")){
	 			
	 		}else if(bidinfo.getRepaytype().equals("到期还本付息")){
	 			    double money =totalmoney*bidinfo.getProfit()/12/100*bidinfo.getDeadline();
	 			    int i=bidinfo.getDeadline();
	 			    repayPlan repayplan=new repayPlan();
	 			    repayplan.setBidid(bidinfo.getId());
	 			    BigDecimal b = new BigDecimal(money);
	 			    double f = b.setScale(2,BigDecimal.ROUND_HALF_UP).doubleValue();
	 				repayplan.setMoney(f);
	 				Calendar tempcal=Calendar.getInstance();
	 				tempcal.setTime(ttime);
	 				tempcal.add(Calendar.MONTH, i);
	 				repayplan.setTime(new Timestamp(tempcal.getTime().getTime()));
	 				repayplan.setMoney(money+totalmoney);
	 				planlist.add(repayplan);
	 		}
	 			 return planlist;
			}else{
				return planlist=null;
			}
	 	
	     }
	
	
	
	
	//插入流水  借款人
	public void insertRecords(Jkract jkract,Bidinfo bidinfo,Userinfo userinfo){
		System.out.println("调用insertRecords");
		Records records=new Records();
		Cominfo cominfo=new Cominfo();
		cominfo=(Cominfo) cominfodao.findAll().get(0);
		records.setIntoinfo(userinfo.getName());
		records.setMoney(bidinfo.getNumber());
		records.setOuttoinfo("公司托管账户");			
		records.setPaytype("Fengpay");  //支付方式
		records.setPeople(userinfo.getName());
		records.setRemark(jkract.getRemark());
		cominfo.setTgzh(cominfo.getTgzh()-bidinfo.getMoney());          //此处更新公司托管账户余额
		records.setOutacc(cominfo.getTgzh());
		records.setBidid(bidinfo.getId());
		records.setUserid(bidinfo.getUserid());
		Timestamp nowtime = new Timestamp(System.currentTimeMillis()); 
		records.setTime(nowtime);
		records.setType("放款到借款人账户");
		records.setRemain("");
	    System.out.println("插入成功");
		recordsdao.save(records);
		cominfodao.update(cominfo);
	}
	//插入流水  理财人 收益流水
	public void insertRecords(Lcract lcract,Bidinfo bidinfo,Userinfo userinfo){
		//System.out.println("调用insertRecords");
		Records records=new Records();	
		Cominfo cominfo=new Cominfo();
		cominfo=cominfodao.findById(0);
		records.setIntoinfo(userinfo.getName());
		records.setMoney(lcract.getMoney());
		records.setOuttoinfo("公司托管账户");                      //此处更新公司托管账户余额
		cominfo.setTgzh(cominfo.getTgzh()-lcract.getMoney());
		records.setOutacc(cominfo.getTgzh());
		userinfo.setXjye(userinfo.getXjye()+lcract.getMoney());   //更新用户现金金额账户信息
		records.setIntoacc(userinfo.getXjye());
		records.setBidid(bidinfo.getId());
		records.setUserid(userinfo.getUserid());
		records.setPaytype("Fengpay");        //此处可选择支付方式
		records.setPeople(userinfodao.findById(bidinfo.getUserid()).getName());
		records.setRemark("划扣成功");
	    records.setRemain("");
		Timestamp nowtime = new Timestamp(System.currentTimeMillis()); 
		records.setTime(nowtime);
		records.setType("借款人还款");
		recordsdao.save(records);
		cominfodao.update(cominfo);
		String remarkFlag=lcract.getRemark(); 
		String flags[]=remarkFlag.split("#");
		if(flags[0].equals("息")){
			
			userinfo.setYqsy(userinfo.getYqsy()-Double.parseDouble(flags[1]));
		}else{
			
			userinfo.setYqsy(userinfo.getYqsy()-Double.parseDouble(flags[2]));
			userinfo.setJyje(userinfo.getJyje()-Double.parseDouble(flags[1]));
		}
		//更新用户散标或精选理财统计信息
		System.out.println("理财人购买信息"+lcract.getMoney());
		if(bidinfo.getBidtype().equals("精")){
			//更新加权平均收益
			//calculateProfit("精",userinfo);
			if(userinfo.getChoicePromoney()==null){
				userinfo.setChoicePromoney(0.0);
			}
			userinfo.setChoicePromoney(userinfo.getChoicePromoney()+lcract.getMoney());
			System.out.println("更新用户精选统计:"+userinfo.getChoicePromoney());
		}else{
			if(userinfo.getBulkPromoney()==null){
				
				userinfo.setBulkPromoney(0.0);
			}
			userinfo.setBulkPromoney(userinfo.getBulkPromoney()+lcract.getMoney());
			System.out.println("更新用户散标统计:"+userinfo.getBulkPromoney());
		}
		userinfodao.update(userinfo);
		
	}
	//计算加权平均收益
//	public void calculateProfit(String flag,Userinfo userinfo){
//		if(flag.equals("精")){
//			 Map map=SplitList(tempdataservice.findByLcrid(user.getUserid()));
//			for (int i = 0; i < list.size() - 1; i++) {
//				for (int j = list.size() - 1; j > i; j--) {
//					if (list.get(j).equals(list.get(i))) {
//						list.remove(j);
//					}
//				}
//			}
//		
//		}else{
//			
//			
//		}
//		
//	}
	//根据精选/散标进行拆分
		public Map SplitList(List<Tempdata> list){
			List <Tempdata>bulk_list=new ArrayList();
			List <Tempdata>choice_list=new ArrayList();
			for(Tempdata tempdata:list){
				Bidinfo bid=bidinfoservice.findById(tempdata.getBidid());
				if(bid.getBidtype().equals("精")){
					bulk_list.add(tempdata);
				}else{
					choice_list.add(tempdata);
				}
			}
			Map map=new HashMap();
			map.put("bulk_list", bulk_list);
			map.put("choice_list", choice_list);
			return map;
		}
	//插入流水  理财人提现
	public void insertRecords(Lcract lcract,Userinfo userinfo){
		Records records=new Records();
		Cominfo cominfo=new Cominfo();
		cominfo=(Cominfo) cominfodao.findAll().get(0);
		records.setOuttoinfo("公司托管账户");      //此处更新公司托管账户余额
	    cominfo.setTgzh(cominfo.getTgzh()-lcract.getMoney());
	    records.setOutacc(cominfo.getTgzh());
	    records.setUserid(userinfo.getUserid());
		records.setMoney(lcract.getMoney());
		records.setPaytype("Fengpay");
		records.setPeople(userinfo.getName());
		records.setType("提现");
		records.setIntoacc(userinfo.getXjye());
		records.setRemain(userinfo.getXjye().toString());  //插入当前用户现金金额
		records.setIntoinfo(userbankdao.findById(lcract.getUserbankid()).getBanknumbr());
		Timestamp nowtime=new Timestamp(System.currentTimeMillis());
		records.setTime(nowtime);
		recordsdao.save(records);
		chargeRecords(lcract,userinfo);
		cominfodao.update(cominfo);
	}
	//计算手续费
	
	public void chargeRecords(Lcract lcract,Userinfo userinfo){
		System.out.println("手续费");
		Records records=new Records();
		Cominfo cominfo=new Cominfo();
		cominfo=(Cominfo) cominfodao.findAll().get(0);
		Double charge=lcract.getMoney()*0.002;        //计算手续费
		
		if(charge<3){
			
			charge=3.0;
		}
		if(charge>50){
			charge=50.0;
		}
		
		records.setMoney(charge);
		records.setPaytype("Fengpay");
		records.setIntoinfo("公司账户");               //此处更新公司账户余额
		cominfo.setGszh(cominfo.getGszh()+charge);
		records.setIntoacc(cominfo.getGszh());
		records.setOuttoinfo("公司托管账户");		   //此处更新公司托管账户余额
		cominfo.setTgzh(cominfo.getTgzh()-charge);
		records.setOutacc(cominfo.getTgzh());
		records.setUserid(userinfo.getUserid());
		Timestamp nowtime=new Timestamp(System.currentTimeMillis());
		records.setTime(nowtime);
		records.setPeople(userinfo.getName());
		records.setType("提现手续费");	
		recordsdao.save(records);
		cominfodao.update(cominfo);
	}
	/**
	 * 修改日期：2015-01-01
	 * 修改需求：带查询条件
	 * 修改人：贾凡
	 * 原来方法备份：
	 * 
		public List findAllRecords(int stratLine){
		List records_list=new ArrayList();
		for(Records rec : recordsdao.findAllByTime(stratLine)){
//			 records_nick.getRe().setRecid(rec.getRecid());
//			 records_nick.getRe().setType(rec.getType());
//			 records_nick.getRe().setIntoinfo(rec.getIntoinfo());
//			 records_nick.getRe().setOuttoinfo(rec.getOuttoinfo());
//			 records_nick.getRe().setMoney(rec.getMoney());
//			 records_nick.getRe().setPaytype(rec.getPaytype());
//			 records_nick.getRe().setTime(rec.getTime());
//			 records_nick.getRe().setPeople(rec.getPeople());
//			 records_nick.getRe().setRemark(rec.getRemark());
			 Records_Nick records_nick=new  Records_Nick();
			 records_nick.setRe(recordsdao.findById(rec.getRecid()));
			 records_nick.setNickname(userinfodao.findById(rec.getUserid()).getNickname());
			 System.out.println("recid:"+rec.getRecid());
			 records_list.add(records_nick);
			 records_nick=null;
			 }
        return records_list;
	}
	 * 
	 * */
	//int stratLine,String jsType,String jsPeople,Timestamp startTime,Timestamp endTime
	//检索流水
	public List findAllRecordss(String jsType,String jsPeople,String startTime,String endTime){
		List records_list=new ArrayList();
		for(Records rec : recordsdao.findAllByTimeTow(jsType,jsPeople,startTime,endTime)){
			 Records_Nick records_nick=new  Records_Nick();
			 records_nick.setRe(recordsdao.findById(rec.getRecid()));
			 records_nick.setNickname(userinfodao.findById(rec.getUserid()).getNickname());
			 records_list.add(records_nick);
			 records_nick=null;
		}
        return records_list;
	}
	public List findAllRecords(int stratLine,String jsType,String jsPeople,String startTime,String endTime){
		List records_list=new ArrayList();
		for(Records rec : recordsdao.findAllByTime(stratLine,jsType,jsPeople,startTime,endTime)){
			 Records_Nick records_nick=new  Records_Nick();
			 records_nick.setRe(recordsdao.findById(rec.getRecid()));
			 records_nick.setNickname(userinfodao.findById(rec.getUserid()).getNickname());
			 records_list.add(records_nick);
			 records_nick=null;
		}
        return records_list;
	}
	//理财人购买表信息
	public List lcrBuyInfo(Integer id){
		List list=new ArrayList();
		int lcrid=1;
		List <Tempdata>tempdatalist=tempdatadao.findByBidid(id);
		for(Tempdata tempdata:tempdatalist ){
			Root_Lcract lcr=new Root_Lcract();
			lcr.setMoney(tempdata.getMoney());
			lcr.setLcrname(userinfodao.findById(tempdata.getLcrid()).getNickname());
			lcr.setTime(tempdata.getBuytime());
			lcr.setId(lcrid);
			lcrid=lcrid+1;
			list.add(lcr);
		}
		System.out.println("lcrBuyInfo.size"+list.size());
	    return list;	
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
	public Root_Lcract getRoot_lcract() {
		return root_lcract;
	}
	public void setRoot_lcract(Root_Lcract root_lcract) {
		this.root_lcract = root_lcract;
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
	public Map getActmap() {
		return actmap;
	}
	public void setActmap(Map actmap) {
		this.actmap = actmap;
	}
	public TempdataDAO getTempdatadao() {
		return tempdatadao;
	}
	public void setTempdatadao(TempdataDAO tempdatadao) {
		this.tempdatadao = tempdatadao;
	}
	public RecordsDAO getRecordsdao() {
		return recordsdao;
	}
	public void setRecordsdao(RecordsDAO recordsdao) {
		this.recordsdao = recordsdao;
	}
	public CominfoDAO getCominfodao() {
		return cominfodao;
	}
	public void setCominfodao(CominfoDAO cominfodao) {
		this.cominfodao = cominfodao;
	}
	public BidinfoService getBidinfoservice() {
		return bidinfoservice;
	}
	public void setBidinfoservice(BidinfoService bidinfoservice) {
		this.bidinfoservice = bidinfoservice;
	}
	public UserbankDAO getUserbankdao() {
		return userbankdao;
	}
	public void setUserbankdao(UserbankDAO userbankdao) {
		this.userbankdao = userbankdao;
	}
	public Records_Nick getRecords_nick() {
		return records_nick;
	}
	public void setRecords_nick(Records_Nick records_nick) {
		this.records_nick = records_nick;
	}
	public LcractmergeDAO getLcractmergedao() {
		return lcractmergedao;
	}
	public void setLcractmergedao(LcractmergeDAO lcractmergedao) {
		this.lcractmergedao = lcractmergedao;
	}

}