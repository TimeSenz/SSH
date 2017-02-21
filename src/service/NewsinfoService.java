package service;
import java.util.ArrayList;
import java.util.List;

import dao.Cusinfo;
import dao.Finance;
import dao.Newsinfo;
import dao.NewsinfoDAO;
public class NewsinfoService {
	private NewsinfoDAO newsinfodao=new NewsinfoDAO();
	//通过ID查询所有的finance
    public List findByType(String type,int stratLine){
    	List donglist=new ArrayList();
    	List gonglist=new ArrayList();
    	List huanlist=new ArrayList();
    	List meilist=new ArrayList();
    	if(type.equals("动")){
    		donglist=newsinfodao.findByFType("动",stratLine);
    		return donglist;
    	}
    	else if(type.equals("公")){
    		gonglist=newsinfodao.findByFType("公",stratLine);
    		return gonglist;
    	}
    	else if(type.equals("还")){
    		huanlist=newsinfodao.findByFType("还",stratLine);
    		return huanlist;
    	}
    	else if(type.equals("媒")){
    		meilist=newsinfodao.findByFType("媒",stratLine);
    		return meilist;
    	}
		return null;
	  }
	//通过id查询所有的newsinfo
    public Newsinfo findNewsinfoById(Integer id){
        return newsinfodao.findById(id);
    }
    //删除
   	public void delete(Newsinfo del){
   		newsinfodao.delete(del);
               }	
	//添加
	public void add(Newsinfo newsinfo){
		    newsinfodao.save(newsinfo);
	    } 
	
	//更新
	public void modify(Newsinfo vo){
		newsinfodao.update(vo);
	    }
	
	//首页查询最新动态和最新公告   number=5  String type,int stratLine,int number
	public List findFirstByType(String type,int stratLine, int number){
		return newsinfodao.selectBy(type,stratLine,number);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public NewsinfoDAO getNewsinfodao() {
		return newsinfodao;
	}
	public void setNewsinfodao(NewsinfoDAO newsinfodao) {
		this.newsinfodao = newsinfodao;
	}
}
