<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>  </title>
	</head>
	<body>
		<%
			Connection conn=null;
			ResultSet rs=null;
			Statement stmt = null;

			Class.forName("com.mysql.cj.jdbc.Driver");
			String id="root";
			String pw="iotiot";
			String url = "jdbc:mysql://127.0.0.1:3306/study";
			conn=DriverManager.getConnection(url, id, pw);
			stmt = conn.createStatement();
			
			request.setCharacterEncoding("utf-8");
			String[] req = request.getParameterValues("input");
			
			String sql="update test002 set menu1='"+req[2]+"', menu2= '"+req[3]+"',menu3='"+req[4]+"'";
					sql+= ", menu4='"+req[5]+"', noti='"+req[6]+"', color1='"+req[0]+"', color2='"+req[1]+"';";
			
			
			out.print(sql);
			out.print(req.length);
			stmt.executeUpdate(sql);
			
			response.sendRedirect("index.jsp");
			
		%>
	</body>
</html>
