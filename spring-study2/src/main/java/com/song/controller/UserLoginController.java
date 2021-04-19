package com.song.controller;


import javax.servlet.http.HttpSession;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.song.domain.LoginDTO;
import com.song.domain.UserVO;
import com.song.service.UserService;

@Controller
@RequestMapping("/user")
public class UserLoginController {
	
	private final UserService userService;

	@Autowired
	public UserLoginController(UserService userService) {
		this.userService = userService;
	}

	// 로그인 페이지
	public String loginGET(@ModelAttribute("loginDTO") LoginDTO loginDTO) {
		return "/user/login";
	}
	// 로그인 처리
	@RequestMapping(value = "/loginPost", method = RequestMethod.POST)
	public void loginPOST(LoginDTO loginDTO, HttpSession httpSession, Model model) throws Exception {
		
		UserVO userVO = userService.login(loginDTO); //입력으로 부터 받은 회원정보 중에서 아이디를 통해 select한 회원 정보를 uservo에 담는다. 
		
		if (userVO == null || !BCrypt.checkpw(loginDTO.getUserPw(), userVO.getUserPw())) {
			return; // userVO가 null이거나 BCrypt.checkpw()를 통해 검증해서 맞지않으면 메서드 종료
		}
		
		model.addAttribute("user", userVO); // true일시 model에 userVO를 user변수로 저장했기때문에 Object userVO = modelMap.get("user"); 가능
	
	}
	

}