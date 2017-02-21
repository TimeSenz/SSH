package mobile;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jxl.write.WriteException;
import jxl.write.biff.RowsExceededException;
import mobiledao.BulkbidMassage;
import mobiledao.BuyBid;
import mobiledao.UpdateMsg;
import mobiledao.Withdrawals;

import org.apache.struts2.ServletActionContext;

import action.BidinfoAction;

import com.opensymphony.xwork2.ActionContext;

import service.BidinfoService;
import service.RootactService;
import service.TempdataService;
import service.UserinfoService;
import sms_api.Sms;
import util.DownXls;
import util.HttpOut;
import util.JsonUtil;
import util.RandomNumUtil;
import dao.Bidinfo;
import dao.BidinfoDAO;
import dao.Cominfo;
import dao.CominfoDAO;
import dao.Fenye;
import dao.Finplan;
import dao.Lcract;
import dao.LcractDAO;
import dao.Lcractmerge;
import dao.LcractmergeDAO;
import dao.Lottery;
import dao.LotteryDAO;
import dao.Person_Profit;
import dao.Profit_List;
import dao.Records;
import dao.RecordsDAO;
import dao.Tempdata;
import dao.Userbank;
import dao.UserbankDAO;
import dao.Userinfo;
import dao.UserinfoDAO;

public class MobileAction {
	// Util
	HttpOut out = new HttpOut();
	JsonUtil jUtil = new JsonUtil();

	// DAO
	BidinfoDAO bidinfodao = new BidinfoDAO();
	UserinfoDAO userinfodao = new UserinfoDAO();
	LotteryDAO lotterydao = new LotteryDAO();
	UserbankDAO userbankdao = new UserbankDAO();
	RecordsDAO recordsdao = new RecordsDAO();
	LcractDAO lcractdao = new LcractDAO();
	LcractmergeDAO lcractmergedao = new LcractmergeDAO();
	UserinfoService userinfoservice = new UserinfoService();
	BidinfoService bidinfoservice = new BidinfoService();
	RootactService rootactservice = new RootactService();
	TempdataService tempdataservice = new TempdataService();
	BidinfoAction bidinfoaction = new BidinfoAction();
	CominfoDAO cominfodao=new CominfoDAO();

	// BEAN
	String json;
	String userinfo;
	int currentPage;
	int pageSize;
	String starTime;
	String endTime;
	String captchas;
	String name;
	String phone;
	String checkFlag;

	private ByteArrayInputStream inputStream;

	// 发送手机验证码
	public String randCaptchas() throws Exception {
		RandomNumUtil rdnu = RandomNumUtil.Instance();
		this.setInputStream(rdnu.getImage());// 取得带有随机字符串的图片
		ActionContext.getContext().getSession().put("random", rdnu.getString());// 取得随机字符串放入HttpSession
		HttpServletRequest request = ServletActionContext.getRequest();
		Sms smsUtil = new Sms();
		System.out.println(captchas);
		smsUtil.sms_register(request.getParameter("phone"), captchas);
		// smsUtil.sms_register(request.getParameter("phone"),
		// rdnu.getString());
		return "success";
	}

	// 用户注册
	public void register() {
		Userinfo user = (Userinfo) jUtil.jsonToBean(json, Userinfo.class);
		if (user != null) {
			if (user.getPassword() != null && user.getPhone() != null
					& user.getNickname() != null) {
				user.setXjye(0.00);
				user.setYqsy(0.00);
				user.setZye(0.00);
				user.setJyje(0.00);
				user.setMoneykey("123456");
				user.setWithdrawal(0.00);
				user.setPromoney(0.00);
				user.setAge(0);
				user.setBirthday("");
				user.setJkr("0");
				user.setbulkAve(0.00);
				user.setBulkPromoney(0.00);
				user.setchoiceAve(0.00);
				user.setChoicePromoney(0.00);
				userinfodao.save(user);
				out.HttpOut(jUtil.BeanToJson(user));
			} else {
				out.HttpOut("wrong");
			}

		} else {
			out.HttpOut("fail");
		}
	}

	// 检查用户名
	public void checkUser() {
		Userinfo u = (Userinfo) jUtil.jsonToBean(json, Userinfo.class);
		if (u != null) {
			String req = checkUtil(u.getRemark(), u);
			out.HttpOut(req);
		} else {
			out.HttpOut("wrong");
		}

	}

