package com.acorn.health.mypage.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MyPageController {

	 @GetMapping("/mypage")
	    public String myPage(HttpSession session, Model model) {
	        String userId = (String) session.getAttribute("id");
	        
	        // 사용자 정보를 모델에 담아서 JSP에 전달
	        model.addAttribute("userId", userId);
	        
	        return "mypage/mypage"; // 마이페이지 JSP로 이동
	    }
}
