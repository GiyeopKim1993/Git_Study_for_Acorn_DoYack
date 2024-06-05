package com.acorn.health.join.repository;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.acorn.health.join.domain.UserDTO;



@Repository
public class UserRepository {

	@Autowired
	DataSource ds;
	
	@Autowired
	private SqlSession session;
	
	private static String namespace = "com.acorn.MemberMapper.";
	
	//회원가입
	public void regUser(UserDTO user) {
		
		System.out.println("dao" +  user);
		session.insert(namespace + "regUser", user);
	
	}

	public boolean checkId(String id) {

		int count = session.selectOne(namespace + "checkId", id);
		return count >0;
	}
	
}
