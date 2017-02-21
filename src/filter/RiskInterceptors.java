package filter;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

import dao.Riskinfo;

public class RiskInterceptors extends AbstractInterceptor
{
	
	  public String intercept(ActionInvocation invocation)
	    throws Exception
	  {
	    ActionContext actionContext = invocation.getInvocationContext();
	    Map session = actionContext.getSession();
	    Riskinfo account = (Riskinfo)session.get("riskinfo");
	    
	
	    
	    HttpServletRequest request = ServletActionContext.getRequest();
	    String login=request.getParameter("login");
	    String password=request.getParameter("password");
	    request.setAttribute("login", login);
	    request.setAttribute("password", password);
	    request.setAttribute("currentPage", request.getAttribute("currentPage"));
	    request.setAttribute("totalPage", request.getAttribute("totalPage"));
	    request.setAttribute("areaPage", request.getAttribute("areaPage"));
	    
	    String path = request.getRequestURI();
	    if(request.getParameter("flag")!=null){
	    	
	    	  if (request.getParameter("flag").equals("login")) return invocation.invoke();
	    	    if (request.getParameter("flag").equals("register")) return invocation.invoke();
	    }
	  
	    if (account == null) return "error";
	    return invocation.invoke();
	  }

	  
	  
	}