<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8">
		<title>testbean/calcForm.jsp</title>
	</head>
	
	<body>
		<h1>* 계산 *</h1>
		<form action="calcok.jsp">
			<table>
			<tr>
				<th>숫자</th>
				<td><input type="text" name="num" size="3"></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="계산">
				</td>
			</tr>
			</table>
			<hr>
		</form>
	</body>
</html>