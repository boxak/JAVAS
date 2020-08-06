package com.my.javas;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AuthController {
	@RequestMapping("/authloginfail")
	public String authloginfail() {
		return "authloginfail";
	}
	
	@RequestMapping("/authfail")
	public String authfail() {
		return "authfail";
	}
}
