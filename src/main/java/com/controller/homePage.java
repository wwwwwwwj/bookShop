package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class homePage {

	@RequestMapping("personal")
	public String getPersonal() {
		return "personal";
	}
	
}
