package action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.sql.Timestamp;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import dao.Bidinfo;
import dao.BidinfoDAO;
import dao.Bidinfo_Userinfo;
import dao.Cominfo;
import dao.CominfoDAO;
import dao.Finance;
import dao.Finplan;
import dao.Jkract;
import dao.Records;
import dao.RecordsDAO;
import dao.Riskinfo;
import dao.Tempdata;
import dao.Userinfo;
import dao.UserinfoDAO;
import service.BidinfoService;
import service.JkractService;
import service.NewsinfoService;
import service.RootactService;
import service.TempdataService;
import service.UserinfoService;
import util.LogicUtil;
import util.Paging;

public class BidinfoAction {
	Userinfo userinfo = new Userinfo();
	Bidinfo bidinfo = new Bidinfo();
	BidinfoService bidinfoservice = new BidinfoService();
	List bidinfolist = new ArrayList();
	Paging paging = new Paging();
	LogicUtil logicutil = new LogicUtil();
	String money;
	TempdataService tempdataservice = new TempdataService();
	Tempdata tempdata = new Tempdata();
	JkractService jkractservice = new JkractService();
	Jkract jkract = new Jkract();
	UserinfoService userinfoservice = new UserinfoService();
	List userinfolist = new ArrayList();
	Userinfo jkr = new Userinfo();
	RootactService rootactservice = new RootactService();
	List lcrbuyinfo = new ArrayList();
	List haveonbidlist = new ArrayList();
	List waitbidlist = new ArrayList();
	List repayplan = new ArrayList();
	Integer a = 0;

	BidinfoDAO bidinfodao = new BidinfoDAO();
	RecordsDAO recordsdao = new RecordsDAO();
	CominfoDAO cominfodao = new CominfoDAO();

	// 查询bidlist
	List BidList = new ArrayList();
	// 绑定散标
	List finance_bid_list = new ArrayList();
	Finplan finplan = new Finplan();
	List all_finance_list = new ArrayList();
	// 首页显示的新闻动态和新闻公告
	List firstgonglist = new ArrayList();
	List firstdonglist = new ArrayList();
	List firsthuanlist = new ArrayList();
	List firstmeilist = new ArrayList();
	NewsinfoService newsinfoservice = new NewsinfoService();
	UserinfoDAO userinfodao = new UserinfoDAO();
	List allfinancelist = new ArrayList();
	// 协议中借款人的信息
	List jkrlist = new ArrayList();
	// 精选理财已绑定的散标list
	List bdsblist = new ArrayList();
	// 合作机构
	List guacomlist = new ArrayList();
	// 担保公司
	String guacom;
	/**
	 * 分页查询
	 * 
	 * @return
	 */
	private int currentPage;
	private final int pageSize = 10;
	private int totalPage;
	private int areaPage;
	private String uploader;
	private List<File> file;
	private List<String> fileFileName;
	private List<String> fileContentType;

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

	// 首页大标头页面的跳转
	public String home() {
		HttpServletRequest request = ServletActionContext.getRequest();
		String flag = request.getParameter("home");
		// 我要借款
		if (flag.equals("borrowed")) {
			return "borrowed";
		}
		// 我要理财
		if (flag.equals("lenders")) {
			return "lenders";
		}
		// 新手指引
		if (flag.equals("New")) {
			return "New";
		}
		// 安全保障
		if (flag.equals("insurance")) {
			return "insurance";
		}
		// 3分钟理财动画
		if (flag.equals("introduce")) {
			return "introduce";
		}
		// 合作机构
		if (flag.equals("agency")) {
			return "agency";
		}
		// 帮助中心
		if (flag.equals("questions")) {
			return "questions";
		}
		return "success";
	}

	// 查询所有
	public String findAll() {
		/**
		 * 分页
		 */
		HttpServletRequest request = ServletActionContext.getRequest();

		if (currentPage == 0) {
			currentPage = 1;
		}
		if (areaPage == 0) {
			areaPage = 1;
		}
		// 根据所属公司检索
		ActionContext ac = ActionContext.getContext();
		Riskinfo riskinfo = (Riskinfo) ac.getSession().get("riskinfo");

		int stratLine = (currentPage - 1) * pageSize;// 当前页面之前的条数
		bidinfolist = bidinfoservice.findAll(stratLine, riskinfo);
		List totalList = bidinfodao.findAllTotalNum();// 总数量
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

		request.setAttribute("totalPage", new Integer(totalPage));
		request.setAttribute("areaPage", new Integer(areaPage));
		request.setAttribute("currentPage", new Integer(currentPage));
		// 查询所有的用户
		userinfolist = userinfoservice.findAll();
		return "findall";
	}

	// 修改标详情
	public String updateBid() {
		HttpServletRequest request = ServletActionContext.getRequest();
		bidinfo = bidinfoservice.findById(new Integer(request
				.getParameter("id")));
		userinfolist = userinfoservice.findJkr();// 检索借款人信息
		return "success";

	}

