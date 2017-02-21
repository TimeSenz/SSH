package dao;

import java.util.ArrayList;
import java.util.List;

public class Person_Profit {
	String finance_type;
	Double finance_accounts;
	Double profit_money;
	int avg_profit;
	int own_num;
	List list=new ArrayList();
	
	public String getFinance_type() {
		return finance_type;
	}
	public void setFinance_type(String finance_type) {
		this.finance_type = finance_type;
	}
	public Double getFinance_accounts() {
		return finance_accounts;
	}
	public void setFinance_accounts(Double finance_accounts) {
		this.finance_accounts = finance_accounts;
	}
	public Double getProfit_money() {
		return profit_money;
	}
	public void setProfit_money(Double profit_money) {
		this.profit_money = profit_money;
	}
	public int getAvg_profit() {
		return avg_profit;
	}
	public void setAvg_profit(int avg_profit) {
		this.avg_profit = avg_profit;
	}
	public int getOwn_num() {
		return own_num;
	}
	public void setOwn_num(int own_num) {
		this.own_num = own_num;
	}
	public List getList() {
		return list;
	}
	public void setList(List list) {
		this.list = list;
	}
	
	

}
