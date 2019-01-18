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
<title>sungjuk/sungjukIns.jsp</title>
<link rel="stylesheet" type="text/css" href="../css/mystyle.css?after">
<script src="../js/myscript.js"></script>
</head>

<body>
	<h1> * 성적 결과 페이지 * </h1>
	<p><a href="sungjukFrom">[성적쓰기]</a></p>
	<%
		//한글인코딩
		request.setCharacterEncoding("UTF-8");
		//입력 정보 가져오기
		String uname=request.getParameter("uname").trim();
		int kor=Integer.parseInt(request.getParameter("kor").trim());
		int eng=Integer.parseInt(request.getParameter("eng").trim());
		int mat=Integer.parseInt(request.getParameter("mat").trim());
		String addr=request.getParameter("addr").trim();
		
		//평균 구하기
		int aver=(kor+eng+mat)/3;
		
		//출력
		out.println("이름 : "+uname);
		out.println("국어 : "+kor);
		out.println("영어 : "+eng);
		out.println("수학 : "+mat);
		out.println("평균 : "+aver);
		out.println("주소 : "+addr);
		
		//Oracle DB 저장
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "java1113";
		String password = "1234";
		String driver = "oracle.jdbc.driver.OracleDriver";
		
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try{
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, password);
			
			StringBuilder sql = new StringBuilder();
			sql.append(" INSERT INTO sungjuk(sno, uname, kor, eng, mat, aver, addr, wdate)");
			sql.append(" VALUES((SELECT NVL(MAX(sno), 0)+1 FROM sungjuk), ?, ?, ?, ?, ?, ?, sysdate)");
			
			pstmt = con.prepareStatement(sql.toString());

			pstmt.setString(1, uname);
			pstmt.setInt(2, kor);
			pstmt.setInt(3, eng);
			pstmt.setInt(4, mat);
			pstmt.setInt(5, aver);
			pstmt.setString(6, addr);
			
			int res=pstmt.executeUpdate();
			if(res==0){
				out.println("<p>성적 입력이 실패했습니다</p>");
				out.println("<p><a href='javascript:history.back()'>[다시시도]</a></p>");	/* history.back() 전 단계로 돌아가기 */
			}else{
				out.println("<script>");
				out.println("	alert('성적이 입력되었습니다');");
				out.println("	location.href='sungjukList.jsp';");	//페이지 이동
				out.println("</script>");
			}//if end
			
		}catch (Exception e) {
			out.println("실패!!"+ e);
		}finally {
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