	// 保存标详情
	public String saveBid() {
		bidinfoservice.modifyBid(bidinfo);
		// System.out.println("保存标信息成功");
		return "success";
	}

	// 删除标
	public String delectBid() {
		HttpServletRequest request = ServletActionContext.getRequest();
		String id = request.getParameter("id");
		bidinfoservice.delectBid(new Integer(id));
		// System.out.println("删除：id="+id);
		return "success";
	}

	// 点击修改精选理财
	public String updateFinance() {
		bdsblist.clear();
		HttpServletRequest request = ServletActionContext.getRequest();
		bidinfo = bidinfoservice.findById(new Integer(request
				.getParameter("id")));
		userinfo = userinfoservice.findById(bidinfo.getUserid());
		// 查询所有“未上标”的标
		bidinfolist = bidinfoservice.findActBid("未上标");
		// 查询出该精选理财已经绑定散标
		String bs = (String) userinfodao.findById(bidinfo.getUserid())
				.getRemain();
		String[] ba = bs.split("#");
		for (int i = 0; i < ba.length; i++) {
			Bidinfo bid = new Bidinfo();
			bid = bidinfoservice.findById(new Integer(ba[i]));
			bdsblist.add(bid);
		}
		return "success";
	}

	// 确认修改精选理财
	public String upSureFinance() {
		HttpServletRequest request = ServletActionContext.getRequest();
		// 获得该精选理财在bidinfo表中的信息
		Bidinfo bid = (Bidinfo) bidinfoservice.findById(new Integer(request
				.getParameter("id")));
		// 该精选理财以前绑定的散标
		String bs = (String) userinfodao.findById(bid.getUserid()).getRemain();
		String[] ba = bs.split("#");
		// 判断之前被绑定的散标
		for (int a = 0; a < ba.length; a++) {
			int beforesb = new Integer(ba[a]);
			// 获取计划名称
			String[] bidarr = request.getParameterValues("bidinfo");
			StringBuffer s = new StringBuffer();
			for (int f = 0; f < bidarr.length; f++) {
				if (beforesb == new Integer(bidarr[f])) {
				} else {
					// 如果以前绑定的散标不在现在新绑定的散标里，则应该更新状态为“未上标” ，改变remark
					Bidinfo bidinfo = new Bidinfo();
					bidinfo = bidinfoservice.findById(beforesb);
					bidinfo.setState("未上标");
					bidinfo.setRemark("");
					bidinfoservice.modifyBid(bidinfo); // 改变标的状态
				}
			}
		}
		// 对精选理财计划进行更新
		// 获取计划名称，将被选择的散标更新状态为“已整合”和remark
		String[] bidarr = request.getParameterValues("bidinfo");
		StringBuffer s = new StringBuffer();
		for (int f = 0; f < bidarr.length; f++) {
			Bidinfo bidd = new Bidinfo();
			bidd = bidinfoservice.findById(new Integer(bidarr[f]));
			bidd.setState("已整合");
			bidd.setRemark("已加入到   " + finplan.getPlanname() + "  精选理财计划中");
			bidinfoservice.modifyBid(bidd); // 改变标的状态
			s.append(bidarr[f]);
			s.append("#");
		}
		String bidinfo = s.toString();
		// 获得该精选理财在userinfo表中的信息并update
		userinfo = userinfoservice.findById(bid.getUserid());
		userinfo.setName(finplan.getPlanname());
		userinfo.setRemain(bidinfo);
		userinfoservice.modify(userinfo);
		userinfo = (Userinfo) userinfoservice.findByName(userinfo.getName())
				.get(0);
		String[] bidStrArray = bidinfo.split("#");
		// update bidinfo表中的信息
		Bidinfo test = new Bidinfo();
		test = bidinfoservice.findById(new Integer(bidStrArray[0]));
		Timestamp nowtime = new Timestamp(System.currentTimeMillis());
		bid.setCreated(nowtime);
		bid.setDeadline(test.getDeadline());
		bid.setProfit((double) finplan.getProfit());
		bid.setRemark(bidinfo);
		bid.setReason(finplan.getPlaninfo());
		bid.setUserid(userinfo.getUserid());
		bid.setRepaytype(finplan.getRepaytype());
		double money = 0.0;
		for (int i = 0; i < bidStrArray.length; i++) {
			test = bidinfoservice.findById(new Integer(bidStrArray[i]));
			money = (double) (money + test.getNumber().intValue());
		}
		bid.setNumber(money);
		bid.setMoney(money);
		bidinfoservice.modify(bid);
		bidinfolist = bidinfoservice.findAllFinance();
		return "success";
	}

