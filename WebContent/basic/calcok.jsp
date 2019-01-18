<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>07_calc.jsp</title>
	</head>
	
	<body>
		<h1>계산 결과</h1>
		<%
		//사용자가 입력 요청한 정보 가져오기
		//"3" → 3
		request.setCharacterEncoding("UTF-8");
		/*
		String num1 = request.getParameter("num1");
		String op = request.getParameter("op");
		String num2 = request.getParameter("num2");
		
		out.println("첫번째 수 : "+num1+"<br>");
		out.println("연산자 : "+op+"<br>");
		out.println("두번째 수 : "+num2+"<br>");
		
		String result=num1+op+num2;
		int result2=Integer.parseInt(result);
		
		out.println("계산결과 : "+result2+"<br>");
		*/
		//선생님
		//"3" → 3
		int num1=Integer.parseInt(request.getParameter("num1").trim());
		int num2=Integer.parseInt(request.getParameter("num2").trim());
		String op=request.getParameter("op").trim();
		
		int result1=0;
		double result2=0.0;
		
		if(op.equals("+")){
			result1 = num1+num2;
		}else if(op.equals("-")){
			result1=num1-num2;
		}else if(op.equals("*")){
			result1=num1*num2;
		}
		else if(op.equals("/")){
			result2=(double)num1/num2;
		}
		else if(op.equals("%")){
			result1=num1%num2;
		}//if end
		%>
		
		<!-- 출력 -->
		<table border="1">
		<tr>
			<td><%=num1 %></td>
			<td><%=op %></td>
			<td><%=num2 %></td>
			<td>=</td>
			<td>
			<%
				if(op.equals("/")){
					out.println(result2);
				}else {
					out.println(result1);
				}
			%>
		</tr>
		</table>
		
	</body>
</html>