package filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet Filter implementation class RootActionFilter
 */
@WebFilter("/RootActionFilter")
public class RootActionFilter implements Filter  {

    /**
     * Default constructor. 
     */
	private static String LOGIN_PAGE = "/root/choiceLogin.jsp";  
    public RootActionFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here

		HttpServletRequest req = (HttpServletRequest) request;  
		  
        HttpServletResponse res = (HttpServletResponse) response;  
        // 当前访问路径   
        //String currentUrl = req.getRequestURI();  
  
        // 获取session   
        HttpSession session = req.getSession();   
        String path = req.getRequestURI();
        //后台登陆方法，拦截器放行
        if (req.getRequestURI().contains("/rootinfo/login.action")||
        	req.getRequestURI().contains("/riskinfo/login.action")||
        	req.getRequestURI().contains("/finance/login.action")||
        	req.getRequestURI().contains("/cusinfo/login.action")
            ) {
        	chain.doFilter(request, response); 
    		 System.out.println("后台登陆方法，拦截器放行");
    		 return; 
        }
       // System.out.println(path);z
        
        // 如果session为空，或者用户没有登录，则重定向输出登录页面   
//        if(session == null){
            if(path.endsWith("/root/choiceLogin.jsp")){
            	chain.doFilter(request, response); 
         		 System.out.println();
         		 return;  
         		 
            }
            

            //
        	if( session.getAttribute("rootinfo")!=null||
        		session.getAttribute("riskinfo")!=null||
        		session.getAttribute("finance")!=null||
        		session.getAttribute("cusinfo")!=null
        		
        		
        	  ){
	        		chain.doFilter(request, response); 
	                return; 
        	}else{
        		 res.sendRedirect(req.getContextPath() + LOGIN_PAGE);
        		 return; 
        	}
        	
        	
//        }else{
//        	chain.doFilter(request, response);
//        }
        
        
      
        
        //如果角色不是admin或者user，则验证失败，用户重新登录。
//		if(!session.getAttribute("role").equals("admin") 
//				&& !session.getAttribute("role").equals("user"))
//		{
//			session.removeAttribute("name");
//			session.removeAttribute("role");
//			res.sendRedirect(req.getContextPath() + LOGIN_PAGE);
//			return;
//		}
		// pass the request along the filter chain
		
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}
}
