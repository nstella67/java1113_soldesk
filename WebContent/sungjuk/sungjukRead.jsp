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
<title>sungjuk/sungjukRead.jsp</title>
<link rel="stylesheet" type="text/css" href="../css/mystyle.css?after">
<script src="../js/myscript.js"></script>
</head>

<body>
	<h1> * 성적 상세보기 * </h1>
	<p><a href="sungjukList.jsp">[성적목록]</a>
	<a href="sungjukForm.jsp">[성적쓰기]</a>
	</p>	
	
	<%		
	
	int sno=Integer.parseInt(request.getParameter("sno"));
	
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
			sql.append(" WHERE sno=?");
			
			pstmt=con.prepareStatement(sql.toString());
			pstmt.setInt(1, sno);
			rs=pstmt.executeQuery();
			if(rs.next()){
				//out.println("있다");
				do{
		%>
		
					<table border="1">
					<tr>
						<th>이름</th>
						<td><%=rs.getString("uname") %></td>
					</tr>
					<tr>
						<th>국어</th>
						<td><%=rs.getInt("kor") %></td>
					</tr>
					<tr>
						<th>영어</th>
						<td><%=rs.getInt("eng") %></td>
					</tr>
					<tr>
						<th>수학</th>
						<td><%=rs.getInt("mat") %></td>
					</tr>
					<tr>
						<th>평균</th>
						<td><%=rs.getInt("aver") %></td>
					</tr>
					<tr>
						<th>주소</th>
						<td>
							<%=rs.getString("addr") %>
						<%
						// 문) 주소를 한글로 바꿔서 출력
						String eaddr="";

						switch (rs.getString("addr")){
						case "Seoul" : eaddr="서울"; break;
						case "Busan" : eaddr="부산"; break;
						case "Suwon" : eaddr="수원"; break;
						case "Jeju" : eaddr="제주"; break;
						}
						out.println(" "+eaddr);
						
						/*t
						String addr=rs.getString("addr");
						if(addr.equals("Seoul")){
							out.println("서울");
						}else if(addr.equals("Jeju")){
							out.println("제주");
						}else if(addr.equals("Suwon")){
							out.println("수원");
						}else if(addr.equals("Busan")){
							out.println("부산");
						}//if end
						*/
						
						%>
						</td>
					</tr>
					<tr>
						<th>등록일</th>
						<td><%=rs.getString("wdate").substring(0,10) %></td>
					</tr>
					</table>
					<br><br>
					<a href="sungjukUpdate.jsp?sno=<%=sno%>">[수정]</a> &nbsp;&nbsp;
					<a href="sungjukDel.jsp?sno=<%=sno%>">[삭제]</a>
		<%
				}while(rs.next());
			}else{
				out.println("자료없음");
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
</body>
</html>