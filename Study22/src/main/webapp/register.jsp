<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>내용 확인 페이지</title>
	</head>
	<body>
		<%
			request.setCharacterEncoding("utf-8");
			String name=request.getParameter("name");
			String userID=request.getParameter("id");
			String pass=request.getParameter("pass");
			String email=request.getParameter("email");
			String phone=request.getParameter("first")+request.getParameter("second")
					+request.getParameter("third");
			
		
		%>
		<h1>전송받은데이터</h1>
		<p>이름:<%=name %></p>
		<p>아이디:<%=userID %></p>
		<p>비밀번호:<%=pass %></p>
		<p>이메일:<%=email %></p>
		<p>번호:<%=phone %></p>
		
	</body>
</html>