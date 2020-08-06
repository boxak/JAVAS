package com.my.javas;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	@RequestMapping({"/","main"})
	public String first() {
		return "main";
	}
	
	@RequestMapping("/about")
	public String two() {
		return "about";
	}
	
	@RequestMapping("/developers")
	public String three() {
		return "team";
	}
	
	@RequestMapping("/afterlogin")
	public String afterlogin() {
		return "redirect:main";
	}
}
