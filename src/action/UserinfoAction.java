package action;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jxl.write.WriteException;
import jxl.write.biff.RowsExceededException;

import org.apache.poi.util.SystemOutLogger;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;

import dao.Bidinfo;
import dao.BidinfoDAO;
import dao.Fenye;
import dao.Lcract;
import dao.LcractDAO;
import dao.Lcractmerge;
import dao.LcractmergeDAO;
import dao.Person_Profit;
import dao.Profit_List;
import dao.Records;
import dao.RecordsDAO;
import dao.Tempdata;
import dao.Userbank;
import dao.UserbankDAO;
import dao.Userinfo;
import dao.UserinfoDAO;
import service.BidinfoService;
import service.RecordsService;
import service.RootactService;
import service.TempdataService;
import service.UserinfoService;
import sms_api.Sms;
import util.JsonUtil;

public class UserinfoAction {
	Userinfo userinfo = new Userinfo();
	UserinfoService userinfoservice = new UserinfoService();
	List userinfolist = new ArrayList();
	BidinfoService bidinfoservice = new BidinfoService();
	List bidinfolist = new ArrayList();
	UserinfoDAO userinfodao = new UserinfoDAO();
	LcractDAO lcractdao = new LcractDAO();
	RecordsDAO recordsdao = new RecordsDAO();
	RootactService rootactservice = new RootactService();
	RecordsService recordsservice = new RecordsService();
	Records records = new Records();

	TempdataService tempdataservice = new TempdataService();
	LcractmergeDAO lcractmergedao = new LcractmergeDAO();
	// ������Ϣ
	String NewPhone;
	String NewMoneykey;
	String NewEmail;
	String newPassword2;
	String NewName;
	String NewIdcard;

	int currentPageAjax;
	int pageSizeAjax;
	String starTimeAjax;
	String endTimeAjax;
	List perrecordslist = new ArrayList();
	List tzsblist = new ArrayList();
	List jxlclist = new ArrayList();
	List wdzqlist = new ArrayList();
	List allfinancelist = new ArrayList();
	List userlist = new ArrayList();

	// �û�����DAO
	UserbankDAO userbankdao = new UserbankDAO();
	// �û�����
	Userbank userbank = new Userbank();

	String checkFlag;
	/**
	 * ��ҳ��ѯ
	 * 
	 * @return
	 */
	private int currentPage;
	private final int pageSize = 10;
	private int totalPage;
	private int areaPage;
	private String newTxtEmails;

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

	/*******************************************************
	 * begin************************************************************
	 * �޸��ˣ��ַ�********************************************************
	 * �޸����ڣ�2015-01-13******************************************************
	 * �������ܣ���̨--�ͷ�--�Ż�ȯ**************************************************
	 ***********************************************************************************************************************/
	// �����Ż�ȯ
	public void outCouponAjax() throws RowsExceededException, WriteException,
			IOException {
		HttpServletRequest request = ServletActionContext.getRequest();
		// ҳ��ȡ��������ѯֵ
		String uid = request.getParameter("uid");
		String cs = request.getParameter("cs");
		String type = request.getParameter("type");
		String[] uStr = uid.split(",");
		// System.out.println(uStr.length);
		Timestamp nowtime = new Timestamp(System.currentTimeMillis());
		for (int i = 0; i < uStr.length; i++) {
			int a = Integer.parseInt(uStr[i]);
			// ��ѯ�û���Ϣ
			Userinfo user = userinfoservice.findById(a);
			user.setZye(user.getZye() + Double.parseDouble(cs));
			user.setXjye(user.getXjye() + Double.parseDouble(cs));
			// �޸��û����ʲ�
			userinfodao.update(user);
			// �����ˮ
			records.setType(type);
			records.setUserid(user.getUserid());
			records.setIntoinfo("��˾�й��˻�");
			records.setMoney(Double.parseDouble(cs));
			records.setPaytype("Fengpay");
			records.setTime(nowtime);
			records.setPeople(user.getName());
			records.setUserid(user.getUserid());
			records.setIntoacc(Double.parseDouble(cs));
			records.setOutacc(user.getZye());
			recordsdao.save(records);
		}

	}

