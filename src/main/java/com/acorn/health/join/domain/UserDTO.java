package com.acorn.health.join.domain;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class UserDTO {
	
	private String id;
	private String password;
	private String name;
	private String contact_number;
	private String gender;
	private int birth_year;
	private int point;

	//회원가입, 수정
	public UserDTO(String id, String password) {
		super();
		this.id = id;
		this.password = password;
	}
	
	public UserDTO(String id, String password, String name,String gender, int birth_year, String contact_number) {
	super();
	this.id =id;
	this.password =password;
	this.name = name;
	this.contact_number = contact_number;
	this.gender = gender;
	this.birth_year = birth_year;
	
	}
}
