package blog.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;


public class InterceptorController extends HandlerInterceptorAdapter {
	public boolean preHandle(HttpServletRequest request, 
			HttpServletResponse response, Object handler) throws Exception{
		System.out.println("InterceptorManager.preHandle()");
		HttpSession session = request.getSession();
		if(session.getAttribute("username") == null){
			response.sendRedirect(request.getContextPath()+"/home.htm?page=1");
			return false;
		}
		return true;
	}
}