	// ��ѯ�����û�
	// public String findAllCoupon(){
	public void findAllCouponAjax() throws RowsExceededException,
			WriteException, IOException {
		HttpServletRequest request = ServletActionContext.getRequest();
		// ҳ��ȡ��������ѯֵ
		String uid = request.getParameter("userinfo_uid_coupon");
		String nickname = request.getParameter("userinfo_nickname_coupon");
		String phone = request.getParameter("userinfo_phone_coupon");
		String name = request.getParameter("userinfo_name_coupon");
		String idcard = request.getParameter("userinfo_idcard_coupon");
		String zye = request.getParameter("userinfo_zye_coupon");
		// ��֤nullֵ
		if (uid == null || uid.trim() == "") {
			uid = "";
		}
		if (nickname == null || nickname.trim() == "") {
			nickname = "";
		}
		if (phone == null || phone.trim() == "") {
			phone = "";
		}
		if (name == null || name.trim() == "") {
			name = "";
		}
		if (idcard == null || idcard.trim() == "") {
			idcard = "";
		}
		if (zye == null || zye.trim() == "") {
			zye = "";
		}
		// ����ģ����ѯ������list<userinfo>��
		userlist = userinfoservice.selectfindAllUserInfo(uid, nickname, phone,
				name, idcard, zye);
		// List totalList=userinfodao.findAllTotalNum();//������
		// return "success";
		/********************************************************************************************************************************
		 ********************************************************************* ��ҳ����****************************************************
		 *******************************************************************************************************************************/
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out;
		JsonUtil jsonUtil = new JsonUtil();
		List fenyeList = new ArrayList();
		int min = (currentPageAjax - 1) * pageSizeAjax;
		int max = (currentPageAjax) * pageSizeAjax;
		if (max == 0) {
			max = 10;
		}
		int listsize = userlist.size();
		if (listsize == 0) {
			min = 0;
			max = 0;
		}
		if (listsize < max) {
			max = listsize;
		}
		for (int i = min; i < max; i++) {
			fenyeList.add(userlist.get(i));
			// System.out.println(i);
		}
		// String jason=jsonUtil.listToJson(fenyeList);
		List listtest = new ArrayList();

		Fenye f = new Fenye();
		f.setSize(listsize);
		f.setMaxsize(max);
		listtest.add(fenyeList);
		listtest.add(f);
		String jasonmax = jsonUtil.listToJson(listtest);
		// String jasonmax = jsonUtil.BeanToJson(listsize);
		// System.out.println(jason);
		// System.out.println(jasonmax);
		try {
			out = response.getWriter();
			// out.print(jason);
			out.print(jasonmax);
			// System.out.println(jasonmax);
			out.flush();
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	/*********************************************************
	 * end************************************************************
	 * �޸��ˣ��ַ�********************************************************
	 * �޸����ڣ�2015-01-13******************************************************
	 * �������ܣ���̨--�ͷ�--�Ż�ȯ**************************************************
	 ***********************************************************************************************************************/
	// �ص�½
	public String UserRefresh() {
		ActionContext ac = ActionContext.getContext();
		Userinfo u = (Userinfo) ac.getSession().get("userinfo");
		if (u.getUserid() != null) {
			u = userinfoservice.findById(u.getUserid());
		}
		userinfo = (Userinfo) userinfodao.findByPhone(u.getPhone()).get(0);
		ac.getSession().remove("userinfo");
		ac.getSession().put("userinfo", userinfo);

		return "success";
	}

	// ��¼
	public String login() throws UnsupportedEncodingException {
		HttpServletRequest request = ServletActionContext.getRequest();
		// System.out.println("������"+userinfo.getEmail());
		// System.out.println("���룺"+userinfo.getPassword());
		bidinfolist = bidinfoservice.findPaging(1, 5, "2010-1-1", "2020-1-1");
		List<Userinfo> list = userinfoservice.findAll();
		ActionContext ac = ActionContext.getContext();
		Boolean jump = false;
		for (Userinfo vo : list) {
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
			// System.out.println("vo info  "+vo.getEmail()+"   "+vo.getPhone()+"  "+vo.getPassword()+"  "+email+phone);
			if (phone || email) {
				Userinfo user = userinfoservice.findById(vo.getUserid());
				List<Records> lclist = (List) rootactservice
						.findBidByUser(user).get("lclist");
				// System.out.println("lclist.size()"+lclist.size());

				List session_lclist = new ArrayList();
				for (Records rc : lclist) {
					//System.out.println("rc.getBidid:" + rc.getBidid());
					if (rc.getBidid() == null || rc.getBidid() == 0) {
						// lclist.remove(rc);
						// System.out.println("remove:"+rc.getRecid());
					} else {
						// Double
						// pro=bidinfoservice.findById(rc.getBidid()).getProfit();
						// rc.setRemain(pro.toString());
						// System.out.println(rc.getRemain());
						// session_lclist.add(rc);
					}
				}
				// System.out.println("lclist.size"+lclist.size());
				ac.getSession().put("userinfo", user);
				ac.getSession().put("lclist", lclist);
				ac.getSession().put("loginflag", "1");
				// setPersonProfit(userinfo);
				// System.out.println("��¼�ɹ�");
				jump = true;
				List<Userbank> u = userbankdao.findByUserid(user.getUserid());
				ac.getSession().put("userbank", u);
				// System.out.println("�ɹ���ת");
				return "success";
			} else {
				ac.getSession().put("loginflag", "-1");
			}
		}
		// System.out.println("jump.value:"+jump);
		if (jump) {
			// System.out.println("�ɹ���ת");
			return "success";
		} else {
			// System.out.print("��¼ʧ��");
			return "wrong";
		}
	}

	// ��ѯ�����û� ���Ͷ���
	public String findAll() {

		if (currentPage == 0) {
			currentPage = 1;
		}
		if (areaPage == 0) {
			areaPage = 1;
		}
		int stratLine = (currentPage - 1) * pageSize;// ��ǰҳ��֮ǰ������
		userlist = userinfoservice.findAllU(stratLine);
		List totalList = userinfodao.findAllTotalNum();// ������
		if (totalList == null || totalList.size() == 0) {
			totalPage = 0;
		}
		if (totalList.size() <= 10) {
			totalPage = 1;
		} else {
			if (totalList.size() % 10 == 0) {
				totalPage = totalList.size() / 10;
			} else {
				totalPage = totalList.size() / 10 + 1;
			}
		}
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("totalPage", new Integer(totalPage));
		request.setAttribute("areaPage", new Integer(areaPage));
		request.setAttribute("currentPage", new Integer(currentPage));
		return "success";
	}

	// �����˻���¼��Ϣ����������˻���Ϣ
	public void setPersonProfit(Userinfo user) {
		ActionContext ac = ActionContext.getContext();
		// System.out.println(user);
		if (tempdataservice.findByLcrid(user.getUserid()) != null) {
			Map map = SplitList(tempdataservice.findByLcrid(user.getUserid()));
			Person_Profit person_profit_bulk = new Person_Profit();
			Person_Profit person_profit_choice = new Person_Profit();
			List<Tempdata> bulk_list = (List) map.get("bulk_list");
			List<Tempdata> choice_list = (List) map.get("choice_list");
			List<Profit_List> bulk_list_show = new ArrayList();
			List<Profit_List> choice_list_show = new ArrayList();
			// �˻��ʲ�
			Double finance_accounts_bluk = 0.0;
			Double finance_accounts_choice = 0.0;
			// ��Ȩƽ��������
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
				// Ͷ��ɢ��list
				bulk_list_show.add(p);
			}
			if (bulk_list.size() != 0) {
				avg_profit_bluk = avg_profit_bluk / bulk_list.size();

			} else {
				avg_profit_bluk = 0;
			}

			// System.out.println("@@@@@@@@@finance_accounts_bluk:"+finance_accounts_bluk);
			// System.out.println("@@@@@@@@@avg_profit_bluk:"+avg_profit_bluk);
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
				// ��ѡ���list
				choice_list_show.add(p);
			}
			if (choice_list.size() != 0) {
				avg_profit_choice = avg_profit_choice / choice_list.size();

			} else {
				avg_profit_choice = 0;
			}
			// System.out.println("@@@@@@@@@finance_accounts_choice:"+finance_accounts_choice);
			// System.out.println("@@@@@@@@@avg_profit_choice:"+avg_profit_choice);

			person_profit_choice.setAvg_profit(avg_profit_choice);
			person_profit_choice.setFinance_accounts(finance_accounts_choice);
			// ���뻺����
			ac.getSession().put("person_profit_bulk", person_profit_bulk);
			ac.getSession().put("person_profit_choice", person_profit_choice);

			// list
			ac.getSession().put("bulk_list_show", bulk_list_show);
			ac.getSession().put("choice_list_show", choice_list_show);

		}

	}

