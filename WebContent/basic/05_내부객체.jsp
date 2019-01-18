<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>05_내부객체.jsp</title>
	</head>
	
	<body>
		<h1>JSP 내부객체</h1>
		<%
			/*
			   내부에서 test.jsp → test.java → test.class 자동으로 변환됨
			   D:\java1113\workspace\.metadata\.plugins\org.eclipse.wst.server.core
			   	  \tmp0\work\Catalina\localhost\soldesk\org\apache\jsp
			//-----------------------------------------------------------------------------------
			   JSP 내부 객체
			   톰캣서버에 의해 자동으로 생성된 객체이므로 별도의 객체를 선언하지 않고
			   개발자는 가져다 사용만 한다
			   
			   1) out					: 브라우저 본문(<body>)를 가리키는 출력 객체
										  JspWriter out
			   2) request			: 사용자가 요청한 정보를 관리하는 객체
										  HttpServletRequest request
				//-------------------------------------------------------------------------------						  
										  Interface HttpServletRequest
										  extends ServletRequest {}

										  class HttpServletRequestWrapper
										  implements HttpServletRequest {}

										  HttpServletRequest request
										  	= new HttpServletRequestWrapper() 다형성
				//-------------------------------------------------------------------------------
			   3) response			: 요청한 사용자에게 응답을 하기 위한 객체
										  HttpServletResponse response
			   4) session			: 요청한 사용자를 개별적으로 구분하기 위한 객체 
										  HttpSession session
			   5) application		: 사용자 모두가 공유할 수 있는 정보를 관리하는 객체
										  ServletContext application
			   6) pageContext	: jsp, jstl, el등 동일한 페이지내에서
               							서로 다른 문법과의 데이터를 교류할 수 있다
               							PageContext pageContext
			*/
			
			
		%>
	</body>
</html>