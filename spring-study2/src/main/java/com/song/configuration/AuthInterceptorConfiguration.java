
package com.song.configuration;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.song.interceptor.AuthInterceptor;

@Configuration
public class AuthInterceptorConfiguration implements WebMvcConfigurer {

	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(new AuthInterceptor())
		
		// 해당 경로에 접근하기전에 인터셉터가 가로챈다.
		.addPathPatterns("/article/write")
		.addPathPatterns("/article/modify")
		.addPathPatterns("/article/remove")
		.addPathPatterns("/article/read")
		.excludePathPatterns("/user/loginPost"); //해당 경로는 인터셉터가 가로채지 않는다.
	}
		
	}

