<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="net.testbean.*" %>
 <jsp:useBean id="calc" class="net.testbean.Calcbean" scope="page"></jsp:useBean>
 
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8">
		<title>testbean/calcok.jsp</title>
	</head>
	
	<body>
		<h1>* 계산 결과 *</h1>
		<h2>1) 절대값</h2>
		<%
			int num=Integer.parseInt(request.getParameter("num"));
		
			out.println("절대값 : "+calc.abs(num));
			out.println("<hr>");
			
			out.println("팩토리얼 : "+calc.fact(num));
			out.println("<hr>");
		%>
		
	</body>
</html>