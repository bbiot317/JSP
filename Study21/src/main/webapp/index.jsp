<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Java Bean</title>
	</head>
	<body>
		
		<jsp:useBean class="bean.Student" id="s" scope="page"> 
		</jsp:useBean>
		<% s.setName("홍"); %>
		<h1><%=s.getName() %></h1>
		<jsp:setProperty name="s" property="age" value="99"></jsp:setProperty>
		<h1>
			<jsp:getProperty  name="s" property="age"></jsp:getProperty>
		</h1>
	</body>
</html>