	// 对精选理财进行“下线”
	public String offlineFinance() {
		HttpServletRequest request = ServletActionContext.getRequest();
		bidinfo = bidinfoservice.findById(new Integer(request
				.getParameter("id")));
		bidinfo.setState("已下线");
		bidinfoservice.modify(bidinfo);
		return "offlineFinance";
	}

	// 保存精选理财
	public String saveFinance() {
		bidinfoservice.modifyBid(bidinfo);
		userinfoservice.modify(userinfo);
		System.out.println("保存标信息成功");

		return "success";
	}

	// 删除精选理财
	public String delectFinance() {
		HttpServletRequest request = ServletActionContext.getRequest();
		String id = request.getParameter("id");
		String userinfo = request.getParameter("userinfo");
		userinfoservice.delectUser(new Integer(userinfo));
		bidinfoservice.delectBid(new Integer(id));
		return "success";
	}

	// 按标的状态查询“已上标”，“未上标”查询所有标
	public String findByState() {
		HttpServletRequest request = ServletActionContext.getRequest();
		a = new Integer(request.getParameter("a"));
		// 根据所属公司检索
		ActionContext ac = ActionContext.getContext();
		Riskinfo riskinfo = (Riskinfo) ac.getSession().get("riskinfo");

		if (currentPage == 0) {
			currentPage = 1;
		}
		if (areaPage == 0) {
			areaPage = 1;
		}
		int stratLine = (currentPage - 1) * pageSize;
		// 未上标
		if (a == 2) {
			waitbidlist = bidinfoservice
					.findByState("未上标", stratLine, riskinfo);
			List list = bidinfodao.findBidNum("未上标");
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

			request.setAttribute("totalPage", new Integer(totalPage));
			request.setAttribute("areaPage", new Integer(areaPage));
			request.setAttribute("currentPage", new Integer(currentPage));
			userinfolist = userinfoservice.findAll();
			return "wait";
		}
		// 已上标
		else if (a == 1) {
			haveonbidlist = bidinfoservice.findByState("none", stratLine,
					riskinfo);
			List holist = bidinfodao.findBidNum("none");
			if (holist == null || holist.size() == 0) {
				totalPage = 0;
			}
			if (holist.size() <= 10) {
				totalPage = 1;
			} else {
				if (holist.size() % 10 == 0) {
					totalPage = holist.size() / 10;
				} else {
					totalPage = holist.size() / 10 + 1;
				}
			}

			request.setAttribute("totalPage", new Integer(totalPage));
			request.setAttribute("areaPage", new Integer(areaPage));
			request.setAttribute("currentPage", new Integer(currentPage));
			userinfolist = userinfoservice.findAll();
			return "havaon";
		}
		return "success";
	}

	// 查询所有借款人
	public String addBid() {
		userinfolist = userinfoservice.findJkr();// 检索借款人信息
		return "addbid";
	}

	// 多图片上传默认方法
	public String execute() throws Exception {
		ActionContext ac = ActionContext.getContext();
		List countFileList = (List) ac.getSession().get("countFileList");
		if (countFileList == null) {
			countFileList = new ArrayList();
		}

		// TODO Auto-generated method stub
		// System.out.println("进入action");
		//
		// System.out.println("uploader===="+uploader);
		// System.out.println("file===="+file);
		System.out.println("fileFileName====" + fileFileName);
		System.out.println("fileContentType====" + fileContentType);
		//
		// System.out.println("fileContentType.size()===="+fileContentType.size());
		// System.out.println("fileFileName.size()===="+fileFileName.size());

		String path = ServletActionContext.getRequest().getRealPath("uploadss");
		// System.out.println(path);
		File files = new File(path);
		// System.out.println(files);
		if (!files.exists()) {

			files.mkdirs();
			// System.out.println("files不为空");
		}
		for (int i = 0; i < file.size(); i++) {
			FileInputStream in = new FileInputStream(file.get(i));
			File targetFile = new File(path, this.getFileFileName().get(i));
			// System.out.println("targetFile=="+targetFile);
			FileOutputStream out = new FileOutputStream(targetFile);
			byte[] b = new byte[1024];
			int len = 0;
			while ((len = in.read(b)) != -1) {
				out.write(b, 0, len);

			}
			try {

				countFileList.add(fileFileName.toString().substring(1,
						fileFileName.toString().length() - 1));
				ac.getSession().put("countFileList", countFileList);
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}

			out.close();
			in.close();
		}
		// return super.execute();
		return "success";
	}

	public String upload() {
		// System.out.println("进来了");
		return "success";
	}

