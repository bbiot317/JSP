<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%
			Connection conn=null;
			Statement stmt=null;
			ResultSet rs=null;
			String url="jdbc:mysql://127.0.0.1:3306/study";
			String db_id="root";
			String db_pw="iotiot";
			
			request.setCharacterEncoding("utf-8");
			String number=request.getParameter("del");
			try{
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn=DriverManager.getConnection(url, db_id, db_pw);
				stmt=conn.createStatement();
				
				String sql="delete from register where num="+number+";";
				
				int result= stmt.executeUpdate(sql);
				response.sendRedirect("erase.jsp");
				out.print("<h1>"+sql+"</h1>");
			}catch(Exception e){
				out.print("오류발생 "+e);
			}
		%>
	</body>
</html>