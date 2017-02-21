package service;

import dao.Cominfo;
import dao.CominfoDAO;

public class CominfoService {

	Cominfo cominfo=new Cominfo();
	CominfoDAO cominfodao=new CominfoDAO();
	
	
	public Cominfo getCominfo() {
		return cominfo;
	}
	public void setCominfo(Cominfo cominfo) {
		this.cominfo = cominfo;
	}
	public CominfoDAO getCominfodao() {
		return cominfodao;
	}
	public void setCominfodao(CominfoDAO cominfodao) {
		this.cominfodao = cominfodao;
	}
	
	
}
