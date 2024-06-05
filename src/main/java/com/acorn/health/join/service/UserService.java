package com.acorn.health.join.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.acorn.health.join.domain.UserDTO;
import com.acorn.health.join.repository.UserRepository;

@Service
public class UserService {
	
	@Autowired
	UserRepository repository;

	public String registerUser(UserDTO user) {
		 try {
	            if(checkId(user.getId())) {
	            	
	            	System.out.println(" 사용중 ");
	                return "사용중인 아이디입니다. 다시 입력하세요.";
	            } else {
	            	
	            	
	            	System.out.println(" ok ");
	            	repository.regUser(user);
	                return "회원가입이 완료되었습니다.";
	            }
	        } catch(Exception e) {
	            e.printStackTrace();
	            return "회원가입에 실패했습니다.";
	        }
	}

	//
	public boolean checkId(String id) {
		  
		return repository.checkId(id);
	}

}
