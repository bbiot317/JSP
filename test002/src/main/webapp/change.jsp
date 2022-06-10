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
			String id="root";
			String pw="iotiot";
			String url = "jdbc:mysql://127.0.0.1:3306/test002";
			conn=DriverManager.getConnection(url, id, pw);
			Class.forName("com.mysql.cj.jdbc.Driver");
			stmt = conn.createStatement();
			
			//String[] all = new String[]{"noti","menu1","menu2","menu3","d ";
			String noti=request.getParameter("noti");
			String mn1=request.getParameter("menu1");
			String mn2=request.getParameter("menu2");
			String mn3=request.getParameter("menu3");
			String mn4=request.getParameter("menu4");
			String color1=request.getParameter("color1");
			String color2=request.getParameter("color2");
			
			
			String sql="update register set menu1='"+mn1+"', menu2='"+mn2+"', menu3='"+mn3+"', menu4='"+mn4+"', noti=' "+noti+"', color1='"+color1+"', color2='"+color2+"';";
			
			out.print(sql);
			//stmt.executeUpdate(sql);
			
			response.sendRedirect("index.jsp");
			
		%>
	</body>
</html>