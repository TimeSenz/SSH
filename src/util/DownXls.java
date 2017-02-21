package util;

import dao.Hxd;
import dao.HxdDAO;

import java.io.File;
import java.io.IOException;
import java.util.List;

import dao.Jbsq;
import dao.JbsqDAO;
import jxl.Workbook;
import jxl.write.Label;
import jxl.write.WritableCellFormat;
import jxl.write.WritableFont;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;
import jxl.write.WriteException;
import jxl.write.biff.RowsExceededException;
import dao.Clxx;
import dao.ClxxDAO;
import dao.Fdxx;
import dao.FdxxDAO;
import dao.Lottery;
import dao.LotteryDAO;
import dao.Records;
import dao.Records_Nick;

public class DownXls {

	String projectURL = System.getProperty("user.dir");

	/**
	 * 日期：2015-01-07 修改人：贾凡 修改功能：资金流水Excel下载
	 * */
	public void RecordsXls(String path, List list) throws IOException,
			RowsExceededException, WriteException {
		System.out.println(list.get(0));
		List<Records_Nick> records_nick_list = list;
		Fdxx vo = new Fdxx();
		FdxxDAO dao = new FdxxDAO();
		WritableWorkbook excel = Workbook.createWorkbook(new File(path
				+ "\\Excel\\RecordsXls.xls"));
		// 2：在虚拟的EXCEL文档中，创建一个SHEET页

		WritableSheet sheet = excel.createSheet("资金流水详情列表", 0);
		// 3： 创建一个单元格 （列数，行数，内容）
		// Label cell1 = new Label(0,0,"ID");
		// Label cell2 = new Label(1,0,"类型");
		// Label cell3 = new Label(2,0,"转入账户");
		// Label cell4 = new Label(3,0,"转出账户");
		// Label cell5 = new Label(4,0,"金额");
		// Label cell6 = new Label(5,0,"支付方式");
		// Label cell7 = new Label(6,0,"时间");
		// Label cell8 = new Label(7,0,"相关人");
		// Label cell9 = new Label(8,0,"备注");

		Label cell1 = new Label(0, 0, "ID");
		Label cell2 = new Label(1, 0, "相关人");
		Label cell3 = new Label(2, 0, "转入账户");
		Label cell4 = new Label(3, 0, "转出账户");
		Label cell5 = new Label(4, 0, "类型");
		Label cell6 = new Label(5, 0, "金额");
		Label cell7 = new Label(6, 0, "支付方式");
		Label cell8 = new Label(7, 0, "时间");
		Label cell9 = new Label(8, 0, "备注");
		for (int i = 1; i < records_nick_list.size() + 1; i++) {
			Records down = (Records) records_nick_list.get(i - 1).getRe();
			// Label cella = new Label(0,i,down.getRecid().toString());
			// Label cellb = new Label(1,i,down.getType());
			// Label cellc = new Label(2,i,down.getIntoinfo());
			// Label celld = new Label(3,i,down.getOuttoinfo());
			// Label celle = new Label(4,i,down.getMoney().toString());
			// Label cellf = new Label(5,i,down.getPaytype());
			// Label cellg = new Label(6,i,down.getTime().toString());
			// Label cellh = new Label(7,i,down.getPeople());
			// Label celli = new Label(8,i,down.getRemark());

			Label cella = new Label(0, i, down.getRecid().toString());
			Label cellb = new Label(1, i, down.getPeople());
			Label cellc = new Label(2, i, down.getIntoinfo());
			Label celld = new Label(3, i, down.getOuttoinfo());
			Label celle = new Label(4, i, down.getType());
			Label cellf = new Label(5, i, down.getMoney().toString());
			Label cellg = new Label(6, i, down.getPaytype());
			Label cellh = new Label(7, i, down.getTime().toString());
			Label celli = new Label(8, i, down.getRemark());
			sheet.addCell(cella);
			sheet.addCell(cellb);
			sheet.addCell(cellc);
			sheet.addCell(celld);
			sheet.addCell(celle);
			sheet.addCell(cellf);
			sheet.addCell(cellg);
			sheet.addCell(cellh);
			sheet.addCell(celli);
		}
		// 4：将单元个与某一个SHEET页绑定
		sheet.addCell(cell1);
		sheet.addCell(cell2);
		sheet.addCell(cell3);
		sheet.addCell(cell4);
		sheet.addCell(cell5);
		sheet.addCell(cell6);
		sheet.addCell(cell7);
		sheet.addCell(cell8);
		sheet.addCell(cell9);
		// 5：将内存中EXCEL导入到硬盘上
		excel.write();
		excel.close();
		System.out.println("资金流水详情列表已写入硬盘");
	}

