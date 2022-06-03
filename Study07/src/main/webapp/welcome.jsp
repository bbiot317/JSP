<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>데이터 확인</title>
	</head>
	<body>
		<%
			String id=request.getParameter("id");
			String pw=request.getParameter("pw");
			String name=request.getParameter("name");
			String phone=request.getParameter("phone");
			String ra=request.getParameter("ra");
			String jsp=request.getParameter("jsp");
			String android=request.getParameter("android");
		%>
		<table>
			<tr><td>아이디</td><td><%=id %></td></tr>
			<tr><td>비번</td><td><%=pw %></td></tr>
			<tr><td>이름</td><td><%=name %></td></tr>
			<tr><td>연락처</td><td><%=phone %></td></tr>
			<tr><td>관심분야</td><td><%=ra %></td></tr>
			<tr><td>jsp수강여부</td><td><%=jsp %></td></tr>
			<tr><td>anfd수강여부</td><td><%=android %></td></tr>
			
		</table>
		
	</body>
</html>