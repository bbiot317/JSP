<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%
			//request.getParameter("해당input의 name")
			String first=request.getParameter("fst");
			String second=request.getParameter("sec");
		%>
		<h1>첫번째 입력: <%=first %></h1>
		<h2>두번째 : <%=second %></h2>
	</body>
</html>