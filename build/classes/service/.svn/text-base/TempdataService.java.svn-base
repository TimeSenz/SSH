package service;

import java.util.List;

import dao.Tempdata;
import dao.TempdataDAO;

public class TempdataService {
	
	Tempdata tempdata=new Tempdata();
	TempdataDAO tempdatadao=new TempdataDAO();
	public void save(Tempdata tempdata){
		
		tempdatadao.save(tempdata);
	}
	
	public Tempdata getTempdata() {
		return tempdata;
	}
	public void setTempdata(Tempdata tempdata) {
		this.tempdata = tempdata;
	}
	public TempdataDAO getTempdatadao() {
		return tempdatadao;
	}
	public void setTempdatadao(TempdataDAO tempdatadao) {
		this.tempdatadao = tempdatadao;
	}
	
	//查询所有
	public List findAll(){
		return tempdatadao.findAll();
	}
	//检索单用户理财记录
	public List <Tempdata> findByLcrid(int lcrid){
		
		return tempdatadao.findByLcrid(lcrid);
	}
    //检索单标购买记录
	public List<Tempdata> findByBidid(int bidid){
		
		return tempdatadao.findByBidid(bidid);
	}
	//根据ID查询所有
	public Tempdata findById(Integer id){
		return tempdatadao.findById(id);
	}
}
