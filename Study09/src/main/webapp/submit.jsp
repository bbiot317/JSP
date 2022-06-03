<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>전송확인</title>
	</head>
	<body>
		<%
			request.setCharacterEncoding("utf-8");
			String button=request.getParameter("button");
			String submit=request.getParameter("submit");
			//String checkbox=request.getParameter("checkbox");
			//같은 name을 가진 input의 값들은 최초로 전송된 하나의 값만을 getParameter로 가져올 수 있다.
			String[] checkbox=request.getParameterValues("checkbox");
			//request.getParameterValues(String); : 같은 이름을 가진 input들로부터 전송된 데이터를 배열로 추출
		
			
			//특이 input들의 값 확인
			String color=request.getParameter("color"); //#FFFFFF형태로 전송
			String date=request.getParameter("date"); //input type="date" YYYY-MM-DD로 전송
			String datetime=request.getParameter("datetime"); // YYYY-MM-DDThh:mm 형태로 전송됨
			String range=request.getParameter("range");
		
		%>
		
		
		<h1>button으로부터 전송받음 : <%=button %></h1>
		<h1>submit으로부터 전송받음 : <%=submit %></h1>
		<%
		for(String i: checkbox){
			%><h1>checkbox 전송받음: <%=i %></h1><%	
		}
		%>
		<h1 style="color:<%=color %>">color 전송값 : <%=color %></h1>
		<h1>date로부터 전송받음: <%=date %></h1>
		<h3>datetime으로부터 전송: <%=datetime %></h3>
		<h3>range로부터 전송: <%=range %></h3>
	</body>
</html>