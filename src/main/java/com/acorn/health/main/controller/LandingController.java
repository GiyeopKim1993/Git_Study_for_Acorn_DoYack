package com.acorn.health.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
@Controller
public class LandingController {

	@GetMapping("/Landing")
	public String main() {
		return "landing/Landing";
	}

}
