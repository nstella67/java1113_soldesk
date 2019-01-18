<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>requestok.jsp</title>
	</head>
	
	<body>
		<h1>* resuqest 내부객체의 다양한 메소드 *</h1>
  
		<%
			//1) 한글 인코딩(UTF-8, EUC-KR)
			request.setCharacterEncoding("UTF-8");
			
			//2) 사용자가 입력한 정보 가져오기
			out.print(request.getParameter("uid"));
			out.print("<hr>");
			
			//3) 요청한 사용자의 다양한 정보
			out.print(request.getRemoteAddr());	//사용자PC IP
			out.print("<hr>");
			out.print(request.getRemoteHost());
			out.print("<hr>");
			out.print(request.getRemotePort());
			out.print("<hr>");
			out.print(request.getRemoteUser());
			out.print("<hr>");
		//--------------------------------------------------------------------------------
			out.print(request.getContextPath());
			// 결과값 : /soldesk
			out.print("<hr>");
			
			out.print(request.getRequestURI());
			// 결과값 : /soldesk/basic/requestok.jsp
			out.print("<hr>");
			
			out.print(request.getRequestURL());
			// 결과값 : http://172.16.10.8:9090/soldesk/basic/requestok.jsp
			out.print("<hr>");
		//--------------------------------------------------------------------------------
			// 내컴퓨터 입장에서 /basic 폴더의 실제 물리적 경로 파악할 때
			out.print(request.getRealPath("/basic"));
			/* 결과값 : 
			D:\java1113\workspace
			   \.metadata
			   \.plugins
			   \org.eclipse.wst.server.core
			   \tmp0\wtpwebapps\soldesk\basic
			*/
			out.print("<hr>");
			
			out.print(application.getRealPath("/basic"));	//같음
			out.print("<hr>");
		//--------------------------------------------------------------------------------
			//네트워크를 통해서 요청한 정보를 가져오기
			//request.getParameter("")
			
			//개발자가 request객체에 정보를 올리고, 가져올때
			//request.setAttribute("변수명", 값)
			//request.getAttribute("변수명")
			request.setAttribute("user", "korea");
			out.print(request.getAttribute("user"));
		%>
	
	</body>
</html>