	public void JbsqXls(String path, List list) throws IOException,
			RowsExceededException, WriteException {

		Jbsq jbsq = new Jbsq();
		JbsqDAO jbsqdao = new JbsqDAO();

		WritableWorkbook excel = Workbook.createWorkbook(new File(path
				+ "\\Excel\\basicLoan.xls"));
		// 2：在虚拟的EXCEL文档中，创建一个SHEET页
		WritableSheet sheet = excel.createSheet("基本申请名单", 0);
		// 3： 创建一个单元格 （列数，行数，内容）
		Label cell1 = new Label(0, 0, "ID");
		Label cell2 = new Label(1, 0, "姓名");
		Label cell3 = new Label(2, 0, "性别");
		Label cell4 = new Label(3, 0, "贷款金额（万）");
		Label cell5 = new Label(4, 0, "电话号码");
		Label cell6 = new Label(5, 0, "申请时间");

		for (int i = 1; i < list.size() + 1; i++) {

			Jbsq down = (Jbsq) list.get(i - 1);
			Label cella = new Label(0, i, down.getId().toString());
			Label cellb = new Label(1, i, down.getXm());
			Label cellc = new Label(2, i, down.getXb());
			Label celld = new Label(3, i, down.getDkje().toString());
			Label celle = new Label(4, i, down.getDhhm());
			Label cellf = new Label(5, i, down.getTime().toString());

			sheet.addCell(cella);
			sheet.addCell(cellb);
			sheet.addCell(cellc);
			sheet.addCell(celld);
			sheet.addCell(celle);
			sheet.addCell(cellf);

		}

		// 4：将单元个与某一个SHEET页绑定
		sheet.addCell(cell1);
		sheet.addCell(cell2);
		sheet.addCell(cell3);
		sheet.addCell(cell4);
		sheet.addCell(cell5);
		sheet.addCell(cell6);
		// 5：将内存中EXCEL导入到硬盘上
		excel.write();
		excel.close();

		// System.out.println("基本申请已写入硬盘");

	}

	public void ClxxXls(String path, List list) throws IOException,
			RowsExceededException, WriteException {

		Clxx vo = new Clxx();
		ClxxDAO dao = new ClxxDAO();

		WritableWorkbook excel = Workbook.createWorkbook(new File(path
				+ "\\Excel\\carLoan.xls"));
		// 2：在虚拟的EXCEL文档中，创建一个SHEET页
		WritableSheet sheet = excel.createSheet("车贷申请名单", 0);
		// 3： 创建一个单元格 （列数，行数，内容）
		Label cell1 = new Label(0, 0, "ID");
		Label cell2 = new Label(1, 0, "姓名");
		Label cell3 = new Label(2, 0, "手机号");
		Label cell4 = new Label(3, 0, "购车时间");
		Label cell5 = new Label(4, 0, "登记城市");
		Label cell6 = new Label(5, 0, "购置价格");
		Label cell7 = new Label(6, 0, "电子邮箱");
		Label cell8 = new Label(7, 0, "留言");
		Label cell9 = new Label(8, 0, "类型");
		Label cell10 = new Label(9, 0, "时间");

		for (int i = 1; i < list.size() + 1; i++) {

			Clxx down = (Clxx) list.get(i - 1);
			Label cella = new Label(0, i, down.getId().toString());
			Label cellb = new Label(1, i, down.getXm());
			Label cellc = new Label(2, i, down.getSjh());
			Label celld = new Label(3, i, down.getGcsj());
			Label celle = new Label(4, i, down.getDjcs());
			Label cellf = new Label(5, i, down.getGzjg().toString());
			Label cellg = new Label(6, i, down.getDzyx());
			Label cellh = new Label(7, i, down.getLy());
			Label celli = new Label(8, i, down.getLx());
			Label cellj = new Label(9, i, down.getTime().toString());

			sheet.addCell(cella);
			sheet.addCell(cellb);
			sheet.addCell(cellc);
			sheet.addCell(celld);
			sheet.addCell(celle);
			sheet.addCell(cellf);
			sheet.addCell(cellg);
			sheet.addCell(cellh);
			sheet.addCell(celli);
			sheet.addCell(cellj);

		}

		// 4：将单元个与某一个SHEET页绑定
		sheet.addCell(cell1);
		sheet.addCell(cell2);
		sheet.addCell(cell3);
		sheet.addCell(cell4);
		sheet.addCell(cell5);
		sheet.addCell(cell6);
		sheet.addCell(cell7);
		sheet.addCell(cell8);
		sheet.addCell(cell9);
		sheet.addCell(cell10);
		// 5：将内存中EXCEL导入到硬盘上
		excel.write();
		excel.close();

		// System.out.println("车贷信息已写入硬盘");

	}

