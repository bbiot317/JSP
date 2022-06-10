<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>로그인 처리기</title>
	</head>
	<body>
		<%
			Connection conn=null;
			Statement stmt=null;
			ResultSet st=null;
			String url="jdbc:mysql:127.0.0.1:3306/study";
			String db_id="root";
			String db_pw="iotiot";
			
			request.setCharacterEncoding("utf-8");
			String id=request.getParameter("id");
			String pw=request.getParameter("pw");
			
			
		%>
		<h1><%=id %></h1>
		<h1><%=pw %></h1>
	</body>
</html>