	// 检查用户
	public String checkUtil(String flag, Userinfo user) {
		ActionContext ac = ActionContext.getContext();
		if (flag.equals("nickname")) {
			if (userinfodao.findByNickname(user.getNickname()).size() != 0) {
				return "fail";
			} else {
				return "success";
			}
		} else if (flag.equals("phone")) {

			if (userinfodao.findByPhone(user.getPhone()).size() != 0) {
				return "fail";
			} else {
				return "success";
			}
		} else if (flag.equals("email")) {

			if (userinfodao.findByEmail(user.getEmail()).size() != 0) {
				return "fail";
			} else {

				return "success";
			}
		} else if (flag.equals("idcard")) {
			if (userinfodao.findByIdcard(user.getIdcard()).size() != 0) {
				return "fail";
			} else {
				return "success";
			}
		} else if (flag.equals("captchas")) {
			if (!ac.getSession().get("random").toString().trim()
					.equals(user.getRemark().trim())
					&& ac.getSession().get("random").toString().trim() != user
							.getRemark().trim()) {
				return "验证码正确";
			} else {
				return "验证码错误";
			}

		}

		return "";
	}

	// 检索所有散标
	public void findAllBulkbid() {

		List bidList = new ArrayList();
		BulkbidMassage flag = (BulkbidMassage) jUtil.jsonToBean(json,
				BulkbidMassage.class);
		if (flag != null) {
			bidList = findByBulkbidMassage(flag);
			JsonUtil jsonUtil = new JsonUtil();
			out.HttpOut(jsonUtil.listToJson(bidList));
		} else {
			out.HttpOut("fail");
		}

	}

	// 散标检索函数
	public List findByBulkbidMassage(BulkbidMassage flag) {
		StringBuffer sqlFlag = new StringBuffer();
		if (flag.getState().equals("new")) {
			sqlFlag.append(" and state!='已下线' and state!='已整合' ");
		} else {

			sqlFlag.append(" and state='已下线' ");
		}

		if (flag.getBidtype() != null && !flag.getBidtype().equals("")) {
			sqlFlag.append(" and bidtype='" + flag.getBidtype() + "' ");
		}
		if (flag.getLoan() != null && !flag.getLoan().equals("")) {
			String[] infoStr = flag.getLoan().split("#");
			sqlFlag.append(" and deadline<=" + infoStr[1] + " and deadline>="
					+ infoStr[0] + "  ");
		}
		List<Bidinfo> list = bidinfodao.findPaging(flag.getCurrentPage(),
				flag.getPageSize(), flag.getStarTime(), flag.getEndTime(),
				sqlFlag.toString());

		if (flag.getGrade() != null) {
			List<Bidinfo> newList = new ArrayList();
			for (Bidinfo b : list) {
				Userinfo u = userinfodao.findById(b.getUserid());
				if (u.getRemark().equals(flag.getGrade())) {
					newList.add(b);

				}
			}
			return newList;
		}

		return list;
	}

	// 检索单个散标记录
	public void showOneBulkbid() {
		Bidinfo bidinfo = bidinfoservice.findById(Integer.parseInt(json));
		Userinfo jkr = userinfoservice.findById(bidinfo.getUserid());
		// 购买人信息
		List lcrbuyinfo = rootactservice.lcrBuyInfo(Integer.parseInt(json));
		// 还款计划
		List repayplan = new ArrayList();
		if (bidinfo.getState().equals("还款中")) {
			try {
				repayplan = rootactservice.repayPlan(Integer.parseInt(json));
			} catch (NumberFormatException e) {
				e.printStackTrace();
			} catch (ParseException e) {
				e.printStackTrace();
			}
		} else {
			repayplan = null;
		}
		List jsonList = new ArrayList();
		jsonList.add(bidinfo);
		jsonList.add(jkr);
		jsonList.add(lcrbuyinfo);
		jsonList.add(repayplan);

		out.HttpOut(jUtil.listToJson(jsonList));
	}

	// 精选理财检索
	public void findAllFinplan() {
		List list = new ArrayList();
		list = bidinfoservice.findAllFinance();
		out.HttpOut(jUtil.listToJson(list));
	}

