package common;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DBConnPool {
    public Connection con;
    public Statement stmt;  
    public PreparedStatement psmt;  
    public ResultSet rs;
    
	public DBConnPool() {
		
		// 커넥션 풀 방식 
		
		try {
			Context initCtx = new InitialContext();
			Context ctx = (Context)initCtx.lookup("java:comp/env");
			DataSource source = (DataSource)ctx.lookup("dbcp_myoracle");
			
			con = source.getConnection();
			
            System.out.println("DB 커넥션 풀 연결 성공");
	
		}catch(Exception e) {
			
		}
	}
    
	public void close() {
			
		try {
			if(con != null) {
				con.close();
			}
		}catch(Exception e) {
			
		}
	}
}








