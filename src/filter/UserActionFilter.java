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
 * class UserActionFilter
 */
@WebFilter("/UserActionFilter")
public class UserActionFilter implements Filter {

    
	private static String LOGIN_PAGE = "/user/login.jsp";  
    public UserActionFilter() {
        // TODO Auto-generated constructor stub
    }

	
	public void destroy() {
		// TODO Auto-generated method stub
	}

	
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;  
		  
        HttpServletResponse res = (HttpServletResponse) response;  
        // ��ǰ����·��   
        //String currentUrl = req.getRequestURI();  
  
        // ��ȡsession   
        HttpSession session = req.getSession();   
        String path = req.getRequestURI();
       // System.out.println(path);z
        
        // ���sessionΪ�գ������û�û�е�¼�����ض��������¼ҳ��   
        if (session == null 
        		|| session.getAttribute("userinfo") == null
        		) {  
        	
        	 if(path.endsWith("/user/login.jsp")){
        		 chain.doFilter(request, response); 
        		 System.out.println();
        		 return;  
        		
        	}else if(path.endsWith("/user/register.jsp")){
        		 chain.doFilter(request, response); 
        		 return;  
        	}else{
        		res.sendRedirect(req.getContextPath() + LOGIN_PAGE);  
                return;  
        	}
        	 
            
        }else{
        	 chain.doFilter(request, response);
        	
        }
      
	}

	
	public void init(FilterConfig fConfig) throws ServletException {
		
	}

}
