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
	
	</body>
</html>