<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>데이터베이스 연결 테스트</title>
	</head>
	<body>
		<%
			Connection conn=null;
			Statement stmt=null;
			try{
				String url="jdbc:mysql://127.0.0.1:3306/study";
				String id="root";
				String pass="iotiot";
				
				//Class.forName("com.mysql.jdbc.Driver"); mysql 5.x 방식
				Class.forName("com.mysql.cj.jdbc.Driver");
				
				conn=DriverManager.getConnection(url,id,pass);
				
				stmt=conn.createStatement(); //SQL을 전달해줄 Statement는 Connection을 통해서 제작한다.
				
				String query="select * from register;";
				ResultSet rs = stmt.executeQuery(query);
				
				while(rs.next()){
					String uid=rs.getString("id");
					out.print("<h1>"+uid+"</h1>");
				}
				
				out.print("<h2>정상 접속 확인</h1>");
			}catch(Exception e){
				out.print("<h2>오류발생"+e+"</h2>");
			}
		%>
	</body>
</html>