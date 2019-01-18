package net.utility;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DBClose {	//데이터베이스 연결 자원 반납
	public void close(Connection con) {
		try {
			if(con!=null) {con.close();}
		}catch (Exception e) {}
	}//end
	
	public void close(Connection con, PreparedStatement pstmt) {
		try {
			if(con!=null) {con.close();}
		}catch (Exception e) {}
		
		try {
			if(pstmt!=null) {pstmt.close();}
		}catch (Exception e) {}
	}//end
	
	public void close(Connection con, PreparedStatement pstmt, ResultSet res) {
		try {
			if(con!=null) {con.close();}
		}catch (Exception e) {}
		
		try {
			if(pstmt!=null) {pstmt.close();}
		}catch (Exception e) {}
		
		try {
			if(res!=null) {res.close();}
		}catch (Exception e) {}
	}//end
}//class end
