<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Insert title here</title>
	</head>
	<body>
		<!-- form태그 내부에는 submit이 있어야 전송 가능하며
		전송될 데이터가 적히는 input은 반드시 name값이 있어야 한다. -->
		<form method="get" action="welcome.jsp">
			<input type="text" name="fst" placeholder="첫 값"><br>
			<input type="text" name="sec" placeholder="두 값">
			<input type="submit" value="전송">
		</form>
		
		<!-- a태그의 링크주소 부분에 get방식 데이터를 적어 넣어서 전송이 가능 -->
		<a href="welcome.jsp?fst=data1&sec=data2">눌러서</a>
	
	</body>
</html>