	// ���ݾ�ѡ/ɢ����в��
	public Map SplitList(List<Tempdata> list) {
		List<Tempdata> bulk_list = new ArrayList();
		List<Tempdata> choice_list = new ArrayList();
		for (Tempdata tempdata : list) {
			Bidinfo bid = bidinfoservice.findById(tempdata.getBidid());
			if (bid.getBidtype().equals("��")) {
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

	// ��������ˡ�����Ϣ ��������
	public Double earnMoney(Tempdata t) {
		Double money = 0.0;
		List<Records> list = recordsdao.earnMoney(t.getBidid(), t.getLcrid());
		for (Records r : list) {
			money = money + r.getMoney();

		}
		return money;
	}

	// ע��
	public String register() {
		System.out.println("ע��");
		bidinfolist = bidinfoservice.findPaging(1, 5, "2010-1-1", "2020-1-1");
		ActionContext ac = ActionContext.getContext();
		// ac.getSession().put("userinfo",
		// userinfodao.findById(userinfo.getUserid()));
		ac.getSession().put("userinfo", userinfo);
		ac.getSession().put("loginflag", "1");
		// System.out.println("UserinfoAction_register_save");
		HttpServletRequest request = ServletActionContext.getRequest();

		if (request.getParameter("flag").equals("identification")) {
			String userid = request.getParameter("userid");
			Userinfo us = userinfoservice.findByid(new Integer(userid));
			us.setName(NewName);
			us.setIdcard(NewIdcard);

			if (request.getParameter("jump").equals("ture")) {
				System.out.println("jumpinfo:" + request.getParameter("jump"));
				us.setName("");
				us.setIdcard("");
			}

			us.setEmail("");
			userinfoservice.modify(us);
			ac.getSession().put("userinfo",
					userinfoservice.findByid(new Integer(userid)));
			return "identification";
		} else {
			Sms smsUtil = new Sms();

			System.out.println("�ֻ���" + userinfo.getPhone());
			System.out.println("������֤�룺" + ac.getSession().get("random")
					+ " ��ȡ��֤�룺" + userinfo.getRemark());
			if (!ac.getSession().get("random").toString().trim()
					.equals(userinfo.getRemark().trim())
					&& ac.getSession().get("random").toString().trim() != userinfo
							.getRemark().trim()) {
				HttpServletResponse response = ServletActionContext
						.getResponse();
				response.setContentType("text/html;charset=UTF-8");
				StringBuffer output;
				try {
					java.io.PrintWriter p = response.getWriter();
					output = new StringBuffer();
					output.append("<script type=\"text/javascript\">");
					output.append("alert(\"���������֤���д�������������\");");
					output.append("window.location=\"user.action?user=register\";");
					output.append("</script> ");
					ac.getSession().clear();
					p.write(output.toString());
					p.flush();
					p.close();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}

			userinfo.setWithdrawal(0.0);
			userinfo.setPromoney(0.0);
			userinfo.setXjye(0.0);
			userinfo.setJkr("0");
			userinfo.setJyje(0.0);
			userinfo.setYqsy(0.0);
			userinfo.setZye(0.0);
			userinfo.setMoneykey("123456");
			userinfo.setBulkPromoney(0.0);
			userinfo.setChoicePromoney(0.0);
			// ��֤�Ƿ�����ʱ�洢����֤�룬�������֤�������
			if (userinfo.getRemark().length() == 6) {
				// ǿ�����Email
				userinfo.setRemark("");
			}
			if (!ac.getSession().get("random").toString().trim()
					.equals(userinfo.getRemark().trim())
					&& ac.getSession().get("random").toString().trim() != userinfo
							.getRemark().trim()) {
				userinfoservice.save(userinfo);
			} else {

			}

			return "register";
		}
	}

	// ����û���
	public void checkUser() {
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html; charset=utf-8");
		// System.out.println("checkFlag="+checkFlag+" requestInfo:"+userinfo.getNickname()+"  result:"+checkUtil(checkFlag,userinfo));
		PrintWriter out;

		try {

			out = response.getWriter();
			out.print(checkUtil(checkFlag, userinfo));

			out.flush();
			out.close();

		} catch (IOException e) {
			e.printStackTrace();
		}

	}

	public String checkUtil(String flag, Userinfo user) {
		if (flag.equals("nickname")) {
			if (userinfodao.findByNickname(user.getNickname()).size() != 0) {
				return "�ǳ��Ѵ���";
			} else {
				return "�ǳƿ���ʹ��";
			}
		} else if (flag.equals("phone")) {

			if (userinfodao.findByPhone(user.getPhone()).size() != 0) {
				return "�ֻ����ѱ�ע��";
			} else {
				return "�ֻ��ſ���ʹ��";
			}
		} else if (flag.equals("email")) {

			if (userinfodao.findByEmail(user.getEmail()).size() != 0) {
				return "�����ѱ�ע��";
			} else {

				return "�������ʹ��";
			}
		} else if (flag.equals("idcard")) {
			if (userinfodao.findByIdcard(user.getIdcard()).size() != 0) {
				return "���֤�����ѱ�ע��";
			} else {
				return "���֤�������ʹ��";
			}
		}

		return "";
	}

	// ����û����п�
	public String addUserBank() {
		ActionContext ac = ActionContext.getContext();
		Userinfo user = (Userinfo) ac.getSession().get("userinfo");
		if (userinfo.getUserid() != null) {
			userinfo = userinfoservice.findById(userinfo.getUserid());
		}
		userbank.setUserid(user.getUserid());
		HttpServletRequest request = ServletActionContext.getRequest();
		userbankdao.save(userbank);
		System.out.println("��ת�ж�:"+userbank.getBankname());
		List<Userbank> u = userbankdao.findByUserid(userbank.getUserid());
		ac.getSession().put("userbank", u);
		return "success";
	}

	// �޸��û����п�
	public String updataUserBank() {
		ActionContext ac = ActionContext.getContext();
		Userinfo user = (Userinfo) ac.getSession().get("userinfo");
		if (userinfo.getUserid() != null) {
			userinfo = userinfoservice.findById(userinfo.getUserid());
		}
		userbank.setUserid(user.getUserid());
		HttpServletRequest request = ServletActionContext.getRequest();
		// System.out.println(userbank.getUserid());
		// System.out.println(request.getParameter("kname"));
		userbank.setBankname(request.getParameter("kname"));
		userbank.setBanknumbr(request.getParameter("kh"));
		userbank.setUserbankid(Integer.parseInt(request.getParameter("kid")));
		userbankdao.updata(userbank);
		List<Userbank> u = userbankdao.findByUserid(userbank.getUserid());
		ac.getSession().put("userbank", u);
		return "success";
	}

	// ɾ���û����п�
	public String deleteUserBank() {
		ActionContext ac = ActionContext.getContext();
		Userinfo user = (Userinfo) ac.getSession().get("userinfo");
		if (userinfo.getUserid() != null) {
			userinfo = userinfoservice.findById(userinfo.getUserid());
		}
		userbank.setUserid(user.getUserid());
		HttpServletRequest request = ServletActionContext.getRequest();
		userbankdao.delete(userbank);
		List<Userbank> ua = userbankdao.findByUserid(userbank.getUserid());
		ac.getSession().put("userbank", ua);
		return "success";
	}

	// public void userBank(Userinfo u) {
	// userbankdao.findByUserid(userid);
	// }
	// ע��
	public String logout() {
		ActionContext ac = ActionContext.getContext();
		ac.getSession().clear();
		ac.getSession().put("loginflag", "0");
		return "logout";
	}

	// ����userinfo�����Ƹ�����Ϣ
	public String modify() {
		HttpServletRequest request = ServletActionContext.getRequest();

		Userinfo user = userinfoservice.findById(new Integer(request
				.getParameter("userid")));
		user.setAge(userinfo.getAge());
		user.setHighedu(userinfo.getHighedu());
		user.setGreduate(userinfo.getGreduate());
		user.setMairital(userinfo.getMairital());
		user.setAddress(userinfo.getAddress());
		user.setCompany(userinfo.getCompany());
		user.setComsize(userinfo.getComsize());
		user.setJob(userinfo.getJob());
		user.setIncome(userinfo.getIncome());
		user.setWorktime(userinfo.getWorktime());
		user.setHomecon(userinfo.getHomecon());
		user.setHomeloan(userinfo.getHomeloan());
		user.setCarcon(userinfo.getCarcon());
		user.setCarloan(userinfo.getCarloan());
		user.setCrreport(userinfo.getCrreport());
		user.setDegreecon(userinfo.getDegreecon());
		user.setWorkcon(userinfo.getWorkcon());
		user.setIncomecon(userinfo.getIncomecon());
		user.setFieldcon(userinfo.getFieldcon());
		user.setRemark(userinfo.getRemark());

		userinfoservice.modify(user);
		return "success";
	}

	// �û����Ƹ�����Ϣ
	public String userModify() {
		HttpServletRequest request = ServletActionContext.getRequest();
		System.out
				.println("asdasdasdasdasdas" + request.getParameter("userid"));
		Userinfo user = userinfoservice.findById(new Integer(request
				.getParameter("userid")));
		String flag = request.getParameter("flag");
		if (flag.endsWith("wanshan")) {
			user.setName(NewName);
			user.setIdcard(NewIdcard);
		}
		if (NewPhone != null && !NewPhone.equals("") && flag.equals("NewPhone")) {
			user.setPhone(NewPhone);
		}
		if (NewMoneykey != null && !NewMoneykey.equals("")
				&& flag.equals("NewMoneykey")) {
			user.setMoneykey(NewMoneykey);
		}
		if (NewEmail != null && !NewEmail.equals("") && flag.equals("NewEmail")) {
			user.setEmail(NewEmail);
		}
		if (newPassword2 != null && !newPassword2.equals("")
				&& flag.equals("newPassword2")) {
			user.setPassword(newPassword2);
		}
		if (NewName != null && !NewName.equals("") && flag.equals("NewName")) {
			user.setName(NewName);
		}
		if (NewIdcard != null && !NewIdcard.equals("")
				&& flag.equals("NewIdcard")) {
			user.setIdcard(NewIdcard);
		}

		// user.setEmail(newTxtEmails);
		userinfoservice.modify(user);
		ActionContext ac = ActionContext.getContext();
		ac.getSession().put("userinfo", userinfodao.findById(user.getUserid()));
		return "success";
	}

	// ͨ��id��ѯ�û�
	public String findById() {
		HttpServletRequest request = ServletActionContext.getRequest();
		userinfo = userinfoservice.findById(Integer.parseInt(request
				.getParameter("userinfo")));
		return "ok";
	}

	// ��������
	public String personCenter() {

		ActionContext ac = ActionContext.getContext();
		userinfo = (Userinfo) ac.getSession().get("userinfo");
		if (userinfo.getUserid() != null) {
			userinfo = userinfoservice.findById(userinfo.getUserid());
		}
		return "success";
	}

	// ����
	public String withdrawals() {
		HttpServletRequest request = ServletActionContext.getRequest();
		Double money = Double.parseDouble(request.getParameter("money")); // ���ֽ��

		Double realMoney = money * 0.002;
		if (realMoney < 3) {

			realMoney = 3.0;
		}
		if (realMoney > 50) {
			realMoney = 50.0;
		}

		int yhkid = Integer.parseInt(request.getParameter("yhkid"));
		String key = request.getParameter("key");
		ActionContext ac = ActionContext.getContext();

		Userinfo user = userinfoservice.findByid(new Integer(request
				.getParameter("userid")));
		if (userinfo.getUserid() != null) {
			userinfo = userinfoservice.findById(userinfo.getUserid());
		}
		user.setXjye(user.getXjye() - money - realMoney);
		user.setZye(user.getXjye() + user.getYqsy() + user.getJyje()); // �����˻����
		userinfoservice.modify(user);
		// System.out.println("user+++++++"+user.getName());
		if (key.equals(user.getMoneykey())) {
			Lcract lcract = new Lcract();
			lcract.setLcrid(user.getUserid());
			lcract.setMoney(money);
			lcract.setState("δ��׼");
			Timestamp nowtime = new Timestamp(System.currentTimeMillis());
			lcract.setTime(nowtime);
			lcract.setRemark("����");
			lcract.setUserbankid(yhkid);
			lcractdao.save(lcract);
			System.out.println(lcract.getId());

			// ����lcractmerge
			Lcractmerge lcractmerge = new Lcractmerge();
			lcractmerge.setLcrid(user.getUserid());
			lcractmerge.setMoney(money);
			lcractmerge.setState("δ��׼");
			lcractmerge.setTime(nowtime);
			lcractmerge.setRemark("����");
			lcractmerge.setUserbankid(yhkid);
			lcractmerge.setParameter(lcract.getId().toString());
			lcractmergedao.save(lcractmerge);

			return "success";
		}
		return "fail";
	}

	// ��ֵ
	public String recharge() {
		HttpServletRequest request = ServletActionContext.getRequest();
		Double money = Double.parseDouble(request.getParameter("money")); // ��ֵ���
		ActionContext ac = ActionContext.getContext();
		Userinfo user = (Userinfo) ac.getSession().get("userinfo");
		if (userinfo.getUserid() != null) {
			userinfo = userinfoservice.findById(userinfo.getUserid());
		}
		user.setXjye(user.getXjye() + money);
		user.setZye(user.getXjye() + user.getYqsy() + user.getJyje()); // �����˻����
		userinfoservice.modify(user);
		Records records = new Records();
		records.setIntoinfo(user.getName());
		records.setOuttoinfo("");
		records.setType("Ϊ�˻���ֵ");
		records.setPaytype("Fengpay");
		records.setPeople(user.getName());
		records.setMoney(money);
		records.setUserid(user.getUserid());
		records.setIntoacc(user.getXjye());
		Timestamp nowtime = new Timestamp(System.currentTimeMillis());
		records.setTime(nowtime);
		recordsdao.save(records);
		System.out.println("��ֵ��ˮ");
		return "success";
	}

	// userҳ�����ת
	public String user() {
		HttpServletRequest request = ServletActionContext.getRequest();
		ActionContext ac = ActionContext.getContext();
		userinfo = (Userinfo) ac.getSession().get("userinfo");

		String flag = request.getParameter("user");
		// ע��
		if (flag.equals("register")) {
			return "register";
		}
		// ��¼
		if (flag.equals("login")) {
			return "login";
		}
		// ��������
		if (flag.equals("getPwd")) {
			return "getPwd";
		}
		// �ҵ��ڲƱ�
		if (flag.equals("myZCB")) {
			// ��ѡ
			allfinancelist.clear();
			// ��ҳ��ʾ��ѡ�����Ϣ
			List<Bidinfo> list = new ArrayList();
			list = bidinfoservice.findAllFinance();
			for (Bidinfo b : list) {
				if (b.getState().equals("δ�ϱ�")) {

				} else {
					allfinancelist.add(b);
					//System.out.println("allfinancelist.size(): "
						//	+ allfinancelist.size());
				}
			}

			setPersonProfit(userinfo);
			ac.getSession().get("person_profit_bulk");
			ac.getSession().get("person_profit_choice");

			if (ac.getSession().get("userinfo") != null) {
				//System.out.println("ac.session.user!=null");
				Userinfo u = (Userinfo) ac.getSession().get("userinfo");
				if (u.getUserid() != null) {
					u = userinfoservice.findById(u.getUserid());
				}
				userinfo = (Userinfo) userinfodao.findByPhone(u.getPhone())
						.get(0);
				ac.getSession().remove("userinfo");
				ac.getSession().put("userinfo", userinfo);
			}

			return "myZCB";
		}
		// �ʽ���������׼�¼
		if (flag.equals("record")) {
			return "record";
		}
		// �ʽ��������ֵ
		if (flag.equals("recharge")) {
			return "recharge";
		}
		// �ʽ����������
		if (flag.equals("withdraw")) {
			return "withdraw";
		}
		// �ҵ���ơ����ҵ�ծȨ
		if (flag.equals("myManage")) {
			wdzqlist.clear();
			List list = new ArrayList();
			setPersonProfit(userinfo);
			List choice_list_show = (List) ac.getSession().get(
					"choice_list_show");
			List bulk_list_show = (List) ac.getSession().get("bulk_list_show");
			list = choice_list_show;
			list.addAll(bulk_list_show);
			if (currentPage == 0) {
				currentPage = 1;
			}
			if (areaPage == 0) {
				areaPage = 1;
			}
			int stratLine = (currentPage - 1) * pageSize;// ��ǰҳ��֮ǰ������
			if (list == null || list.size() == 0) {
				totalPage = 0;
			}
			if (list.size() <= 10) {
				totalPage = 1;
			} else {
				if (list.size() % 10 == 0) {
					totalPage = list.size() / 10;
				} else {
					totalPage = list.size() / 10 + 1;
				}
			}
			if (list.size() >= stratLine + 10) {
				for (int i = stratLine; i <= stratLine + 9; i++) {
					wdzqlist.add(list.get(i));
				}
			} else if (list.size() < stratLine + 10) {
				for (int n = stratLine; n <= list.size() - 1; n++) {
					wdzqlist.add(list.get(n));
				}
			}
			request.setAttribute("totalPage", new Integer(totalPage));
			request.setAttribute("areaPage", new Integer(areaPage));
			request.setAttribute("currentPage", new Integer(currentPage));
			return "myManage";
		}
		// �ҵ���ơ�����ѡ���
		if (flag.equals("myJxlc")) {
			jxlclist.clear();
			setPersonProfit(userinfo);
			List choice_list_show = (List) ac.getSession().get(
					"choice_list_show");
			if (currentPage == 0) {
				currentPage = 1;
			}
			if (areaPage == 0) {
				areaPage = 1;
			}
			int stratLine = (currentPage - 1) * pageSize;// ��ǰҳ��֮ǰ������
			if (choice_list_show == null || choice_list_show.size() == 0) {
				totalPage = 0;
			}
			if (choice_list_show.size() <= 10) {
				totalPage = 1;
			} else {
				if (choice_list_show.size() % 10 == 0) {
					totalPage = choice_list_show.size() / 10;
				} else {
					totalPage = choice_list_show.size() / 10 + 1;
				}
			}
			if (choice_list_show.size() >= stratLine + 10) {
				for (int i = stratLine; i <= stratLine + 9; i++) {
					jxlclist.add(choice_list_show.get(i));
				}
			} else if (choice_list_show.size() < stratLine + 10) {
				for (int n = stratLine; n <= choice_list_show.size() - 1; n++) {
					jxlclist.add(choice_list_show.get(n));
				}
			}
			request.setAttribute("totalPage", new Integer(totalPage));
			request.setAttribute("areaPage", new Integer(areaPage));
			request.setAttribute("currentPage", new Integer(currentPage));
			return "myJxlc";
		}
		// �ҵ���ơ���Ͷ��ɢ��
		if (flag.equals("myTzsb")) {
			tzsblist.clear();
			setPersonProfit(userinfo);
			List bulk_list_show = (List) ac.getSession().get("bulk_list_show");
			if (currentPage == 0) {
				currentPage = 1;
			}
			if (areaPage == 0) {
				areaPage = 1;
			}
			int stratLine = (currentPage - 1) * pageSize;// ��ǰҳ��֮ǰ������
			if (bulk_list_show == null || bulk_list_show.size() == 0) {
				totalPage = 0;
			}
			if (bulk_list_show.size() <= 10) {
				totalPage = 1;
			} else {
				if (bulk_list_show.size() % 10 == 0) {
					totalPage = bulk_list_show.size() / 10;
				} else {
					totalPage = bulk_list_show.size() / 10 + 1;
				}
			}
			if (bulk_list_show.size() >= stratLine + 10) {
				for (int i = stratLine; i <= stratLine + 9; i++) {
					tzsblist.add(bulk_list_show.get(i));
				}
			} else if (bulk_list_show.size() < stratLine + 10) {
				for (int n = stratLine; n <= bulk_list_show.size() - 1; n++) {
					tzsblist.add(bulk_list_show.get(n));
				}
			}
			request.setAttribute("totalPage", new Integer(totalPage));
			request.setAttribute("areaPage", new Integer(areaPage));
			request.setAttribute("currentPage", new Integer(currentPage));
			return "myTzsb";
		}
		// �ҵĽ��
		if (flag.equals("myBorrow")) {
			return "myBorrow";
		}
		return "success";
	}

	// ������Ϣ�ʽ������Ľ��׼�¼
	public String personRecords() {
		/**
		 * ��ҳ
		 */
		ActionContext ac = ActionContext.getContext();
		userinfo = (Userinfo) ac.getSession().get("userinfo");
		if (userinfo.getUserid() != null) {
			userinfo = userinfoservice.findById(userinfo.getUserid());
		}
		this.UserRefresh();
		if (currentPage == 0) {
			currentPage = 1;
		}
		if (areaPage == 0) {
			areaPage = 1;
		}
		int stratLine = (currentPage - 1) * pageSize;// ��ǰҳ��֮ǰ������
		HttpServletRequest request = ServletActionContext.getRequest();
		// String userid=request.getParameter("userid");

		// System.out.println("userid:"+userinfo.getUserid());
		// Integer userid=Integer.parseInt(request.getParameter("userid"));

		perrecordslist = userinfoservice.findAllRecords(userinfo.getUserid(),
				stratLine);
		// List
		// totalList=userinfoservice.findAllRecordsTotal(userinfo.getUserid());//������
		//
		// if(totalList==null ||totalList.size()==0){
		// totalPage= 0;
		// }
		// if(totalList.size()<=10){
		// totalPage=1;
		// }else{
		// if(totalList.size()%10==0){
		// totalPage =totalList.size()/10;
		// }else{
		// totalPage =totalList.size()/10+1;
		// }
		// }
		//
		// request.setAttribute("totalPage",new Integer(totalPage));
		// request.setAttribute("areaPage",new Integer(areaPage));
		// request.setAttribute("currentPage",new Integer(currentPage));

		return "success";
	}

	// ���׼�¼ajax
	public void personRecordsAjax() {
		ActionContext ac = ActionContext.getContext();
		userinfo = (Userinfo) ac.getSession().get("userinfo");
		if (userinfo.getUserid() != null) {
			userinfo = userinfoservice.findById(userinfo.getUserid());
		}
		int stratLine = 0;

		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out;
		// List bidList=new ArrayList();
		// System.out.println(currentPageAjax+"  "+pageSizeAjax+"  "+starTimeAjax+"  "+endTimeAjax);
		perrecordslist = userinfoservice.findAllRecords(userinfo.getUserid(),
				stratLine);
		List fenyeList = new ArrayList();
		int min = (currentPageAjax - 1) * pageSizeAjax;
		int max = (currentPageAjax) * pageSizeAjax;
		int listsize = perrecordslist.size();
		if (perrecordslist.size() == 0) {
			min = 0;
			max = 0;
		}
		// System.out.println("personRecordsAjax");
		// System.out.println("min"+min);
		// System.out.println("max"+max);
		if (perrecordslist.size() < max) {
			max = perrecordslist.size();
		}
		for (int i = min; i < max; i++) {
			fenyeList.add(perrecordslist.get(i));
			// System.out.println(i);
		}

		JsonUtil jsonUtil = new JsonUtil();
		// String jason=jsonUtil.listToJson(fenyeList);
		List listtest = new ArrayList();

		Fenye f = new Fenye();
		f.setSize(perrecordslist.size());
		f.setMaxsize(max);

		listtest.add(fenyeList);
		listtest.add(f);

		String jasonmax = jsonUtil.listToJson(listtest);
		// String jasonmax = jsonUtil.BeanToJson(listsize);
		// System.out.println(jason);
		// System.out.println(jasonmax);
		try {
			out = response.getWriter();
			// out.print(jason);
			out.print(jasonmax);
			out.flush();
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public Userinfo getUserinfo() {
		return userinfo;
	}

	public void setUserinfo(Userinfo userinfo) {
		this.userinfo = userinfo;
	}

	public UserinfoService getUserinfoservice() {
		return userinfoservice;
	}

	public void setUserinfoservice(UserinfoService userinfoservice) {
		this.userinfoservice = userinfoservice;
	}

	public List getUserinfolist() {
		return userinfolist;
	}

	public void setUserinfolist(List userinfolist) {
		this.userinfolist = userinfolist;
	}

	public BidinfoService getBidinfoservice() {
		return bidinfoservice;
	}

	public void setBidinfoservice(BidinfoService bidinfoservice) {
		this.bidinfoservice = bidinfoservice;
	}

	public List getBidinfolist() {
		return bidinfolist;
	}

	public void setBidinfolist(List bidinfolist) {
		this.bidinfolist = bidinfolist;
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

	public RootactService getRootactservice() {
		return rootactservice;
	}

	public void setRootactservice(RootactService rootactservice) {
		this.rootactservice = rootactservice;
	}

	public TempdataService getTempdataservice() {
		return tempdataservice;
	}

	public void setTempdataservice(TempdataService tempdataservice) {
		this.tempdataservice = tempdataservice;
	}

	public List getPerrecordslist() {
		return perrecordslist;
	}

	public void setPerrecordslist(List perrecordslist) {
		this.perrecordslist = perrecordslist;
	}

	public List getTzsblist() {
		return tzsblist;
	}

	public void setTzsblist(List tzsblist) {
		this.tzsblist = tzsblist;
	}

	public List getJxlclist() {
		return jxlclist;
	}

	public void setJxlclist(List jxlclist) {
		this.jxlclist = jxlclist;
	}

	public List getWdzqlist() {
		return wdzqlist;
	}

	public void setWdzqlist(List wdzqlist) {
		this.wdzqlist = wdzqlist;
	}

	public UserinfoDAO getUserinfodao() {
		return userinfodao;
	}

	public void setUserinfodao(UserinfoDAO userinfodao) {
		this.userinfodao = userinfodao;
	}

	public String getCheckFlag() {
		return checkFlag;
	}

	public void setCheckFlag(String checkFlag) {
		this.checkFlag = checkFlag;
	}

	public UserbankDAO getUserbankdao() {
		return userbankdao;
	}

	public void setUserbankdao(UserbankDAO userbankdao) {
		this.userbankdao = userbankdao;
	}

	public Userbank getUserbank() {
		return userbank;
	}

	public void setUserbank(Userbank userbank) {
		this.userbank = userbank;
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

	public List getUserlist() {
		return userlist;
	}

	public void setUserlist(List userlist) {
		this.userlist = userlist;
	}

	public List getAllfinancelist() {
		return allfinancelist;
	}

	public void setAllfinancelist(List allfinancelist) {
		this.allfinancelist = allfinancelist;
	}

	public String getNewTxtEmails() {
		return newTxtEmails;
	}

	public void setNewTxtEmails(String newTxtEmails) {
		this.newTxtEmails = newTxtEmails;
	}

	public String getNewPhone() {
		return NewPhone;
	}

	public void setNewPhone(String newPhone) {
		NewPhone = newPhone;
	}

	public String getNewMoneykey() {
		return NewMoneykey;
	}

	public void setNewMoneykey(String newMoneykey) {
		NewMoneykey = newMoneykey;
	}

	public String getNewEmail() {
		return NewEmail;
	}

	public void setNewEmail(String newEmail) {
		NewEmail = newEmail;
	}

	public String getNewPassword2() {
		return newPassword2;
	}

	public void setNewPassword2(String newPassword2) {
		this.newPassword2 = newPassword2;
	}

	public String getNewName() {
		return NewName;
	}

	public void setNewName(String newName) {
		NewName = newName;
	}

	public String getNewIdcard() {
		return NewIdcard;
	}

	public void setNewIdcard(String newIdcard) {
		NewIdcard = newIdcard;
	}

	public LcractmergeDAO getLcractmergedao() {
		return lcractmergedao;
	}

	public void setLcractmergedao(LcractmergeDAO lcractmergedao) {
		this.lcractmergedao = lcractmergedao;
	}

	public RecordsService getRecordsservice() {
		return recordsservice;
	}

	public void setRecordsservice(RecordsService recordsservice) {
		this.recordsservice = recordsservice;
	}

	public Records getRecords() {
		return records;
	}

	public void setRecords(Records records) {
		this.records = records;
	}

}