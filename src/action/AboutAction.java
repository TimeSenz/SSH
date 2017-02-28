package action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.httpclient.HttpException;
import org.apache.struts2.ServletActionContext;

import util.PayUtil;

public class AboutAction {
	
	public String jump() throws HttpException, IOException{
		HttpServletRequest request = ServletActionContext.getRequest();
		String flag=request.getParameter("flag");
		System.out.println("跳转判定:"+flag);
		//集团介绍
		if(flag.equals("group")){
			
			return "group";
		}
//		//集团架构
//		if(flag.equals("structure")){
//			
//			return "structure";
//		}
//		//企业文化
//		if(flag.equals("culture")){
//			
//			return "culture";
//		}
		//公司介绍
		if(flag.equals("com")){
			
			return "com";
		}
//		//公司理念
//		if(flag.equals("supports")){
//			
//			return "supports";
//		}
		//联系我们
		if(flag.equals("contact")){
			
			return "contact";
		}
		/* //董事长寄语
        if(flag.equals("bossWord")){
			
			return "bossWord";
		}*/
		//合作伙伴
       if(flag.equals("cooperate")){
			
			return "cooperate";
		}
		//招贤纳士
       if(flag.equals("recruit")){
			
			return "recruit";
		}
		return "success";
	}

}
