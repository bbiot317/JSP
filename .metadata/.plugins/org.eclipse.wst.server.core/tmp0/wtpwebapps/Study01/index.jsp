<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>ㅔㅈ목 여기</title>
	</head>
	<body>
		<h1>world, world</h1>
		<% out.println("<h1>자바로</h1>");%>
		<%
			//자바 코드는 jsp파일 내부의 스크립트릿으로 구분된 영역에 작성해야함
			//작성된 스트리트릿 내부의 변수등 값을 참조하는 경우 아래와 같이 사용할 수 있다
			int a=10;
			int b=20;
			int s=a+b;
			//out.println("<h1>변수 a와b의 합 <i>"+s+"</i>  </h1>");
		%>
		<h1>변수 a와b의 합 <i><%=s %></i>  </h1>
		
		<!-- HTML의 주석 -->
		<%-- 스크립트릿의 주석 --%>
		<%//자바의 주석 %>
	</body>
</html>


