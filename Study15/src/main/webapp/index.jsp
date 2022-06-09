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
				

				out.print("<table>");
				while(rs.next()){

					out.print("<tr>");
					String num=rs.getString("num");
					String uid=rs.getString("id");
					String upass=rs.getString("pass");
					String name=rs.getString("name");
					String mail=rs.getString("email");
					String phone=rs.getString("phone");
					String addr=rs.getString("address");
					
					out.print("<td style='border:1px solid'>"+num+"</td>");
					out.print("<td style='border:1px solid'>"+uid+"</td>");
					out.print("<td style='border:1px solid'>"+upass+"</td>");
					out.print("<td style='border:1px solid'>"+name+"</td>");
					out.print("<td style='border:1px solid'>"+mail+"</td>");
					out.print("<td style='border:1px solid'>"+phone+"</td>");
					out.print("<td style='border:1px solid'>"+addr+"</td>");
					out.print("</tr>");

				}
				out.print("</table>");
				
				out.print("<h2>정상 접속 확인</h2>");
			}catch(Exception e){
				out.print("<h2>오류발생"+e+"</h2>");
			}
		%>
	</body>
</html>