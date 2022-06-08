<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>전ㅇ송</title>
	</head>
	<body>
		<%	//request정보 해석시 한글인코딩 설정
			request.setCharacterEncoding("utf-8");
			String ptag=request.getParameter("ptag");
		%>
		<h1>전송받음: <%=ptag %></h1>
	</body>
</html>

