<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%-- 공통페이지 지정 JSP directive --%>
<%@ include file="ssi.jsp" %>
<%-- 공통페이지 액션태그 Ctrl+Space --%>
<%-- 액션태그
	공통페이지		<jsp:include page="ssi.jsp"></jsp:include>
	페이지이동		<jsp:forward page="ssi.jsp"></jsp:forward>
	객체생성(빈)	<jsp:useBean id=""></jsp:useBean>
 --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sungjuk/sungjukUpdateProc.jsp</title>
<link rel="stylesheet" type="text/css" href="../css/mystyle.css?after">
<script src="../js/myscript.js"></script>
</head>

<body>
	<h1> * 성적 수정 * </h1>
	<p><a href="sungjukList.jsp">[성적목록]</a>
	<a href="sungjukForm.jsp">[성적쓰기]</a>
	</p>
	
	<%		
		//1) 사용자가 입력 정보를 가져오기
		//request.setCharacterEncoding("UTF-8");	//ssi.jsp
		int sno=Integer.parseInt(request.getParameter("sno"));
		String uname=request.getParameter("uname").trim();
		int kor=Integer.parseInt(request.getParameter("kor").trim());
		int eng=Integer.parseInt(request.getParameter("eng").trim());
		int mat=Integer.parseInt(request.getParameter("mat").trim());
		String addr=request.getParameter("addr").trim();
		int aver=(kor+eng+mat)/3;

		//2) update문 작성해서 실행
		//3) 수정한 이후 목록페이지 이동
	
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
			sql.append(" UPDATE sungjuk ");
			sql.append(" SET uname=?");
			sql.append(" , kor=?, eng=?, mat=? ");
			sql.append(" , aver=? ");
			sql.append(" , addr=? ");
			sql.append(" , wdate=sysdate ");
			sql.append(" WHERE sno=? ");
			
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1, uname);
			pstmt.setInt(2, kor);
			pstmt.setInt(3, eng);
			pstmt.setInt(4, mat);
			pstmt.setInt(5, aver);
			pstmt.setString(6, addr);
			pstmt.setInt(7, sno);
			
			int res=pstmt.executeUpdate();
			if(res==0){
				out.println("<p>성적 수정 실패</p>");
				out.println("<p><a href='javascript:history.back()'>[다시시도]</a></p>");
			}else{
				out.println("<script>");
				out.println("	alert('성적 수정 성공');");
				out.println("	location.href='sungjukList.jsp';");	//페이지 이동
				out.println("</script>");
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