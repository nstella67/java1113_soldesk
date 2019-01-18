<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="net.testbean.*" %>
<%-- 
	<jsp:useBean id="객체명"
						class="팩키지명.클래스명"
						scope="">
	</jsp:useBean>
	주의사항 : id가 제대로 생성안될수도 있으니
	해당 프로젝트를 Refresh, Validate, Project->Clean
	후에 테스트할 것
--%>
 <jsp:useBean id="comp" class="net.testbean.Compute" scope="page"></jsp:useBean>
<%-- 
	scope="page"				현재 페이지에서만 사용. 생략시 기본값
	scope="request"			다른 페이지에서 공유
	scope="session"			다른 페이지에서 공유
	scope="application"		다른 페이지에서 공유
--%>
 
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8">
		<title>testbean/computeok3.jsp</title>
	</head>
	
	<body>
		<h1>* 계산기 결과 *</h1>
		<h2>1) Java Bean을 이용해서 객체 생성후 메소드 호출</h2>
		<%
			int num1=Integer.parseInt(request.getParameter("num1"));
			int num2=Integer.parseInt(request.getParameter("num2"));

			out.print(num1+"+"+num2+"="+comp.add(num1, num2));
			out.print("<hr>");
			out.print(num1+"-"+num2+"="+comp.sub(num1, num2));
			out.print("<hr>");
			out.print(num1+"*"+num2+"="+comp.mul(num1, num2));
			out.print("<hr>");	
			out.print(num1+"/"+num2+"="+comp.div(num1, num2));
			out.print("<hr>");
			out.print(num1+"%"+num2+"="+comp.mod(num1, num2));
			out.print("<hr>");
		%>
		
	</body>
</html>