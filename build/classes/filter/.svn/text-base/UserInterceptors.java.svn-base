package filter;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import dao.Userinfo;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;

public class UserInterceptors extends AbstractInterceptor
{
  public String intercept(ActionInvocation invocation)
    throws Exception
  {
    ActionContext actionContext = invocation.getInvocationContext();
    Map session = actionContext.getSession();
    Userinfo account = (Userinfo)session.get("userinfo");

    HttpServletRequest request = ServletActionContext.getRequest();
    String path = request.getRequestURI();
    if(request.getParameter("user")!=null){
    	  if (request.getParameter("user").equals("login")) return invocation.invoke();
    	    if (request.getParameter("user").equals("register")) return invocation.invoke();
    }
  
    if (account == null) return "error";
    return invocation.invoke();
  }
}