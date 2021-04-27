package com.song.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.HandlerInterceptor;

public class LoginAfterInterceptor implements HandlerInterceptor {
	
	private static final Logger logger = LoggerFactory.getLogger(AuthInterceptor.class);

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		//로그인 처리 후 로그인페이지 or 회원가입으로 이동할 경우
		HttpSession session = request.getSession();
		if (session.getAttribute("login") != null) {
			response.sendRedirect(request.getContextPath() + "/");
			return false;
		}
		return true;
	}
}
