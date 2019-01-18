<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>formok.jsp</title>
	</head>
	
	<body>
		<h1>성적결과</h1>
		<%
			//request 내부객체 : 사용자가 요청한 정보를 관리하는 객체
			
			//1) 한글 UTF-8 조합
			request.setCharacterEncoding("UTF-8");
			
			//2) 사용자가 입력한 요청 정보를 가져오기
			//		request.getParameter()
			String uname = request.getParameter("uname");	//name=uname
			String kor = request.getParameter("kor");
			String eng = request.getParameter("eng");
			String mat = request.getParameter("mat");
			
			out.println("이름 : "+uname+"<br>");
			out.println("국어 : "+kor+"<br>");
			out.println("영어 : "+eng+"<br>");
			out.println("수학 : "+mat+"<br>");
			
			//3) 평균 구하기
			int k=Integer.parseInt(kor);
			int e=Integer.parseInt(eng);
			int m=Integer.parseInt(mat);
			int aver=(k+e+m)/3;
			out.println("평균 : "+aver+"<br>");
		%>
	</body>
</html>