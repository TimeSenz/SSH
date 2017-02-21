package service;

import java.util.List;

import dao.Rootinfo;
import dao.RootinfoDAO;

public class RootinfoService {
	Rootinfo rootinfo=new Rootinfo();
	RootinfoDAO rootinfodao=new RootinfoDAO();
	public Rootinfo getRootinfo() {
		return rootinfo;
	}
	public void setRootinfo(Rootinfo rootinfo) {
		this.rootinfo = rootinfo;
	}
	public RootinfoDAO getRootinfodao() {
		return rootinfodao;
	}
	public void setRootinfodao(RootinfoDAO rootinfodao) {
		this.rootinfodao = rootinfodao;
	}
	
	//通过ID查询
	  public Rootinfo findRootById(Integer id){
		   
		   return rootinfodao.findById(id);
		   
	}
	//更新密码
	  public  void modifyRoot(Rootinfo rootinfo){
		    rootinfodao.update(rootinfo);  
	   }
	//查询所有
	  public List findAll(){
		    return rootinfodao.findAll();  
	  }
	  
}
