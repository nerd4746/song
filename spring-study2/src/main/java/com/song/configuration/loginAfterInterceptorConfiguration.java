package com.song.configuration;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.song.interceptor.LoginAfterInterceptor;

@Configuration
public class loginAfterInterceptorConfiguration implements WebMvcConfigurer{
	
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(new LoginAfterInterceptor())
		.addPathPatterns("/user/login")
		.addPathPatterns("/user/register");		
	}

}
