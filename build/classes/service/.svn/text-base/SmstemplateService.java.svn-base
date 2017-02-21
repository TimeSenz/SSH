package service;

import java.util.List;

import dao.Newsinfo;
import dao.Smstemplate;
import dao.SmstemplateDAO;

public class SmstemplateService {
     SmstemplateDAO smsdao=new SmstemplateDAO();
    
     //查询所有的短信模板
    public List findAll(int stratLine){
    	return smsdao.findAll(stratLine);
    	
    } 
	//通过id查询所有的sms
    public Smstemplate findSmsById(Integer id){
        return smsdao.findById(id);
    }
    //删除
   	public void delete(Smstemplate del){
   		smsdao.delete(del);
               }	
   	
   	
  //添加
  	public void add(Smstemplate sms){
  		    smsdao.save(sms);
  	    } 
  	
  //更新
  	public void modify(Smstemplate vo){
  		smsdao.update(vo);
  	    }
  	
  	
  	
	public SmstemplateDAO getSmsdao() {
		return smsdao;
	}

	public void setSmsdao(SmstemplateDAO smsdao) {
		this.smsdao = smsdao;
	}
}
