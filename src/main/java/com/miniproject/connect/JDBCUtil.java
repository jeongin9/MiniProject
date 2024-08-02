package com.miniproject.connect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Scanner;

public class JDBCUtil {
	public static void main(String[] args) {
		// 1단계 : 데1이터 베이스 연결
		try {
			// 1단계 : 데이터 베이스 연결
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			// 2단계 : 연결을 관리하는 객체 생성
			String url = "jdbc:oracle:thin:@localhost:1521:orcl";
			String id = "miniproject";
			String pass = "1234";
			
			Connection conn = DriverManager.getConnection(url, id, pass);
			
			Scanner sc = new Scanner(System.in);
			System.out.println("번호:");
			int bunho = sc.nextInt();
			
			System.out.println("이름:");
			String name = sc.next();

			System.out.println("키:");
			float ki = sc.nextFloat();
			
			//정적쿼리
			
			/*String query = "insert into person values('"+ bunho +"','"+name+"'," +ki +"')";
			Statement stmt = conn.createStatement();
			stmt.executeUpdate(query);
			*/
			
			//동적쿼리
			String sql = "insert into person values(?,?,?)";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, bunho);
			pstmt.setString(2, name);
			pstmt.setFloat(3, ki);
			
			int check = pstmt.executeUpdate();
			if(check > 0) System.out.println("데이터 추가 성공");
			
			pstmt.close();
			conn.close();
			sc.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
}