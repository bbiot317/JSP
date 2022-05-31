<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Insert title here</title>
		<!-- <style>
		.c0{
		
		}
		</style> -->
	</head>
	<body>
		
		<%
			String temp="색상 변경";
			String temp2="";
			String[] co=new String[]{"red","orange","yellow","green","blue","indigo","purple"};
			for(int i=0; i<7; i++){
				
				%><h1 style="color:<%=co[i]%>"><%=temp%></h1><%
			}
		%>yee
	</body>
</html>