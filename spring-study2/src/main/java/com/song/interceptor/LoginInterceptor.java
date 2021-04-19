
package com.song.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;


public class LoginInterceptor implements HandlerInterceptor {
	private static final String LOGIN = "login";
	private static final Logger logger = LoggerFactory.getLogger(LoginInterceptor.class);

	@Override 
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception { 
		
		//세션 생성
		HttpSession httpSession = request.getSession();
		//modelAndView null처리
		if (modelAndView==null) {
			logger.info("modelAndView is NULL");
		} else {
			
			ModelMap modelMap = modelAndView.getModelMap(); //현재 modelAndView의 모델값을 modelMap에 담는다.
			
			Object userVO = modelMap.get("user"); //user변수로 저장했던 userVO내용을 가져온다.
			
			// userVO가 null이 아니면 httpsession에 userVO를 저장하고 /루트로 redirect
			if (userVO != null) { 
				logger.info("new login success");
				httpSession.setAttribute(LOGIN, userVO);
				response.sendRedirect("/");
			} 
		}
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		HttpSession httpSession = request.getSession();
	// 기존의 로그인 정보 제거 
	if (httpSession.getAttribute(LOGIN) != null) {
		logger.info("clear login data before");
		httpSession.removeAttribute(LOGIN); 
		} 
	return true;
	} 
}

