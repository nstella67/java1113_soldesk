<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ include file="ssi.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sungjukbean/sungjukUpdate.jsp</title>
<link rel="stylesheet" type="text/css" href="../css/sstyle.css?after">
<script src="../js/myscript.js"></script>
</head>

<body>
	<h1> * 성적 수정 * </h1>
	<p><a href="sungjukList.jsp">[성적목록]</a>
	<a href="sungjukForm.jsp">[성적쓰기]</a>
	</p>
	
	<%		
	//사용자가 요청한 sno를 가져오기
	//sungjukUpdate.jsp?sno=2
	int sno=Integer.parseInt(request.getParameter("sno"));
	
	dto=dao.update(sno);
	if(dto==null){
		out.println("해당 글 없음!!");
	}else{
		%>

		<form method="post"
		      	 action="sungjukUpdateProc.jsp"
		      	 onsubmit="return sungjukCheck(this)">
		<input type="hidden" name="sno" value="<%=sno%>">
		<table border="1">
		<tr>
		  <th>이름</th>
		  <td><input type="text" name="uname" value="<%=dto.getUname() %>" maxlength="10" required autofocus></td>
		</tr>  
		<tr>
		  <th>국어</th>
		  <td><input type="number" name="kor" value="<%=dto.getKor() %>"  size="5" min="0" max="100" placeholder="숫자입력"></td>
		</tr>  
		<tr>
		  <th>영어</th>
		  <td><input type="number" name="eng" value="<%=dto.getEng() %>"  size="5" min="0" max="100" placeholder="숫자입력"></td>
		</tr>  
		<tr>
		  <th>수학</th>
		  <td><input type="number" name="mat" value="<%=dto.getMat() %>"  size="5" min="0" max="100" placeholder="숫자입력"></td>
		</tr>  
		<tr>
		  <th>주소</th>
		  <td>
			<%=dto.getAddr() %>
			<select name="addr">
				<option value="Seoul"<%if(dto.getAddr().equals("Seoul")){out.print("selected");} %>>서울</option>
				<option value="Jeju"<%if(dto.getAddr().equals("Jeju")){out.print("selected");} %>>제주</option>
				<option value="Suwon"<%if(dto.getAddr().equals("Suwon")){out.print("selected");} %>>수원</option>
				<option value="Busan"<%if(dto.getAddr().equals("Busan")){out.print("selected");} %>>부산</option>
			</select>
			</td>
		</tr>
		<tr>
			<th>등록일</th>
			<td><%=dto.getWdate() %></td>
		</tr>
		<tr>
		  <td colspan="2" align="center">
		     <input type="submit" value="수정">
		     <input type="reset"  value="취소">
		  </td>
		</tr>
		</table>
		</form>
		<%
	}//if end %>

</body>
</html>