package com.acorn.health.login.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.acorn.health.join.domain.UserDTO;


@Repository
public class LoginRepository {

	  @Autowired
	    DataSource ds;
	    
	    public boolean isValid(String userId, String password) {        
	        Connection con =  null;
	        PreparedStatement pst = null;
	        ResultSet rs = null;
	        boolean result = false;
	        String sql = "SELECT id, password FROM user_table WHERE id = ? ";
	        
	        try {
	            con = ds.getConnection();
	            pst = con.prepareStatement(sql);
	            pst.setString(1, userId);
	            rs = pst.executeQuery();
	            if(rs.next()) {
	                String tmp_pw = rs.getString("password");
	                if(tmp_pw.trim().equals(password)) {
	                    result = true;
	                }
	            }
	            rs.close();
	            pst.close();
	            con.close();
	        } catch (SQLException e) {
	                e.printStackTrace();
	        } 
	        
	        return result;
	    }

	    public UserDTO user(String userId) {
	        Connection con =  null;
	        PreparedStatement pst = null;
	        ResultSet rs = null;
	        
	        String sql = "SELECT * FROM user_table WHERE id = ? ";
	        UserDTO user = new UserDTO();
	        
	        try {
	            con = ds.getConnection();
	            pst = con.prepareStatement(sql);
	            pst.setString(1, userId); // 여기에서는 setString의 인덱스가 1부터 시작합니다.
	            rs = pst.executeQuery();
	            
	            if(rs.next()) {
	                String id = rs.getString("id"); // 결과 집합에서 id를 가져와서 userId로 저장
	                String password = rs.getString("password");
	                String name = rs.getString("name");
	                int birth_year = rs.getInt("birth_year");
	                String gender = rs.getString("gender"); 
	                String contact_number = rs.getString("contact_number");
	                
	                user = new UserDTO(id, password, name, contact_number, birth_year, gender);
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	        close(rs, pst, con);
	        return user;
	    }
	    
	    // close 메서드 추가
	    private void close(ResultSet rs, PreparedStatement pst, Connection con) {
	        if(rs != null) {
	            try {
	                rs.close();
	            } catch (SQLException e) {
	                e.printStackTrace();
	            }
	        }
	        if(pst != null) {
	            try {
	                pst.close();
	            } catch (SQLException e) {
	                e.printStackTrace();
	            }
	        }
	        if(con != null) {
	            try {
	                con.close();
	            } catch (SQLException e) {
	                e.printStackTrace();
	            }
	        }
	    }
}
