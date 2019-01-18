<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>06_form기초.jsp</title>
	</head>
	
	<body>
		<!-- 
			<form>	: 사용자가 입력한 정보를 서버로 전송하기 위한 양식
			name		: 폼의 이름.		Javascript, jQuery에서 접근시 사용
			id			: 폼의 아이디.	Javascript, jQuery에서 접근시 사용
			method	: 폼의 전송방식. get | post 방식. 생략시 get방식
			action	: 사용자가 요청한 정보를 서버가 받아서 처리할 결과 페이지
			enctype	: 해당폼에서 파일을 첨부해서 서버로 전송하고자 할 때
						 "multipart/form-data" 추가
		//-------------------------------------------------------------------------
			method=get	방식 : 사용자가 요청한 정보가 URL 노출
										예) 검색어
										
			method=post	방식 : 사용자가 요청한 정보가 URL에 노출되지 않고
										패키지화 되어서 서버로 전송	
										예) 비번, 주민번호, 계좌번호 등등
										
			- 사용자가 입력한 정보를 서버로 전송하는 방식
			  파일명(명령어)?변수1=값1&변수2=값2&변수3=값3 ~~
			  예) formok.jsp?uname=soldesk&kor=10&eng=20&mat=30
		 -->
		 <h1>성적입력</h1>
		 <form	name="sungjukfrm"
		 			id="sungjukfrm"
		 			method="post"
		 			action="formok.jsp">
		 	이름 : <input type="text" name="uname" size="10" required> <hr>
		 	국어 : <input type="number" name="kor" required> <hr>
		 	영어 : <input type="number" name="eng" required> <hr>
		 	수학 : <input type="number" name="mat" required> <hr>
		 	<hr>
		 	<input type="submit" value="전송">
		 	<input type="reset" value="취소">
		 </form>
	</body>
</html>