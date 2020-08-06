package com.my.javas;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import dao.UserDAOImpl;
import vo.UserVO;

@Controller
public class LoginController {
	@Autowired
	UserDAOImpl dao;
	
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public ModelAndView login(@RequestParam("id") String id,
						@RequestParam("password") String password,
						String saveId,
						HttpSession session,
						HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();
		UserVO vo = new UserVO();
		boolean hasId = dao.hasId(id);
		if(!hasId) {
			mav.addObject("msg", "존재하지 않는 아이디입니다!");
			mav.setViewName("LoginError");
		}
		else {
			vo = dao.loginCheck(id, password);
			if(vo==null) {
				mav.addObject("msg", "비밀번호가 일치하지 않습니다!");
				mav.setViewName("LoginError");
			}
			else {
				session.setAttribute("loginVO", vo);
				if(saveId!=null) {
					Cookie c = new Cookie("saveId",id);
					c.setMaxAge(60*60*24*7);
					response.addCookie(c);
				}
				mav.setViewName("redirect:afterlogin");
			}
		}
		return mav;
	}
	
	@RequestMapping("/login/fail")
	public String loginfail() {
		return "loginfail";
	}
	
	@RequestMapping("/login/success")
	public String loginsuccess() {
		return "loginsuccess";
	}
	
	@RequestMapping("/login/form")
	public String loginform() {
		return "loginform";
	}
}
