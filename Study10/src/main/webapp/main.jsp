<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>��</title>
	</head>
	<body>
		<%
			//session�� request�ʹ� �޸� ����Ǵ� �����Ͱ� String�� �ƴϴ�
			String ok=(String) session.getAttribute("login");
		%>
		<h1>����</h1>
		<h1>login ���: <%=ok %></h1>
	</body>
</html>