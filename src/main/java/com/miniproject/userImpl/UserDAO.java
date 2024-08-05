package com.miniproject.userImpl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.miniproject.user.UserVO;

public class UserDAO {
	
	private Connection conn = null;
	private PreparedStatement stmt = null;
	private ResultSet rs = null;
	
	private final String USER_GET = "select * from users where id=? and password=?";
	

    public void insertUser(UserVO user) {
        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
        	
            pstmt = conn.prepareStatement(USER_GET);
            pstmt.setString(1, user.getId());
            pstmt.setString(2, user.getPass());
            pstmt.setString(3, user.getName());
            pstmt.setString(4, user.getNickname());
            pstmt.setString(5, user.getPhone());

            int result = pstmt.executeUpdate();
            if(result > 0) {
                System.out.println("User inserted successfully");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if(pstmt != null) pstmt.close();
                if(conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}