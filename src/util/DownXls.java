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
	 * ���ڣ�2015-01-07 �޸��ˣ��ַ� �޸Ĺ��ܣ��ʽ���ˮExcel����
	 * */
	public void RecordsXls(String path, List list) throws IOException,
			RowsExceededException, WriteException {
		System.out.println(list.get(0));
		List<Records_Nick> records_nick_list = list;
		Fdxx vo = new Fdxx();
		FdxxDAO dao = new FdxxDAO();
		WritableWorkbook excel = Workbook.createWorkbook(new File(path
				+ "\\Excel\\RecordsXls.xls"));
		// 2���������EXCEL�ĵ��У�����һ��SHEETҳ

		WritableSheet sheet = excel.createSheet("�ʽ���ˮ�����б�", 0);
		// 3�� ����һ����Ԫ�� �����������������ݣ�
		// Label cell1 = new Label(0,0,"ID");
		// Label cell2 = new Label(1,0,"����");
		// Label cell3 = new Label(2,0,"ת���˻�");
		// Label cell4 = new Label(3,0,"ת���˻�");
		// Label cell5 = new Label(4,0,"���");
		// Label cell6 = new Label(5,0,"֧����ʽ");
		// Label cell7 = new Label(6,0,"ʱ��");
		// Label cell8 = new Label(7,0,"�����");
		// Label cell9 = new Label(8,0,"��ע");

		Label cell1 = new Label(0, 0, "ID");
		Label cell2 = new Label(1, 0, "�����");
		Label cell3 = new Label(2, 0, "ת���˻�");
		Label cell4 = new Label(3, 0, "ת���˻�");
		Label cell5 = new Label(4, 0, "����");
		Label cell6 = new Label(5, 0, "���");
		Label cell7 = new Label(6, 0, "֧����ʽ");
		Label cell8 = new Label(7, 0, "ʱ��");
		Label cell9 = new Label(8, 0, "��ע");
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
		// 4������Ԫ����ĳһ��SHEETҳ��
		sheet.addCell(cell1);
		sheet.addCell(cell2);
		sheet.addCell(cell3);
		sheet.addCell(cell4);
		sheet.addCell(cell5);
		sheet.addCell(cell6);
		sheet.addCell(cell7);
		sheet.addCell(cell8);
		sheet.addCell(cell9);
		// 5�����ڴ���EXCEL���뵽Ӳ����
		excel.write();
		excel.close();
		System.out.println("�ʽ���ˮ�����б���д��Ӳ��");
	}

	public void JbsqXls(String path, List list) throws IOException,
			RowsExceededException, WriteException {

		Jbsq jbsq = new Jbsq();
		JbsqDAO jbsqdao = new JbsqDAO();

		WritableWorkbook excel = Workbook.createWorkbook(new File(path
				+ "\\Excel\\basicLoan.xls"));
		// 2���������EXCEL�ĵ��У�����һ��SHEETҳ
		WritableSheet sheet = excel.createSheet("������������", 0);
		// 3�� ����һ����Ԫ�� �����������������ݣ�
		Label cell1 = new Label(0, 0, "ID");
		Label cell2 = new Label(1, 0, "����");
		Label cell3 = new Label(2, 0, "�Ա�");
		Label cell4 = new Label(3, 0, "�������");
		Label cell5 = new Label(4, 0, "�绰����");
		Label cell6 = new Label(5, 0, "����ʱ��");

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

		// 4������Ԫ����ĳһ��SHEETҳ��
		sheet.addCell(cell1);
		sheet.addCell(cell2);
		sheet.addCell(cell3);
		sheet.addCell(cell4);
		sheet.addCell(cell5);
		sheet.addCell(cell6);
		// 5�����ڴ���EXCEL���뵽Ӳ����
		excel.write();
		excel.close();

		// System.out.println("����������д��Ӳ��");

	}

	public void ClxxXls(String path, List list) throws IOException,
			RowsExceededException, WriteException {

		Clxx vo = new Clxx();
		ClxxDAO dao = new ClxxDAO();

		WritableWorkbook excel = Workbook.createWorkbook(new File(path
				+ "\\Excel\\carLoan.xls"));
		// 2���������EXCEL�ĵ��У�����һ��SHEETҳ
		WritableSheet sheet = excel.createSheet("������������", 0);
		// 3�� ����һ����Ԫ�� �����������������ݣ�
		Label cell1 = new Label(0, 0, "ID");
		Label cell2 = new Label(1, 0, "����");
		Label cell3 = new Label(2, 0, "�ֻ���");
		Label cell4 = new Label(3, 0, "����ʱ��");
		Label cell5 = new Label(4, 0, "�Ǽǳ���");
		Label cell6 = new Label(5, 0, "���ü۸�");
		Label cell7 = new Label(6, 0, "��������");
		Label cell8 = new Label(7, 0, "����");
		Label cell9 = new Label(8, 0, "����");
		Label cell10 = new Label(9, 0, "ʱ��");

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

		// 4������Ԫ����ĳһ��SHEETҳ��
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
		// 5�����ڴ���EXCEL���뵽Ӳ����
		excel.write();
		excel.close();

		// System.out.println("������Ϣ��д��Ӳ��");

	}

	public void FdxxXls(String path, List list) throws IOException,
			RowsExceededException, WriteException {

		Fdxx vo = new Fdxx();
		FdxxDAO dao = new FdxxDAO();

		WritableWorkbook excel = Workbook.createWorkbook(new File(path
				+ "\\Excel\\housingLoan.xls"));
		// 2���������EXCEL�ĵ��У�����һ��SHEETҳ
		WritableSheet sheet = excel.createSheet("������������", 0);
		// 3�� ����һ����Ԫ�� �����������������ݣ�
		Label cell1 = new Label(0, 0, "ID");
		Label cell2 = new Label(1, 0, "����");
		Label cell3 = new Label(2, 0, "�ֻ���");
		Label cell4 = new Label(3, 0, "�������");
		Label cell5 = new Label(4, 0, "�������ڳ���");
		Label cell6 = new Label(5, 0, "����");
		Label cell7 = new Label(6, 0, "�������");
		Label cell8 = new Label(7, 0, "�Ѵ����");
		Label cell9 = new Label(8, 0, "������");
		Label cell10 = new Label(9, 0, "��������");
		Label cell11 = new Label(7, 0, "����");
		Label cell12 = new Label(8, 0, "����");
		Label cell13 = new Label(9, 0, "����ʱ��");

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

		// 4������Ԫ����ĳһ��SHEETҳ��
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
		// 5�����ڴ���EXCEL���뵽Ӳ����
		excel.write();
		excel.close();

		// System.out.println("������Ϣ��д��Ӳ��");

	}

	public void HxdXls(String path, List list) throws IOException,
			RowsExceededException, WriteException {

		Hxd vo = new Hxd();
		HxdDAO dao = new HxdDAO();

		WritableWorkbook excel = Workbook.createWorkbook(new File(path
				+ "\\Excel\\creditLoan.xls"));
		// 2���������EXCEL�ĵ��У�����һ��SHEETҳ
		WritableSheet sheet = excel.createSheet("���Ŵ���������", 0);
		// 3�� ����һ����Ԫ�� �����������������ݣ�
		Label cell1 = new Label(0, 0, "ID");
		Label cell2 = new Label(1, 0, "����");
		Label cell3 = new Label(2, 0, "�ֻ���");
		Label cell4 = new Label(3, 0, "���ڳ���");
		Label cell5 = new Label(4, 0, "��˾����");
		Label cell6 = new Label(5, 0, "ְλ");
		Label cell7 = new Label(6, 0, "������");
		Label cell8 = new Label(7, 0, "������");
		Label cell9 = new Label(8, 0, "��������");
		Label cell10 = new Label(9, 0, "��������");
		Label cell11 = new Label(7, 0, "����");
		Label cell12 = new Label(8, 0, "����");
		Label cell13 = new Label(9, 0, "����ʱ��");

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

		// 4������Ԫ����ĳһ��SHEETҳ��
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
		// 5�����ڴ���EXCEL���뵽Ӳ����
		excel.write();
		excel.close();

		// System.out.println("���Ŵ���Ϣ��д��Ӳ��");

	}

	public void lotteryXls(String path, List list) throws IOException,
			RowsExceededException, WriteException {

		WritableWorkbook excel = Workbook.createWorkbook(new File(path
				+ "\\Excel\\lottery.xls"));
		// 2���������EXCEL�ĵ��У�����һ��SHEETҳ
		WritableSheet sheet = excel.createSheet("�齱����", 0);
		// 3�� ����һ����Ԫ�� �����������������ݣ�
		Label cell1 = new Label(0, 0, "ID");
		Label cell2 = new Label(1, 0, "����");
		Label cell3 = new Label(2, 0, "�绰����");

		for (int i = 1; i < list.size() + 1; i++) {

			Lottery l = (Lottery) list.get(i - 1);
			Label cella = new Label(0, i, l.getUserid().toString());
			Label cellb = new Label(1, i, l.getName());
			Label cellc = new Label(2, i, l.getPhone());

			sheet.addCell(cella);
			sheet.addCell(cellb);
			sheet.addCell(cellc);

		}

		// 4������Ԫ����ĳһ��SHEETҳ��
		sheet.addCell(cell1);
		sheet.addCell(cell2);
		sheet.addCell(cell3);
		// 5�����ڴ���EXCEL���뵽Ӳ����
		excel.write();
		excel.close();

		// System.out.println("����������д��Ӳ��");

	}

}
