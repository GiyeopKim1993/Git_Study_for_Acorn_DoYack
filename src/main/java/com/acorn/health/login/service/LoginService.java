package com.acorn.health.login.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.acorn.health.join.domain.UserDTO;
import com.acorn.health.login.repository.LoginRepository;

@Service
public class LoginService {

	@Autowired
	LoginRepository repository;
	
	public boolean isValidUser(String id, String password) {
		// TODO Auto-generated method stub
		boolean result = repository.isValid(id, password);
		return result;
	}

	public UserDTO getUser(String id) {
		// TODO Auto-generated method stub
		UserDTO user = repository.user(id);
		return user;
	}
}