	// 插入新的标
	public String addBidinfo() {
		Timestamp nowtime = new Timestamp(System.currentTimeMillis());

		// System.out.println(countFileList.size());

		// if(countFileList==null){
		// countFileList=new ArrayList();
		// }

		ActionContext ac = ActionContext.getContext();
		Riskinfo risk = (Riskinfo) ac.getSession().get("riskinfo");
		bidinfo.setComname(risk.getComname());
		bidinfo.setRiskinfo(risk.getId());

		bidinfo.setCreated(nowtime);
		bidinfo.setOverdue("无");
		bidinfo.setMoney(bidinfo.getNumber());
		bidinfo.setRate(0);

		// ActionContext ac = ActionContext.getContext();
		List countFileList = (List) ac.getSession().get("countFileList");
		// System.out.println(countFileList.size());
		String pic = "";
		if (countFileList != null) {
			for (int i = 0; i < countFileList.size(); i++) {
				// System.out.println(countFileList.get(i));
				pic += countFileList.get(i) + ",";

			}
			pic = pic.substring(0, pic.length() - 1);
			// System.out.println(pic);
			bidinfo.setPicture(pic);
			// System.out.println(bidinfo.getPicture());
		}
		bidinfoservice.addBidinfo(bidinfo);
		return "add";
	}

	// 点击“上标”时。更新标的状态为“未满标”
	public String changeState() {
		HttpServletRequest request = ServletActionContext.getRequest();
		Bidinfo vo = bidinfoservice.findById(Integer.parseInt(request
				.getParameter("id")));
		vo.setState("未满标");
		bidinfoservice.modify(vo);
		return "success";
	}

	// 分页查询
	public String findPaging() {
		bidinfoservice.findPaging(paging.getCurrentPage(),
				paging.getPageSize(), paging.getStart(), paging.getEnd());
		return "findpaging";
	}

	// 首页信息加载
	public String homePage() {
		bidinfolist = bidinfoservice.findPaging(1, 5, "2010-1-1", "2020-1-1");
		ActionContext ac = ActionContext.getContext();
		Map session = ActionContext.getContext().getSession();
		String flag = (String) session.get("loginflag");
		// System.out.println("+++++++"+flag);
		if (flag == null) {
			ac.getSession().put("loginflag", "0");
		}
		// System.out.println("homePage");

		// 首页显示新闻动态和新闻公告
		if (currentPage == 0) {
			currentPage = 1;
		}
		int stratLine = (currentPage - 1) * pageSize;
		firstgonglist = newsinfoservice.findFirstByType("公", stratLine, 5);
		firstdonglist = newsinfoservice.findFirstByType("动", stratLine, 5);
		firsthuanlist = newsinfoservice.findFirstByType("还", stratLine, 5);
		firstmeilist = newsinfoservice.findFirstByType("媒", stratLine, 5);
		allfinancelist.clear();
		// 首页显示精选理财信息
		List<Bidinfo> list = new ArrayList();
		list = bidinfoservice.findAllFinance();

		// List<Bean> data = new ArrayList<Bean>();
		// Collections.sort(data, new Comparator<Bean>() {
		// public int compare(Bean o1, Bean o2) {
		// return o1.getName().compareTo(o2.getName());
		// }
		// });
		// System.out.println("按name升序:" + data);

		// Collections.sort(list,);
		// Iterator<Bidinfo> it =list.iterator();
		// while(it.hasNext()){
		// System.out.println(it.next().getName());
		// }
		//

		for (Bidinfo b : list) {

			if (b.getState().equals("未上标")) {

			} else {
				allfinancelist.add(b);
//				System.out.println("allfinancelist.size(): "
//						+ allfinancelist.size());
			}
		}

		return "homepage";
	}

