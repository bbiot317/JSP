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
			//��Ű ��ü�� �ش� ������ �������� ����ȴ�
			//������ ��Ű ��ü�� �������� ���� ��ŵǴ� ��� jsp ������ �����Ѵ�.
			//Cookie(String key,String value);
			//key���� Ư��,��ȣ �� �� �� ����.
			Cookie cookie=new Cookie("data","cookiedata123");
			//��Ű ��ü���� ���ѽð��� ����
			cookie.setMaxAge(60*60);
			
			//���۵� ��Ű ��ü�� response�� ���� ����
			response.addCookie(cookie);
		%>
		<h1>��Ű ���� ������ �ε��� ������</h1>
		<a href="view1.jsp">��Ⱚ Ȯ���Ϸ� ����</a>
	</body>
</html>