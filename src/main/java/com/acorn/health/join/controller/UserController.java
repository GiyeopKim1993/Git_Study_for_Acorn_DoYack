package com.acorn.health.join.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.acorn.health.join.domain.UserDTO;
import com.acorn.health.join.service.UserService;

@Controller
public class UserController {

	@Autowired
	UserService userService;
	
	@Autowired 
	HttpSession session;
	
	//회원가입 메인 페이지
	@GetMapping("/join")
	public String join(){
		return "join/join";
	}
	
	//회원가입
	@PostMapping(value="/userRegister")
	public String register(@ModelAttribute UserDTO user) {
	String result = userService.registerUser(user);
	return "login/login";
	}
	
	// 이메일 중복 확인
    @ResponseBody
    @PostMapping(value="/emailcheck")
    public String emailCheck(@RequestParam String email) {
        boolean isDuplicate = userService.checkId(email);
        return isDuplicate ? "duplicate" : "ok";
    }
	
	
}
