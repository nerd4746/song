package com.song.service;

import com.song.domain.LoginDTO;
import com.song.domain.UserVO;

public interface UserService {
		//회원 가입 처리
		void register(UserVO userVO) throws Exception;
		//로그인 처리
		UserVO login(LoginDTO loginDTO) throws Exception;
}