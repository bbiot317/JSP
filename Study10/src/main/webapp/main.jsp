<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>메</title>
	</head>
	<body>
		<%
			//session은 request와는 달리 저장되는 데이터가 String이 아니다
			String ok=(String) session.getAttribute("login");
		%>
		<h1>메인</h1>
		<h1>login 결과: <%=ok %></h1>
	</body>
</html>