	public void FdxxXls(String path, List list) throws IOException,
			RowsExceededException, WriteException {

		Fdxx vo = new Fdxx();
		FdxxDAO dao = new FdxxDAO();

		WritableWorkbook excel = Workbook.createWorkbook(new File(path
				+ "\\Excel\\housingLoan.xls"));
		// 2：在虚拟的EXCEL文档中，创建一个SHEET页
		WritableSheet sheet = excel.createSheet("房贷申请名单", 0);
		// 3： 创建一个单元格 （列数，行数，内容）
		Label cell1 = new Label(0, 0, "ID");
		Label cell2 = new Label(1, 0, "姓名");
		Label cell3 = new Label(2, 0, "手机号");
		Label cell4 = new Label(3, 0, "房屋面积");
		Label cell5 = new Label(4, 0, "房屋所在城市");
		Label cell6 = new Label(5, 0, "房龄");
		Label cell7 = new Label(6, 0, "贷款机构");
		Label cell8 = new Label(7, 0, "已贷金额");
		Label cell9 = new Label(8, 0, "申请金额");
		Label cell10 = new Label(9, 0, "电子邮箱");
		Label cell11 = new Label(7, 0, "留言");
		Label cell12 = new Label(8, 0, "类型");
		Label cell13 = new Label(9, 0, "申请时间");

		for (int i = 1; i < list.size() + 1; i++) {

			Fdxx down = (Fdxx) list.get(i - 1);
			Label cella = new Label(0, i, down.getId().toString());
			Label cellb = new Label(1, i, down.getXm());
			Label cellc = new Label(2, i, down.getSjh());
			Label celld = new Label(3, i, down.getFwmj());
			Label celle = new Label(4, i, down.getFwszcs());
			Label cellf = new Label(5, i, down.getFl());
			Label cellg = new Label(6, i, down.getDkjg());
			Label cellh = new Label(7, i, down.getYdje());
			Label celli = new Label(8, i, down.getSqje());
			Label cellj = new Label(9, i, down.getDzyx());
			Label cellk = new Label(7, i, down.getLy());
			Label celll = new Label(8, i, down.getLx());
			Label cellm = new Label(9, i, down.getTime().toString());

			sheet.addCell(cella);
			sheet.addCell(cellb);
			sheet.addCell(cellc);
			sheet.addCell(celld);
			sheet.addCell(celle);
			sheet.addCell(cellf);
			sheet.addCell(cellg);
			sheet.addCell(cellh);
			sheet.addCell(celli);
			sheet.addCell(cellj);
			sheet.addCell(cellk);
			sheet.addCell(celll);
			sheet.addCell(cellm);

		}

		// 4：将单元个与某一个SHEET页绑定
		sheet.addCell(cell1);
		sheet.addCell(cell2);
		sheet.addCell(cell3);
		sheet.addCell(cell4);
		sheet.addCell(cell5);
		sheet.addCell(cell6);
		sheet.addCell(cell7);
		sheet.addCell(cell8);
		sheet.addCell(cell9);
		sheet.addCell(cell10);
		sheet.addCell(cell11);
		sheet.addCell(cell12);
		sheet.addCell(cell13);
		// 5：将内存中EXCEL导入到硬盘上
		excel.write();
		excel.close();

		// System.out.println("房贷信息已写入硬盘");

	}

