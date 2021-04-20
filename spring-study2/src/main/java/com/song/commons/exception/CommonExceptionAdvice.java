package com.song.commons.exception;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice
public class CommonExceptionAdvice {
	private static final Logger logger = LoggerFactory.getLogger(CommonExceptionAdvice.class);
	
	//@ControllerAdvice 어노테이션을 사용하기 위한 @ExceptionHandler 적절한 타입의 예외처리 수행
	@ExceptionHandler(Exception.class)
	
	//Model 타입을 파라미터로 사용하는것은 허용하지 않기 때문에 ModelAndView 타입을 사용 ModelAndView = 하나의 객체로 Model,View 동시에 처리
	public ModelAndView commonException(Exception e) {
		logger.info(e.toString());
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("exception", e);
		modelAndView.setViewName("/commons/common_error");
		return modelAndView;
	}
}
