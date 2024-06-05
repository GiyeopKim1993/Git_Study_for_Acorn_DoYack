package com.acorn.health.login.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.acorn.health.login.service.LoginService;



@Controller
public class LoginController {

	 @Autowired
	    LoginService loginService;
	    
	    @Autowired
	    HttpSession session;
	    
	    @RequestMapping("/loginform")
	    public String loginForm() {
	        return "login/login";
	    }
	    
	    @PostMapping("/login")
	    public void login(@RequestParam(required=false) String id, String password, HttpServletRequest request, HttpServletResponse response) throws IOException {
	        // 1: 성공, 0: 실패
	        boolean result = loginService.isValidUser(id, password);
	        if (result) {
	            session.setAttribute("id", id);
	            response.sendRedirect(request.getContextPath() + "/Landing"); // 로그인 성공 시 메인 페이지로 리다이렉트
	        } else {
	            session.setAttribute("error", "로그인에 실패하였습니다.");
	            response.sendRedirect(request.getContextPath() + "/loginform"); // 로그인 실패 시 로그인 폼 페이지로 리다이렉트
	        }
	    }
	
}