	public void HxdXls(String path, List list) throws IOException,
			RowsExceededException, WriteException {

		Hxd vo = new Hxd();
		HxdDAO dao = new HxdDAO();

		WritableWorkbook excel = Workbook.createWorkbook(new File(path
				+ "\\Excel\\creditLoan.xls"));
		// 2：在虚拟的EXCEL文档中，创建一个SHEET页
		WritableSheet sheet = excel.createSheet("汇信贷申请名单", 0);
		// 3： 创建一个单元格 （列数，行数，内容）
		Label cell1 = new Label(0, 0, "ID");
		Label cell2 = new Label(1, 0, "姓名");
		Label cell3 = new Label(2, 0, "手机号");
		Label cell4 = new Label(3, 0, "所在城市");
		Label cell5 = new Label(4, 0, "公司名称");
		Label cell6 = new Label(5, 0, "职位");
		Label cell7 = new Label(6, 0, "月收入");
		Label cell8 = new Label(7, 0, "贷款金额");
		Label cell9 = new Label(8, 0, "贷款期限");
		Label cell10 = new Label(9, 0, "电子邮箱");
		Label cell11 = new Label(7, 0, "留言");
		Label cell12 = new Label(8, 0, "类型");
		Label cell13 = new Label(9, 0, "申请时间");

		for (int i = 1; i < list.size() + 1; i++) {

			Hxd down = (Hxd) list.get(i - 1);
			Label cella = new Label(0, i, down.getId().toString());
			Label cellb = new Label(1, i, down.getXm());
			Label cellc = new Label(2, i, down.getSjh());
			Label celld = new Label(3, i, down.getSzcs());
			Label celle = new Label(4, i, down.getGsmc());
			Label cellf = new Label(5, i, down.getZw());
			Label cellg = new Label(6, i, down.getYsr());
			Label cellh = new Label(7, i, down.getDkje());
			Label celli = new Label(8, i, down.getDkqx());
			Label cellj = new Label(9, i, down.getDzyx());
			Label cellk = new Label(7, i, down.getLy());
			Label celll = new Label(8, i, down.getLx());
			Label cellm = new Label(9, i, down.getTime().toString());

			sheet.addCell(cella);
			sheet.addCell(cellb);
			sheet.addCell(cellc);
			sheet.addCell(celld);
			sheet.addCell(celle);
			sheet.addCell(cellf);
			sheet.addCell(cellg);
			sheet.addCell(cellh);
			sheet.addCell(celli);
			sheet.addCell(cellj);
			sheet.addCell(cellk);
			sheet.addCell(celll);
			sheet.addCell(cellm);

		}

		// 4：将单元个与某一个SHEET页绑定
		sheet.addCell(cell1);
		sheet.addCell(cell2);
		sheet.addCell(cell3);
		sheet.addCell(cell4);
		sheet.addCell(cell5);
		sheet.addCell(cell6);
		sheet.addCell(cell7);
		sheet.addCell(cell8);
		sheet.addCell(cell9);
		sheet.addCell(cell10);
		sheet.addCell(cell11);
		sheet.addCell(cell12);
		sheet.addCell(cell13);
		// 5：将内存中EXCEL导入到硬盘上
		excel.write();
		excel.close();

		// System.out.println("汇信贷信息已写入硬盘");

	}

	public void lotteryXls(String path, List list) throws IOException,
			RowsExceededException, WriteException {

		WritableWorkbook excel = Workbook.createWorkbook(new File(path
				+ "\\Excel\\lottery.xls"));
		// 2：在虚拟的EXCEL文档中，创建一个SHEET页
		WritableSheet sheet = excel.createSheet("抽奖名单", 0);
		// 3： 创建一个单元格 （列数，行数，内容）
		Label cell1 = new Label(0, 0, "ID");
		Label cell2 = new Label(1, 0, "姓名");
		Label cell3 = new Label(2, 0, "电话号码");

		for (int i = 1; i < list.size() + 1; i++) {

			Lottery l = (Lottery) list.get(i - 1);
			Label cella = new Label(0, i, l.getUserid().toString());
			Label cellb = new Label(1, i, l.getName());
			Label cellc = new Label(2, i, l.getPhone());

			sheet.addCell(cella);
			sheet.addCell(cellb);
			sheet.addCell(cellc);

		}

		// 4：将单元个与某一个SHEET页绑定
		sheet.addCell(cell1);
		sheet.addCell(cell2);
		sheet.addCell(cell3);
		// 5：将内存中EXCEL导入到硬盘上
		excel.write();
		excel.close();

		// System.out.println("基本申请已写入硬盘");

	}

}
