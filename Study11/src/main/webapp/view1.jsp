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
			//쿠키는 여러개가 저장되어 있을 수 있으므로 Cookie타입의 배열을 통해서 받아온다.
			Cookie[] cookies=request.getCookies();
		
			//쿠키가 총 몇개가 들어 있는지 배열의 길이를 통해 확인 가능
			int size=cookies.length;
		%>
		<h1></h1>
		<h2>쿠키 값의 길이: <%=size %></h2>
		<%
			for(int i=0; i<cookies.length;i++){
				%><b>쿠키 값의 이름 확인: <%=cookies[i].getName()%></b>
				<p>쿠키 값의 내용 확인: <%=cookies[i].getValue()%></p><%	
			}
		%>
		<a href="view2.jsp">공유된 쿠키값 확인하러가기</a>
	</body>
</html>