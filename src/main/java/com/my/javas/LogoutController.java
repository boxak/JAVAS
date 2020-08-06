package com.my.javas;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import vo.UserVO;

@Controller
public class LogoutController {
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		UserVO vo = (UserVO)session.getAttribute("loginVO");
		if(vo!=null) {
			session.removeAttribute("loginVO");
		}
		return "logoutsuccess";
	}
	
	@RequestMapping("/logout/fail")
	public String logoutfail() {
		return "logoutfail";
	}
	
	@RequestMapping("/logout/success")
	public String logoutsuccess() {
		return "logoutsuccess";
	}
}
