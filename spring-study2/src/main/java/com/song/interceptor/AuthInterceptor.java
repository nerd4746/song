package com.song.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.HandlerInterceptor;

public class AuthInterceptor implements HandlerInterceptor {
	private static final Logger logger = LoggerFactory.getLogger(AuthInterceptor.class);

	

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession httpSession = request.getSession();
		if (httpSession.getAttribute("login") == null) {
			logger.info("비로그인 입니다.");
			response.sendRedirect("/user/notlogin");
			return false;
		}
		return true;
	}
}
