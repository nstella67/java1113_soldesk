<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>04_메소드.jsp</title>
	</head>
	
	<body>
		<h1>JSP 메소드</h1>
		최대값 : <%=max(3,5) %>
		<hr>
		두수사이의 차이 : <%=diff(3,5) %>
		<%!
		//JSP 메소드 작성 영역
			public int max(int a, int b){
				return Math.max(a, b);
			}//max() end
			
			public int diff(int a, int b){
				int c=a-b;
				return (c<0) ? -c : c;
			}//diff() end
		%>
	</body>
</html>