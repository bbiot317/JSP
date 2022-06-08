<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>세션 데이터 가공 페이지</title>
	</head>
	<body>
		<%
			//form을 통해 전달된 데이터는 request를 통해 전달됨
			//한글데이터를 사용하는 경우 utf-8
			request.setCharacterEncoding("utf-8");
			String data="좋아하는 계절 :"+ request.getParameter("data");
			
			session.setAttribute("key",data);
		%>
		<h1><%=data %></h1>
		<a href="view2.jsp">세션데이터 공유 확인</a>
	</body>	
</html>