package com.acorn.health.intercepter;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;


public class LoginIntercepter extends HandlerInterceptorAdapter{
	

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) 
			throws Exception{
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		
		
		//로그인하지 않은 경우
		if( id == null) {
			response.sendRedirect(request.getContextPath()+"/loginform");
			return false;
		}
		
		 // 세션에 사용자 정보 담기
        session.setAttribute("userId", id);
        
		return true;
	}

}