	// 检索单个精选理财信息
	public void showFinplan() {
		Bidinfo bidinfo = bidinfoservice.findById(Integer.parseInt(json));
		Finplan finplan = new Finplan();
		String[] bidArr = bidinfo.getRemark().split("#");
		finplan.setBid_plan(bidinfo);
		List list = new ArrayList();
		for (int i = 0; i < bidArr.length; i++) {
			list.add(bidinfoservice.findById(new Integer(bidArr[i])));

		}
		finplan.setBidinfolist(list);
		finplan.setPlanname(userinfoservice.findById(
				finplan.getBid_plan().getUserid()).getName());
		finplan.setPlaninfo(finplan.getBid_plan().getReason());
		List lcrbuyinfo = rootactservice.lcrBuyInfo(Integer.parseInt(json));
		// 还款计划
		List repayplan = new ArrayList();
		if (bidinfo.getState().equals("还款中")) {
			try {
				repayplan = rootactservice.repayPlan(Integer.parseInt(json));
			} catch (NumberFormatException e) {
				e.printStackTrace();
			} catch (ParseException e) {
				e.printStackTrace();
			}
		} else {
			repayplan = null;
		}
		List jsonList = new ArrayList();
		// jsonList.add(bidinfo);
		// jsonList.add(finplan);
		jsonList.add(lcrbuyinfo);
		jsonList.add(finplan.getBidinfolist());
		// jsonList.add(repayplan);

		out.HttpOut(jUtil.listToJson(jsonList));
	}

	// 登陆
	public void login() {
		Userinfo userinfo = (Userinfo) jUtil.jsonToBean(json, Userinfo.class);
		if (userinfo != null) {
			Boolean f = false;
			for (Userinfo vo : userinfodao.findAll()) {

				if (vo.getEmail() == null) {
					vo.setEmail("");
				}
				if (vo.getPhone() == null) {
					vo.setPhone("");
				}
				Boolean email = vo.getEmail().equals(userinfo.getEmail())
						&& vo.getPassword().equals(userinfo.getPassword());
				Boolean phone = vo.getPhone().equals(userinfo.getEmail())
						&& vo.getPassword().equals(userinfo.getPassword());
				if (phone || email) {
					out.HttpOut(jUtil.BeanToJson(vo));
					f = true;

				}

			}
			if (!f) {
				out.HttpOut("fail");
			}
		} else {
			out.HttpOut("wrong");
		}

	}

