<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="ssi.jsp" %>

<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8">
		<title>sungjukbean/sungjukList.jsp</title>
		<link rel="stylesheet" type="text/css" href="../css/sstyle.css?after">
		<script src="../js/myscript.js"></script>
	</head>
	
	<body>
		<h1> * 성적 목록 * </h1>
		<p><a href="sungjukForm.jsp">[성적쓰기]</a></p>
		<table>
		<tr>
			<th>이름</th>
			<th>국어</th>
			<th>영어</th>
			<th>수학</th>
			<th>등록일</th>
		</tr>
		
		<%		
			//전체목록
			ArrayList<SungjukDTO> list=dao.list();
			if(list==null){
				out.println("<tr>");
				out.println("	<td colspan='5'>글없음!!</td>");
				out.println("</tr>");
			}else{
				for(int idx=0; idx<list.size(); idx++){
					dto=list.get(idx);
		%>
			<tr>
						<td><a href="sungjukRead.jsp?sno=<%=dto.getSno()%>"><%=dto.getUname()%></a></td>
						<td><%=dto.getKor() %></td>
						<td><%=dto.getEng() %></td>
						<td><%=dto.getMat() %></td>
						<td><%=dto.getWdate().substring(0, 10) %></td>
					</tr>
		<%
			}//for end
		}//if end
			
		%>
		</table>
	
	</body>
</html>