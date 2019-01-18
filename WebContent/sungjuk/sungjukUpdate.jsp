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
<title>sungjuk/sungjukUpdate.jsp</title>
<link rel="stylesheet" type="text/css" href="../css/mystyle.css?after">
<script src="../js/myscript.js"></script>
</head>

<body>
	<h1> * 성적 수정 * </h1>
	<p><a href="sungjukList.jsp">[성적목록]</a>
	<a href="sungjukForm.jsp">[성적쓰기]</a>
	</p>
	
	<%		
	//사용자가 요청한 sno를 가져오기
	//sungjukUpdate.jsp?sno=2
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
		%>
			<form method="post"
			      	 action="sungjukUpdateProc.jsp"
			      	 onsubmit="return sungjukCheck(this)">
			<input type="hidden" name="sno" value="<%=sno%>">
			<table border="1">
			<tr>
			  <th>이름</th>
			  <td><input type="text" name="uname" value="<%=rs.getString("uname") %>" maxlength="10" required autofocus></td>
			</tr>  
			<tr>
			  <th>국어</th>
			  <td><input type="number" name="kor" value="<%=rs.getString("kor") %>"  size="5" min="0" max="100" placeholder="숫자입력"></td>
			</tr>  
			<tr>
			  <th>영어</th>
			  <td><input type="number" name="eng" value="<%=rs.getString("eng") %>"  size="5" min="0" max="100" placeholder="숫자입력"></td>
			</tr>  
			<tr>
			  <th>수학</th>
			  <td><input type="number" name="mat" value="<%=rs.getString("mat") %>"  size="5" min="0" max="100" placeholder="숫자입력"></td>
			</tr>  
			<tr>
			  <th>주소</th>
			  <td>
			  	  <% String addr=rs.getString("addr"); %>
			      <select name="addr">
			            <option value="Seoul"<%if(addr.equals("Seoul")){out.print("selected");} %>>서울</option>
			            <option value="Jeju"<%if(addr.equals("Jeju")){out.print("selected");} %>>제주</option>
			            <option value="Suwon"<%if(addr.equals("Suwon")){out.print("selected");} %>>수원</option>
			            <option value="Busan"<%if(addr.equals("Busan")){out.print("selected");} %>>부산</option>
			      </select>  
			  </td>
			</tr>  
			<tr>
			  <td colspan="2" align="center">
			     <input type="submit" value="수정">
			     <input type="reset"  value="취소">
			  </td>
			</tr>
			</table>
			</form>
			
		<%
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