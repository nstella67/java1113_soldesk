<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>07_calc.jsp</title>
	</head>
	
	<body>
		<h1>계산 연습</h1>
		<form name="calcfrm" method="get" action="calcok.jsp">
			첫번째 수 : <input	type="number"
										name="num1"
										min="0" 
										max="100" 
										required>
			<br>
			연산자 : <input type="text" name="op" size="3" required>
			<br>
			두번째 수 : <input	type="number"
										name="num2"
										min="0" 
										max="100" 
										required>
			<br>
			<input type="submit" value="계산">
		</form>
	</body>
</html>