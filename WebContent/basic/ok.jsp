<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>ok.jsp</title>
	</head>
	
	<body>
		<h1>다양한 폼 컨트롤 요소 결과</h1>
		<%
		//2바이트 언어(한글) 인코딩
		request.setCharacterEncoding("UTF-8");
		
		//사용자 입력 요청 정보 가져오기
		String uid			= request.getParameter("uid").trim();
		String upw			= request.getParameter("upw").trim();
		String uname		= request.getParameter("uname").trim();
		String message	= request.getParameter("message").trim();
		
		//<textarea>에서 입력한 엔터를 <br>로 치환
		message=message.replace("\n", "<br>");
		
		out.println(uid+"<br>");
		out.println(upw+"<br>");
		out.println(uname+"<br>");
		out.println(message+"<br>");
		
		//request객체에 없는 정보
		//null
		out.println(request.getParameter("kor") + "<br>");
		
		//name이 동일한 경우에 request객체에서 가져오기
		String[] num=request.getParameterValues("num");
		for(int idx=0; idx<num.length; idx++){
			out.println(num[idx]);
			out.println("<br>");
		}
		out.println("<hr>");
		
		//type=checkbox값이 넘어오면 on, 아니면 null
		out.println("약관동의 : "+request.getParameter("agree"));
		out.println("<br>");
		
		out.println("성별 : "+request.getParameter("gender"));
		out.println("<br>");
		
		out.println("통신회사 : "+request.getParameter("telecom"));
		out.println("<br>");

		out.println("페이지 : "+request.getParameter("page"));
		out.println("<br>");
		out.println("<hr>");
		
		/* 
			실제 전송된 파일을 가져오려면 다른 방식으로 request객체에 접근해야 함
			request.getParameter("attach")은 파일을 담고 있는 것이 아니라
			파일명을 담고 있을뿐이다 
		*/
		out.println("첨부파일명 : "+request.getParameter("attach"));
		
		%>
	</body>
</html>