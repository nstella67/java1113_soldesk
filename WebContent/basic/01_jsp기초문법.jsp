<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>01_jsp기초문법.jsp</title>
	</head>
	
	<body>
		<!-- 
			.jsp → HTML tag
					 CSS			<style></style>
					 JavaScript	<script></script>
					 JSP			<%  %> Scriptlet
		 -->
		<h1>JSP 기본문법</h1>
		<hr>
		대한민국
		<hr>
		<%
			/* 결과확인
				http://localhost:9090/soldesk		→ 웹 root, 홈디렉토리
							( 실제경로 /WebContent )
			*/
			
			// JSP 코드 작성 영역 (Scriptlet)
			/* 여러 줄 주석 */
			// 본문영역에 출력 out.print()
			// 종결문자 ;
			out.print("무궁화");
			out.print(123);
			out.print(5.6);
			out.print('R');
			// 브라우저 페이지소스 보기 → 결과물만 보임. JSP code는 안나옴
			
			// HTML 태그를 사용하는 경우 ""안에서 작성한다
			// <hr>	에러
			out.println("<hr>");
			out.println("서울<br>");
			out.println("<img src='../images/tenor (6).gif'>");
		%>
		<hr>
		<img src="../images/tenor (7).gif">
			
<%-- 스크립트릿 영역 주석 : 블럭잡고 Ctrl+Shift+/
 		<%	// Scriptlet 여러 개 올 수 있다
			out.println("<style> .txt{color:red;} </style>");
			out.println("<h1 class=txt>오필승 코리아</h1>");
		%>
--%>
	
		
	</body>
</html>