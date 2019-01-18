<!-- 공통으로 들어가는 것 import 해서 씀 -->
<%@ page contentType="text/html; charset=UTF-8"%>

<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="net.sungjuk.*" %>

<jsp:useBean id="dto" class="net.sungjuk.SungjukDTO"></jsp:useBean>
<jsp:useBean id="dao" class="net.sungjuk.SungjukDAO"></jsp:useBean>

<%
	//ssi.jsp
	//공통으로 사용할 코드를 작성한다
	request.setCharacterEncoding("UTF-8");
%>