	// 个人理财信息流水
	public void personRecordsAjax() {
		BulkbidMassage flag = (BulkbidMassage) jUtil.jsonToBean(json,
				BulkbidMassage.class);
		Userinfo user = new Userinfo();
		user = (Userinfo) userinfodao.findById(new Integer(flag.getUserid()));
		List perrecordslist = new ArrayList();
		int stratLine = 0;

		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out;

		perrecordslist = userinfoservice.findAllRecords(user.getUserid(),
				stratLine);
		List fenyeList = new ArrayList();
		int min = (flag.getCurrentPage() - 1) * flag.getPageSize();
		int max = (flag.getCurrentPage()) * flag.getPageSize();
		int listsize = perrecordslist.size();
		if (perrecordslist.size() == 0) {
			min = 0;
			max = 0;
		}
		if (perrecordslist.size() < max) {
			max = perrecordslist.size();
		}
		for (int i = min; i < max; i++) {
			fenyeList.add(perrecordslist.get(i));
		}

		JsonUtil jsonUtil = new JsonUtil();
		List listtest = new ArrayList();

		Fenye f = new Fenye();
		f.setSize(perrecordslist.size());
		f.setMaxsize(max);

		listtest.add(fenyeList);
		listtest.add(f);

		String jasonmax = jsonUtil.listToJson(listtest);
		try {
			out = response.getWriter();
			out.print(jasonmax);
			out.flush();
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	// 我的理财
	public void personList() {
		if (json != null) {
			Userinfo u = (Userinfo) jUtil.jsonToBean(json, Userinfo.class);
			out.HttpOut(setPersonProfit(u));
		}

	}

	// 用户提现
	public void withdrawals() {
		Withdrawals w = (Withdrawals) jUtil.jsonToBean(json, Withdrawals.class);

		if (w != null) {
			Double money = w.getMoney(); // 提现金额
			String key = w.getKey();// 提现密码
			int yhkid = w.getYhkid();// 银行卡号
			Double realMoney = money * 0.002;
			if (realMoney < 3) {

				realMoney = 3.0;
			}
			if (realMoney > 50) {
				realMoney = 50.0;
			}
			Userinfo user = userinfoservice.findByid(w.getUserid());
			user.setXjye(user.getXjye() - money - realMoney);
			user.setZye(user.getXjye() + user.getYqsy() + user.getJyje()); // 计算账户余额
			userinfoservice.modify(user);
			// System.out.println("user+++++++"+user.getName());
			if (key.equals(user.getMoneykey())) {
				Lcract lcract = new Lcract();
				lcract.setLcrid(user.getUserid());
				lcract.setMoney(money);
				lcract.setState("未批准");
				Timestamp nowtime = new Timestamp(System.currentTimeMillis());
				lcract.setTime(nowtime);
				lcract.setRemark("提现");
				lcract.setUserbankid(yhkid);
				lcractdao.save(lcract);
				// 测试lcractmerge
				Lcractmerge lcractmerge = new Lcractmerge();
				lcractmerge.setLcrid(user.getUserid());
				lcractmerge.setMoney(money);
				lcractmerge.setState("未批准");
				lcractmerge.setTime(nowtime);
				lcractmerge.setRemark("提现");
				lcractmerge.setUserbankid(yhkid);
				lcractmerge.setParameter(lcract.getId().toString());
				lcractmergedao.save(lcractmerge);
			}
			out.HttpOut(jUtil.BeanToJson(user));
		} else {
			out.HttpOut("fail");
		}
	}

	// 根据账户登录信息，检索理财账户信息
	public String setPersonProfit(Userinfo user) {
		if (tempdataservice.findByLcrid(user.getUserid()) != null) {
			Map map = SplitList(tempdataservice.findByLcrid(user.getUserid()));
			Person_Profit person_profit_bulk = new Person_Profit();
			Person_Profit person_profit_choice = new Person_Profit();
			List<Tempdata> bulk_list = (List) map.get("bulk_list");
			List<Tempdata> choice_list = (List) map.get("choice_list");
			List<Profit_List> bulk_list_show = new ArrayList();
			List<Profit_List> choice_list_show = new ArrayList();
			// 账户资产
			Double finance_accounts_bluk = 0.0;
			Double finance_accounts_choice = 0.0;
			// 加权平均收益率
			int avg_profit_bluk = 0;
			int avg_profit_choice = 0;

			for (Tempdata temp : bulk_list) {
				finance_accounts_bluk = temp.getMoney() + finance_accounts_bluk;
				avg_profit_bluk = (int) (double) bidinfoservice.findById(
						temp.getBidid()).getProfit()
						+ avg_profit_bluk;

				Profit_List p = new Profit_List();
				p.setBidtype(bidinfoservice.findById(temp.getBidid())
						.getBidtype());
				p.setBidid(temp.getBidid());
				p.setBidname(bidinfoservice.findById(temp.getBidid())
						.getReason());
				p.setBuytime(temp.getBuytime());
				p.setEarnmoney(earnMoney(temp));
				p.setJoinmoney(temp.getMoney());
				p.setProfit(bidinfoservice.findById(temp.getBidid())
						.getProfit());
				p.setState(bidinfoservice.findById(temp.getBidid()).getState());
				// 投资散标list
				bulk_list_show.add(p);
			}
			if (bulk_list.size() != 0) {
				avg_profit_bluk = avg_profit_bluk / bulk_list.size();

			} else {
				avg_profit_bluk = 0;
			}

			person_profit_bulk.setAvg_profit(avg_profit_bluk);
			person_profit_bulk.setFinance_accounts(finance_accounts_bluk);
			for (Tempdata temp : choice_list) {
				finance_accounts_choice = temp.getMoney()
						+ finance_accounts_choice;
				avg_profit_choice = (int) (double) bidinfoservice.findById(
						temp.getBidid()).getProfit()
						+ avg_profit_choice;

				Profit_List p = new Profit_List();
				p.setBidtype(bidinfoservice.findById(temp.getBidid())
						.getBidtype());
				p.setBidid(temp.getBidid());
				p.setBidname(bidinfoservice.findById(temp.getBidid())
						.getReason());
				p.setBuytime(temp.getBuytime());
				p.setEarnmoney(earnMoney(temp));
				p.setJoinmoney(temp.getMoney());
				p.setProfit(bidinfoservice.findById(temp.getBidid())
						.getProfit());
				p.setState(bidinfoservice.findById(temp.getBidid()).getState());
				// 精选理财list
				choice_list_show.add(p);
			}
			if (choice_list.size() != 0) {
				avg_profit_choice = avg_profit_choice / choice_list.size();

			} else {
				avg_profit_choice = 0;
			}

			person_profit_choice.setAvg_profit(avg_profit_choice);
			person_profit_choice.setFinance_accounts(finance_accounts_choice);

			if (user.getRemark().equals("bulk")) {
				return jUtil.listToJson(bulk_list_show);
			} else if (user.getRemark().equals("choice")) {
				return jUtil.listToJson(choice_list_show);
			}

			return "fail";
		}
		return "fail";

	}

	// 根据精选/散标进行拆分
	public Map SplitList(List<Tempdata> list) {
		List<Tempdata> bulk_list = new ArrayList();
		List<Tempdata> choice_list = new ArrayList();
		for (Tempdata tempdata : list) {
			Bidinfo bid = bidinfoservice.findById(tempdata.getBidid());
			if (bid.getBidtype().equals("精")) {
				choice_list.add(tempdata);
			} else {
				bulk_list.add(tempdata);
			}
		}
		Map map = new HashMap();
		map.put("bulk_list", bulk_list);
		map.put("choice_list", choice_list);
		return map;
	}

	// 根据理财人、标信息 计算收益
	public Double earnMoney(Tempdata t) {
		Double money = 0.0;
		List<Records> list = recordsdao.earnMoney(t.getBidid(), t.getLcrid());
		for (Records r : list) {
			money = money + r.getMoney();

		}
		return money;
	}

	// 安全信息
	public void userModify() {

		Userinfo u = (Userinfo) jUtil.jsonToBean(json, Userinfo.class);
		if (u.getRemark() != null) {
			Userinfo ui = userinfodao.findById(u.getUserid());
			if (u.getRemark().equals("name")) {
				ui.setName(u.getName());
				ui.setIdcard(u.getIdcard());
				userinfodao.update(ui);
				out.HttpOut("success");
			} else if (u.getRemark().equals("phone")) {
				ui.setPhone(u.getPhone());
				userinfodao.update(ui);
				out.HttpOut("success");

			} else if (u.getRemark().equals("moneykey")) {
				ui.setMoneykey(u.getMoneykey());
				userinfodao.update(ui);
				out.HttpOut("success");
			}
		} else {
			out.HttpOut("fail");
		}

	}

	// 检索银行卡列表
	public void findBankByUserid() {

		Userinfo us = (Userinfo) jUtil.jsonToBean(json, Userinfo.class);
		if (us != null) {

			List bankList = (List) userbankdao.findByUserIdList(us.getUserid());
			out.HttpOut(jUtil.listToJson(bankList));
		} else {
			out.HttpOut("fail");
		}
	}

	// 添加银行卡
	public void addUserbank() {

		Userbank ub = (Userbank) jUtil.jsonToBean(json, Userbank.class);
		if (ub != null) {
			if (ub.getRemark().equals("save")) {
				userbankdao.save(ub);
			} else if (ub.getRemark().equals("update")) {
				Userbank u = userbankdao.findById(ub.getUserbankid());
				u.setBankname(ub.getBankname());
				u.setBanknumbr(ub.getBanknumbr());
				userbankdao.updata(u);
			} else if (ub.getRemark().equals("delete")) {
				Userbank u = userbankdao.findById(ub.getUserbankid());
				userbankdao.delete(u);
			}
			out.HttpOut("success");
		} else {
			out.HttpOut("fail");
		}
	}

	// 买标
	public void userBuyBid() {
		BuyBid bb = (BuyBid) jUtil.jsonToBean(json, BuyBid.class);
		if (bb != null) {
			bidinfoaction.buyBid(
					userinfodao.findById(new Integer(bb.getUserid())),
					bidinfodao.findById(new Integer(bb.getBidid())),
					bb.getMoney());
			out.HttpOut(jUtil.BeanToJson(userinfodao.findById(new Integer(bb
					.getUserid()))));
		} else {
			out.HttpOut("fail");
		}

	}
	
	//版本号
	public void versionUpdate(){
		UpdateMsg u=new UpdateMsg();
		List l=cominfodao.findAll();
		Cominfo c=(Cominfo) l.get(l.size()-1);
		u.setInfo(c.getInfo());
		u.setVersionCode(c.getVersioncode());
		u.setVersionName(c.getVersionname());
		
		out.HttpOut(jUtil.BeanToJson(u));
		
	}

	// 提现
	// public void

	// 下载抽奖人员excel文件
	public String doExcel() {
		List<Lottery> list = new ArrayList();
		list = lotterydao.findAll();
		String path = ServletActionContext.getServletContext().getRealPath("/");
		DownXls xls = new DownXls();
		try {
			xls.lotteryXls(path, list);
		} catch (RowsExceededException e) {
			e.printStackTrace();
		} catch (WriteException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return "success";
	}

	// 添加抽奖人员名单
	public void lotteryWechat() {
		Lottery l = new Lottery();
		l.setName(name);
		l.setPhone(phone);
		l.setUserid(lotterydao.findAll().size() + 1);
		lotterydao.save(l);

	}

	public BidinfoDAO getBidinfodao() {
		return bidinfodao;
	}

	public void setBidinfodao(BidinfoDAO bidinfodao) {
		this.bidinfodao = bidinfodao;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public String getStarTime() {
		return starTime;
	}

	public void setStarTime(String starTime) {
		this.starTime = starTime;
	}

	public String getEndTime() {
		return endTime;
	}

	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}

	public String getUserinfo() {
		return userinfo;
	}

	public void setUserinfo(String userinfo) {
		this.userinfo = userinfo;
	}

	public UserinfoDAO getUserinfodao() {
		return userinfodao;
	}

	public void setUserinfodao(UserinfoDAO userinfodao) {
		this.userinfodao = userinfodao;
	}

	public HttpOut getOut() {
		return out;
	}

	public void setOut(HttpOut out) {
		this.out = out;
	}

	public JsonUtil getjUtil() {
		return jUtil;
	}

	public void setjUtil(JsonUtil jUtil) {
		this.jUtil = jUtil;
	}

	public String getJson() {
		return json;
	}

	public void setJson(String json) {
		this.json = json;
	}

	public ByteArrayInputStream getInputStream() {
		return inputStream;
	}

	public void setInputStream(ByteArrayInputStream inputStream) {
		this.inputStream = inputStream;
	}

	public String getCaptchas() {
		return captchas;
	}

	public void setCaptchas(String captchas) {
		this.captchas = captchas;
	}

	public UserinfoService getUserinfoservice() {
		return userinfoservice;
	}

	public void setUserinfoservice(UserinfoService userinfoservice) {
		this.userinfoservice = userinfoservice;
	}

	public BidinfoService getBidinfoservice() {
		return bidinfoservice;
	}

	public void setBidinfoservice(BidinfoService bidinfoservice) {
		this.bidinfoservice = bidinfoservice;
	}

	public RootactService getRootactservice() {
		return rootactservice;
	}

	public void setRootactservice(RootactService rootactservice) {
		this.rootactservice = rootactservice;
	}

	public LotteryDAO getLotterydao() {
		return lotterydao;
	}

	public void setLotterydao(LotteryDAO lotterydao) {
		this.lotterydao = lotterydao;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public UserbankDAO getUserbankdao() {
		return userbankdao;
	}

	public void setUserbankdao(UserbankDAO userbankdao) {
		this.userbankdao = userbankdao;
	}

	public BidinfoAction getBidinfoaction() {
		return bidinfoaction;
	}

	public void setBidinfoaction(BidinfoAction bidinfoaction) {
		this.bidinfoaction = bidinfoaction;
	}

	public RecordsDAO getRecordsdao() {
		return recordsdao;
	}

	public void setRecordsdao(RecordsDAO recordsdao) {
		this.recordsdao = recordsdao;
	}

	public TempdataService getTempdataservice() {
		return tempdataservice;
	}

	public void setTempdataservice(TempdataService tempdataservice) {
		this.tempdataservice = tempdataservice;
	}

	public LcractDAO getLcractdao() {
		return lcractdao;
	}

	public void setLcractdao(LcractDAO lcractdao) {
		this.lcractdao = lcractdao;
	}

	public LcractmergeDAO getLcractmergedao() {
		return lcractmergedao;
	}

	public void setLcractmergedao(LcractmergeDAO lcractmergedao) {
		this.lcractmergedao = lcractmergedao;
	}

	public String getCheckFlag() {
		return checkFlag;
	}

	public void setCheckFlag(String checkFlag) {
		this.checkFlag = checkFlag;
	}

	public CominfoDAO getCominfodao() {
		return cominfodao;
	}

	public void setCominfodao(CominfoDAO cominfodao) {
		this.cominfodao = cominfodao;
	}

}
