package ex.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * Servlet Filter implementation class AuthenticationFilter
 */
@WebFilter(filterName = "AuthenticationFilter", urlPatterns= {"/admin","/birthdayPageUser","/cart","/contactUser",
		"/createFlower","/deleteFlower","/deletteUser","/editFlower","/editUser","/introduceUser",
		"/openPageUser","/productManagement","/productManagement2","/productManagement3","/productManagement4","/searchUser"
		,"/shoppingCart","/user","/userManagement","/weddingPageUser","/wreathPageUser","/logout"})
public class AuthenticationFilter implements Filter {

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest httpReq = (HttpServletRequest) request;
		HttpSession session = httpReq.getSession(false);
		if (session != null && session.getAttribute("username")!= null) {
			chain.doFilter(request,response); 
		} else {
			RequestDispatcher dispatcher = httpReq.getServletContext().getRequestDispatcher("/view/login.jsp");
	        dispatcher.forward(request, response);
		}
		
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		
	} 
	
	public void destroy() {}
	
}