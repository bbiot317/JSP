<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
    
<%--
	out.print("<!DOCTYPE html>");
--%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Insert title here</title>
	</head>
	<body>
	<%
		request.setCharacterEncoding("utf-8");
		//테스트용 데이터 넣음
		String user="admin";
		String pw="11";
	
		String id=request.getParameter("id"); //입력한 아이디
		String pass=request.getParameter("pass"); // 비번
		
	%>
	<%
		if(user.equals(id) && pw.equals(pass)){
			//외부로 보여줄 화면 데이터를 송출하기 때문에 response를 통한다.
			session.setAttribute("login","로그인 성공");
			response.sendRedirect("main.jsp");
			%><h1>성공</h1><%
		}else{
			%><h1>실패</h1>
			<a href="index.jsp">돌아가기</a><%
		}
	
	%>
	<h1><%=id %><%=pass %></h1>
	</body>
</html>