	// 合作机构
	public String findByGuacom() {
		if (currentPage == 0) {
			currentPage = 1;
		}
		if (areaPage == 0) {
			areaPage = 1;
		}
		int stratLine = (currentPage - 1) * pageSize;// 当前页面之前的条数

		guacomlist = bidinfoservice.findByGuacom(stratLine, guacom);
		List totalList = bidinfodao.findGuacomTotalNum(guacom);// 总数量
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

	// 根据Id查询对应标
	public String findById() throws NumberFormatException, ParseException {
		HttpServletRequest request = ServletActionContext.getRequest();
		bidinfo = bidinfoservice.findById(Integer.parseInt(request
				.getParameter("id")));
		jkr = userinfoservice.findById(bidinfo.getUserid());
		lcrbuyinfo = rootactservice.lcrBuyInfo(Integer.parseInt(request
				.getParameter("id")));
		// 还款计划
		if (bidinfo.getState().equals("还款中")) {
			repayplan = rootactservice.repayPlan(Integer.parseInt(request
					.getParameter("id")));
		} else {
			repayplan = null;
		}
		return "showone";
	}

	// 买标
	public String buyBid() {
		HttpServletRequest request = ServletActionContext.getRequest();
		ActionContext ac = ActionContext.getContext();
		
		userinfo = userinfoservice.findByid(new Integer(request
				.getParameter("userid")));
		if (userinfo == null) {
			return "login";
		}
		
		buyBid(userinfo, bidinfo, money);
		
		ac.getSession().put("loginflag", "1");
		return "success";
	}

	// 买标
	public void buyBid(Userinfo userinfo, Bidinfo bidinfo, String mon) {
		Double money = Double.parseDouble(mon);
		if (money <= bidinfo.getMoney() && money <= userinfo.getXjye()) {
			// 更新用户余额信息
			userinfo.setXjye(userinfo.getXjye() - money);
			
			userinfo.setJyje(userinfo.getJyje() + money);
			Double yqsy = money * bidinfo.getProfit() * bidinfo.getDeadline()
					/ 1200;
			userinfo.setYqsy(userinfo.getYqsy() + yqsy);
			userinfo.setZye(userinfo.getXjye() + userinfo.getYqsy()
					+ userinfo.getJyje());
			
			bidinfo.setMoney(bidinfo.getMoney() - money);
			bidinfo.setRate(Integer.parseInt(new java.text.DecimalFormat("0")
					.format((1 - bidinfo.getMoney() / bidinfo.getNumber()) * 100)));
		
			insertTempdata(bidinfo, userinfo, mon);
			
			insertRecords(userinfo, bidinfo, money);
			
			double flag = bidinfo.getMoney();
			
			if (flag == 0) {
				bidinfo.setState("已满标");
				// System.out.println("已更新标状态");
				insertJkract(bidinfo);
			} else {
			}
			// System.out.println("标金额更新  "+bidinfo.getMoney());
			bidinfoservice.modifyBid(bidinfo);
		} else {
			// System.out.println("未更新");
		}
	}

	// 买标 插入records流水表
	public void insertRecords(Userinfo userinfo2, Bidinfo bidinfo2,
			Double money2) {
		Records records = new Records();
		Cominfo cominfo = new Cominfo();
		records.setType("买标");
		records.setMoney(money2);
		cominfo = cominfodao.findById(0);
		records.setIntoinfo("公司托管账户");
		records.setOuttoinfo(userinfo.getName());
		records.setPaytype("Fengpay");
		records.setPeople(userinfodao.findById(bidinfo2.getUserid()).getName());
		records.setBidid(bidinfo2.getId());
		Timestamp nowtime = new Timestamp(System.currentTimeMillis());
		records.setTime(nowtime);
		records.setUserid(userinfo2.getUserid());
		records.setRemain("");
		records.setRemark(userinfo2.getRemark());
		cominfo.setTgzh(cominfo.getTgzh() + money2); // 此处更新公司托管账户余额
		records.setIntoacc(cominfo.getTgzh());
		userinfo2.setXjye(userinfo2.getXjye()); // 不需要更新 买标时已经更新完 更新用户现金金额账户信息
		records.setOutacc(userinfo2.getXjye());
		recordsdao.save(records);
		cominfodao.update(cominfo);
		userinfodao.update(userinfo2);
	}

	// 插入数据中转表
	public void insertTempdata(Bidinfo bidinfo, Userinfo userinfo, String mon) {
		Double money = Double.parseDouble(mon);
		Tempdata tempdata = new Tempdata();
		tempdata.setBidid(bidinfo.getId());
		Timestamp nowtime = new Timestamp(System.currentTimeMillis());
		tempdata.setBuytime(nowtime);
		tempdata.setLcrid(userinfo.getUserid());
		tempdata.setMoney(money);
		tempdataservice.save(tempdata);
		// System.out.println("已插入数据中转表");

	}

	// 插入借款人操作表
	public void insertJkract(Bidinfo bidinfo) {
		jkract.setBidid(bidinfo.getId());
		jkract.setState("未批准");
		jkract.setZcrje(bidinfo.getNumber());
		Timestamp nowtime = new Timestamp(System.currentTimeMillis());
		jkract.setTime(nowtime);
		jkractservice.save(jkract);
		// System.out.println("已插入借款人操作表");
	}

	// 购买成功后跳转
	public String bidSuccessJump() {
		bidinfolist = bidinfoservice.findPaging(1, 5, "2010-1-1", "2020-1-1");
		return "success";
	}

	// 添加精选理财
	public String findActBid() {
		bidinfolist = bidinfoservice.findActBid("未上标");
		return "success";
	}

	// 检索所有理财计划
	public String findAllFinanceplan() {
		bidinfolist = bidinfoservice.findAllFinance();
		// finance_bid_list=null;

		finance_bid_list.clear();

		List<Finplan> list = new ArrayList();
		Bidinfo bid = new Bidinfo();
		for (int i = 0; i < bidinfolist.size(); i++) {
			Finplan finplan_info = new Finplan();
			bid = (Bidinfo) bidinfolist.get(i);
			finplan_info.setBid_plan(bid);
			finplan_info.setBidinfolist(analyticRemark(bid.getRemark()));
			finplan_info.setPlanname(userinfoservice.findById(
					finplan_info.getBid_plan().getUserid()).getName());
			finplan_info.setPlaninfo(finplan_info.getBid_plan().getReason());
			finplan_info.setProfit((int) (double) finplan_info.getBid_plan()
					.getProfit());
			list.add(finplan_info);

			// System.out.println("bid_info: "+bid.getReason());
			// System.out.println("finplan_info: "+finplan_info.getBid_plan().getReason());
		}
		finance_bid_list = list;
		// System.out.println("finance_bid_list_size: "+finance_bid_list.size());
		// for(int i=0;i<list.size();i++){
		// System.out.println("finplan_info: "+list.get(i).getBid_plan().getReason());

		// }
		return "success";
	}

	// 解析精选理财备注信息 return list
	public List analyticRemark(String remark) {
		String[] bidStrArray = remark.split("#");
		List<Bidinfo> bid_list = new ArrayList();
		Bidinfo tem_bid = new Bidinfo();
		for (int i = 0; i < bidStrArray.length; i++) {

			tem_bid = bidinfoservice.findById(new Integer(bidStrArray[i]));
			bid_list.add(tem_bid);
		}

		return bid_list;
	}

	// 检索精选理财计划
	public String showAllFinance() {
		List<Bidinfo> list = new ArrayList();
		list = bidinfoservice.findAllFinance();
		for (Bidinfo b : list) {

			if (b.getState().equals("未上标")) {
			} else {
				all_finance_list.add(b);
			}
		}
		// System.out.println("all_finance_list.size(): "+all_finance_list.size());
		return "success";
	}

	// 添加理财计划
	public String addFinanceplan() {

		HttpServletRequest request = ServletActionContext.getRequest();
		// 获取散标选择信息
		String bidinfo = request.getParameter("bidinfo");
		// System.out.println("request.getParameter: "+bidinfo);
		// 获取计划名称
		String[] bidarr = request.getParameterValues("bidinfo");
		// System.out.println("bidarr.length:  "+bidarr.length);
		StringBuffer s = new StringBuffer();
		for (int f = 0; f < bidarr.length; f++) {
			Bidinfo bid = new Bidinfo();
			bid = bidinfoservice.findById(new Integer(bidarr[f]));
			bid.setState("已整合");
			bid.setRemark("已加入到   " + finplan.getPlanname() + "  精选理财计划中");
			bidinfoservice.modifyBid(bid); // 改变标的状态
			s.append(bidarr[f]);
			s.append("#");
		}
		bidinfo = s.toString();
		// bidinfo="10000#10001#10002";
		// finplan.setPlanname("ZCB10001");
		// finplan.setPlaninfo("众财宝是以投资爱钱进平台现有零钱通项目为基础的，稳健、安全、便捷且透明度高的优选投资计划。投资所产生的收益可以选择自动提取或随每月回款的本金部分用于再投资。锁定期结束后，可以自由选择退出计划。");
		// finplan.setRepaytype("月返息");

		Userinfo user_plan = new Userinfo();
		user_plan.setName(finplan.getPlanname());
		user_plan.setRemain(bidinfo);
		user_plan.setJkr("0");
		userinfoservice.save(user_plan);
		user_plan = (Userinfo) userinfoservice.findByName(user_plan.getName())
				.get(0);
		// System.out.println("user_plan:  "+user_plan.getUserid());
		// 将传入String解析成List
		// List<String> bidinfolist_string=analysis(bidinfo);
		String[] bidStrArray = bidinfo.split("#");
		// System.out.println("bid_String:  "+bidinfo);
		Bidinfo test = new Bidinfo();
		test = bidinfoservice.findById(new Integer(bidStrArray[0]));
		Bidinfo finance_bid = new Bidinfo();
		finance_bid.setBidtype("精");
		Timestamp nowtime = new Timestamp(System.currentTimeMillis());
		finance_bid.setCreated(nowtime);

		finance_bid.setDeadline(test.getDeadline());
		finance_bid.setProfit((double) finplan.getProfit());
		finance_bid.setRate(0);
		finance_bid.setRemark(bidinfo);
		finance_bid.setReason(finplan.getPlaninfo());
		finance_bid.setUserid(user_plan.getUserid());

		finance_bid.setReason(finplan.getPlaninfo());
		finance_bid.setRepaytype(finplan.getRepaytype());
		finance_bid.setOverdue("无");
		finance_bid.setState("未上标");

		double money = 0.0;

		for (int i = 0; i < bidStrArray.length; i++) {
			test = bidinfoservice.findById(new Integer(bidStrArray[i]));
			// System.out.println("bidid: "+bidStrArray[i]);
			System.out.println("test.reason: " + test.getReason());
			money = (double) (money + test.getNumber().intValue());
			// System.out.println("当前金额： "+money+" 增加金额："+test.getNumber());
		}
		finance_bid.setNumber(money);
		finance_bid.setMoney(money);

		bidinfoservice.save(finance_bid);
		// System.out.println("保存finance_bid");

		bidinfolist = bidinfoservice.findAllFinance();
		// System.out.println("size++++"+bidinfolist.size());

		return "success";
	}

	// 确认理财计划
	public String conFinanceplan() {

		HttpServletRequest request = ServletActionContext.getRequest();
		String[] bidarr = request.getParameterValues("conFinance_info");
		// System.out.println("bidarr.length:  "+bidarr.length);
		// System.out.println("conFinanceplan:bidarr.length:"+bidarr.length);
		List<Bidinfo> finlist = new ArrayList();
		finlist = bidinfoservice.findAllFinance();
		for (Bidinfo b : finlist) {

			b.setState("未上标");
			bidinfoservice.modifyBid(b); // 清除所有已上标记录

		}
		if (bidarr.length > 0) {
			for (int f = 0; f < bidarr.length; f++) {

				Bidinfo bid = new Bidinfo();
				bid = bidinfoservice.findById(new Integer(bidarr[f]));
				bid.setState("未满标");

				bidinfoservice.modifyBid(bid); // 改变标的状态
				System.out.println("改变精选理财：" + bidarr[f]);

			}

		}

		return "success";
	}

	public String showOneFinance() {
		HttpServletRequest request = ServletActionContext.getRequest();
		String id = request.getParameter("id");
		// bidinfo=bidinfoservice.findById(Integer.parseInt(request.getParameter("id")));
		bidinfo = bidinfoservice.findById(Integer.parseInt(id));

		String[] bidArr = bidinfo.getRemark().split("#");
		finplan.setBid_plan(bidinfo);
		List list = new ArrayList();
		for (int i = 0; i < bidArr.length; i++) {
			list.add(bidinfoservice.findById(new Integer(bidArr[i])));

		}
		finplan.setBidinfolist(list);
		System.out.println(finplan.getBid_plan().getUserid());
		finplan.setPlanname(userinfoservice.findById(
				finplan.getBid_plan().getUserid()).getName());
		finplan.setPlaninfo(finplan.getBid_plan().getReason());
		lcrbuyinfo = rootactservice.lcrBuyInfo(Integer.parseInt(request
				.getParameter("id")));
		// System.out.println("finplan.size:  "+list.size());
		return "showone";
	}

	// public List<String> analysis(String bidinfo){
	//
	// String a=str.substring(0,str.indexOf("&"));
	// String b=str.substring(str.indexOf("&")+1,str.indexOf("#"));
	//
	// List<String> bidinfolist=new ArrayList();
	// String[] bidStrArray=bidinfo.split("#");
	// for(int i=0;i<bidStrArray.length;i++)
	// {
	// System.out.println("           "+bidStrArray[i]);
	// }
	// bidinfolist.add("10000");
	// bidinfolist.add("10001");
	// bidinfolist.add("10002");
	// return bidinfolist;
	//
	// }

	// 生成协议
	public String creatxieyi() {
		HttpServletRequest request = ServletActionContext.getRequest();
		String userid = request.getParameter("userid");

		// 理财人记录
		lcrbuyinfo = rootactservice.lcrBuyInfo(Integer.parseInt(request
				.getParameter("bidid")));
		jkrlist = bidinfoservice.creatxieyi(
				Integer.parseInt(request.getParameter("userid")),
				Integer.parseInt(request.getParameter("bidid")));
		bidinfo = bidinfodao.findById(Integer.parseInt(request
				.getParameter("bidid")));
		if (bidinfo.getBidtype().equals("精")) {

			return "fanance";
		}

		return "success";
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

	public Paging getPaging() {
		return paging;
	}

	public void setPaging(Paging paging) {
		this.paging = paging;
	}

	public Bidinfo getBidinfo() {
		return bidinfo;
	}

	public void setBidinfo(Bidinfo bidinfo) {
		this.bidinfo = bidinfo;
	}

	public Userinfo getUserinfo() {
		return userinfo;
	}

	public void setUserinfo(Userinfo userinfo) {
		this.userinfo = userinfo;
	}

	public LogicUtil getUtil() {
		return logicutil;
	}

	public void setUtil(LogicUtil util) {
		this.logicutil = util;
	}

	public String getMoney() {
		return money;
	}

	public void setMoney(String money) {
		this.money = money;
	}

	public LogicUtil getLogicutil() {
		return logicutil;
	}

	public void setLogicutil(LogicUtil logicutil) {
		this.logicutil = logicutil;
	}

	public TempdataService getTempdataservice() {
		return tempdataservice;
	}

	public void setTempdataservice(TempdataService tempdataservice) {
		this.tempdataservice = tempdataservice;
	}

	public Tempdata getTempdata() {
		return tempdata;
	}

	public void setTempdata(Tempdata tempdata) {
		this.tempdata = tempdata;
	}

	public JkractService getJkractservice() {
		return jkractservice;
	}

	public void setJkractservice(JkractService jkractservice) {
		this.jkractservice = jkractservice;
	}

	public Jkract getJkract() {
		return jkract;
	}

	public void setJkract(Jkract jkract) {
		this.jkract = jkract;
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

	public Userinfo getJkr() {
		return jkr;
	}

	public void setJkr(Userinfo jkr) {
		this.jkr = jkr;
	}

	public RootactService getRootactservice() {
		return rootactservice;
	}

	public void setRootactservice(RootactService rootactservice) {
		this.rootactservice = rootactservice;
	}

	public List getLcrbuyinfo() {
		return lcrbuyinfo;
	}

	public void setLcrbuyinfo(List lcrbuyinfo) {
		this.lcrbuyinfo = lcrbuyinfo;
	}

	public List getBidList() {
		return BidList;
	}

	public void setBidList(List bidList) {
		BidList = bidList;
	}

	// public String findBidList(){
	// BidList=bidinfoservice.findAll();
	// return"findBidList";
	// }
	public List getFinance_bid_list() {
		return finance_bid_list;
	}

	public void setFinance_bid_list(List finance_bid_list) {
		this.finance_bid_list = finance_bid_list;
	}

	public Finplan getFinplan() {
		return finplan;
	}

	public void setFinplan(Finplan finplan) {
		this.finplan = finplan;
	}

	public List getHaveonbidlist() {
		return haveonbidlist;
	}

	public void setHaveonbidlist(List haveonbidlist) {
		this.haveonbidlist = haveonbidlist;
	}

	public List getWaitbidlist() {
		return waitbidlist;
	}

	public void setWaitbidlist(List waitbidlist) {
		this.waitbidlist = waitbidlist;
	}

	public Integer getA() {
		return a;
	}

	public void setA(Integer a) {
		this.a = a;
	}

	public BidinfoDAO getBidinfodao() {
		return bidinfodao;
	}

	public void setBidinfodao(BidinfoDAO bidinfodao) {
		this.bidinfodao = bidinfodao;
	}

	public List getAll_finance_list() {
		return all_finance_list;
	}

	public void setAll_finance_list(List all_finance_list) {
		this.all_finance_list = all_finance_list;
	}

	public List getFirstgonglist() {
		return firstgonglist;
	}

	public void setFirstgonglist(List firstgonglist) {
		this.firstgonglist = firstgonglist;
	}

	public List getFirstdonglist() {
		return firstdonglist;
	}

	public void setFirstdonglist(List firstdonglist) {
		this.firstdonglist = firstdonglist;
	}

	public NewsinfoService getNewsinfoservice() {
		return newsinfoservice;
	}

	public void setNewsinfoservice(NewsinfoService newsinfoservice) {
		this.newsinfoservice = newsinfoservice;
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

	public CominfoDAO getCominfodao() {
		return cominfodao;
	}

	public void setCominfodao(CominfoDAO cominfodao) {
		this.cominfodao = cominfodao;
	}

	public List getAllfinancelist() {
		return allfinancelist;
	}

	public void setAllfinancelist(List allfinancelist) {
		this.allfinancelist = allfinancelist;
	}

	public List getJkrlist() {
		return jkrlist;
	}

	public void setJkrlist(List jkrlist) {
		this.jkrlist = jkrlist;
	}

	public List getBdsblist() {
		return bdsblist;
	}

	public void setBdsblist(List bdsblist) {
		this.bdsblist = bdsblist;
	}

	public List getRepayplan() {
		return repayplan;
	}

	public void setRepayplan(List repayplan) {
		this.repayplan = repayplan;
	}

	public List getFirsthuanlist() {
		return firsthuanlist;
	}

	public void setFirsthuanlist(List firsthuanlist) {
		this.firsthuanlist = firsthuanlist;
	}

	public List getFirstmeilist() {
		return firstmeilist;
	}

	public void setFirstmeilist(List firstmeilist) {
		this.firstmeilist = firstmeilist;
	}

	public List getGuacomlist() {
		return guacomlist;
	}

	public void setGuacomlist(List guacomlist) {
		this.guacomlist = guacomlist;
	}

	public String getGuacom() {
		return guacom;
	}

	public void setGuacom(String guacom) {
		this.guacom = guacom;
	}

	public String getUploader() {
		return uploader;
	}

	public void setUploader(String uploader) {
		this.uploader = uploader;
	}

	public List<File> getFile() {
		return file;
	}

	public void setFile(List<File> file) {
		this.file = file;
	}

	public List<String> getFileFileName() {
		return fileFileName;
	}

	public void setFileFileName(List<String> fileFileName) {
		this.fileFileName = fileFileName;
	}

	public List<String> getFileContentType() {
		return fileContentType;
	}

	public void setFileContentType(List<String> fileContentType) {
		this.fileContentType = fileContentType;
	}

}