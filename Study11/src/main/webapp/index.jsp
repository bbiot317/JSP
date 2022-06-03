<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%
			//쿠키 객체는 해당 정보가 브라우저에 저장된다
			//생성된 쿠키 객체는 브라우저를 통해 통신되는 모든 jsp 파일이 공유한다.
			//Cookie(String key,String value);
			//key에는 특문,기호 가 들어갈 수 없다.
			Cookie cookie=new Cookie("data","cookiedata123");
			//쿠키 객체에는 제한시간이 존재
			cookie.setMaxAge(60*60);
			
			//제작된 쿠키 객체는 response를 통해 전달
			response.addCookie(cookie);
		%>
		<h1>쿠키 값을 저장한 인덱스 페이지</h1>
		<a href="view1.jsp">쿠기값 확인하러 가기</a>
	</body>
</html>