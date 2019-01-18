<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%-- Ctrl+Shift+/ 주석
		<%@ page import="java.io.*" %>
 --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sungjuk/sungjukList.jsp</title>
<link rel="stylesheet" type="text/css" href="../css/mystyle.css?after">
<script src="../js/myscript.js"></script>
</head>

<body>
	<h1> * 성적 목록 * </h1>
	<p><a href="sungjukForm.jsp">[성적쓰기]</a></p>
	<table border="1">
	<tr>
		<th>이름</th>
		<th>국어</th>
		<th>영어</th>
		<th>수학</th>
		<th>평균</th>
		<th>주소</th>
		<th>등록일</th>
	</tr>
	
	<%		
		//Oracle DB 저장
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "java1113";
		String password = "1234";
		String driver = "oracle.jdbc.driver.OracleDriver";
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs=null;
		
		try{
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, password);
			
			StringBuilder sql = new StringBuilder();
			sql.append(" SELECT sno, uname, kor, eng, mat, aver, addr, wdate");
			sql.append(" FROM sungjuk");
			sql.append(" ORDER BY sno DESC");
			
			pstmt=con.prepareStatement(sql.toString());
			rs=pstmt.executeQuery();
			if(rs.next()){
				//out.println("있다");
				do{
		%>
					<tr>
						<td><a href="sungjukRead.jsp?sno=<%=rs.getInt("sno")%>"><%=rs.getString("uname") %></a></td>
						<td><%=rs.getInt("kor") %></td>
						<td><%=rs.getInt("eng") %></td>
						<td><%=rs.getInt("mat") %></td>
						<td><%=rs.getInt("aver") %></td>
						<td><%=rs.getString("addr") %></td>
						<td><%=rs.getString("wdate") %></td>
					</tr>
		<%
				}while(rs.next());
			}else{
				//out.println("없다");
				out.println("<tr>");
				out.println("	<td colspan='5'>글없음!!</td>");
				out.println("</tr>");
			}//if end
			
		}catch (Exception e) {
			out.println("실패!!"+ e);
		}finally {
			try {
				if(rs!=null) {rs.close();}
			}catch (Exception e) {}
			
			try {
				if(pstmt!=null) {pstmt.close();}
			}catch (Exception e) {}
			
			try {
				if(con!=null) {con.close();}
			}catch (Exception e) {}
		}//try end
	%>
	</table>
</body>
</html>