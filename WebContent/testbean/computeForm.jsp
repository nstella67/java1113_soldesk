<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8">
		<title>testbean/compute.jsp</title>
	</head>
	
	<body>
		<h1>* 계산기 *</h1>
		
		<!-- 
		1) JSP 메소드 호출
		<form action="computeok1.jsp">
		
		2) new 연산자
		<form action="computeok2.jsp">
		
		3) Java Bean
		<form action="computeok3.jsp">
		-->
		<form action="computeok3.jsp">
		
			<table>
			<tr>
				<th>숫자1</th>
				<td><input type="text" name="num1" size="3"></td>
			</tr>
			<tr>
				<th>숫자2</th>
				<td><input type="text" name="num2" size="3"></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="계산">
				</td>
			</tr>
			</table>
		
		</form>
	</body>
</html>