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
			int num=-1;
			if(num>0){
		%>
		<h1><%=num %>은 양수.</h1>
		<%
			}else{
		%>
		<h2><%=num %>은 음수</h2>
		<%
			}
		%>
		

		
		<%
			for(int i=0; i<6; i++){
				%><h<%=i%>>문자크기 변동</h<%=i%>><%
			}
		%>
		
		<%
			%><script></script><%
		%>
	</body>
</html>
