<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>액션태그 사용</title>
		<link rel="stylesheet" href="style.css">
	</head>
	<body>
		<div id="wrap">
			<form method="post" action="register.jsp">
				이름<input style="margin-left:32px;" type="text" name="name"><br>
				아이디<input style="margin-left:16px;" type="text" name="id"><br>
				비밀번호<input type="password" name="pass"><br>
				이메일<input style="margin-left:16px;" type="text" name="email"><br>
				연락처<input style="margin-left:8px;" type="text" name="first" class="phone">
				- <input type="text" name="second" class="phone">
				- <input type="text" name="third" class="phone"><br>
				<input type="submit" value="입력하기">
			</form>
		</div>
		<%
			
		%>
	</body>
</html>