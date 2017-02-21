package filter;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;

import dao.Cusinfo;
import dao.Finance;
import dao.Riskinfo;
import dao.Rootinfo;
import dao.Userinfo;

public class RootInterceptors {
	 public String intercept(ActionInvocation invocation)
			    throws Exception
			  {
			    ActionContext actionContext = invocation.getInvocationContext();
			    Map session = actionContext.getSession();
			    Rootinfo root = null;//root
			    Finance cw = null;//财务
			    Cusinfo kf = null;//客服
			    Riskinfo fk = null;//风控
			    if(session.get("rootinfo")!=null){
			    	root = (Rootinfo)session.get("rootinfo");
				    System.out.println("root账户："+root.getId());
			    }else if(session.get("finance")!=null){
			    	cw = (Finance)session.get("finance");
				    System.out.println("finance账户："+cw.getId());
			    }else if(session.get("cusinfo")!=null){
			    	kf = (Cusinfo)session.get("cusinfo");
				    System.out.println("cusinfo账户："+kf.getId());
			    }else if(session.get("riskinfo")!=null){
			    	fk = (Riskinfo)session.get("riskinfo");
				    System.out.println("riskinfo账户："+fk.getId());
			    }

			    HttpServletRequest request = ServletActionContext.getRequest();
			    String path = request.getRequestURI();
//			    if(request.getParameter("user")!=null){
//			    	  if (request.getParameter("user").equals("login")) return invocation.invoke();
//			    	    if (request.getParameter("user").equals("register")) return invocation.invoke();
//			    }
			  
			    if (root != null){
			    	return invocation.invoke();
			    }else if(cw != null){
			    	return invocation.invoke();
			    }else if(kf != null){
			    	return invocation.invoke();
			    }else if(fk != null){
			    	return invocation.invoke();
			    }else{
			    	//return "error";
			    	System.out.println("发现没有登陆，返回到后台页面");
			    	return "error";
			    }
			    	
			    
			  }
}
