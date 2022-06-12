<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Insert title here</title>
		<style>
			#wrap{
				border:3px solid black;
				width:350px;
				margin:0 auto;
				padding:20px;
				background-color:white;
			}
			ul{
			padding:0;
			margin:0;
			}
			ul li{
				display:inline-block;
				border:1px solid;
				margin:0 auto;
				padding:0;
				width:85px;
				text-align:center;
			}
			form{
				margin:15px auto;
			}
			input[type="submit"]{
				display:block;	
				margin:15px auto;
			}
			
			
		</style>
	</head>
			<%
				Connection conn=null;
				ResultSet rs=null;
				Statement stmt=null;
				Class.forName("com.mysql.cj.jdbc.Driver");
				String url="jdbc:mysql://127.0.0.1:3306/study";

				String uid="root";
				String upw="iotiot";
				conn= DriverManager.getConnection(url,uid,upw);
				stmt= conn.createStatement();
				String sql = "select * from test002";
				rs= stmt.executeQuery(sql);
				rs.next();
				String noti=rs.getString("noti");
				String menu1=rs.getString("menu1");
				String menu2=rs.getString("menu2");
				String menu3=rs.getString("menu3");
				String menu4=rs.getString("menu4");
				String color1=rs.getString("color1");
				String color2=rs.getString("color2");
				
			%>
	<body style="background-color:<%=color1%>;">
			
			
		<div id="wrap" style="background-color:<%= color2%>;">
			<form method="post" action="change.jsp">
				<h1 id="h1"><%=noti%></h1>	
				<ul>
					<li><%=menu1 %></li><li><%=menu2 %></li><li><%=menu3 %></li><li><%=menu4 %></li>
				</ul>
				<fieldset>
					<legend>배경색상 관리</legend>
					<input type="color" value="<%=color1%>" name="input"> 
				</fieldset>
				<fieldset>
					<legend>전경색상 관리</legend>
					<input type="color" value="<%=color2 %>" name="input">
				</fieldset>
				<fieldset>
					<legend>메뉴명 변경</legend>
					<input type="text" value="<%=menu1 %>" name="input"><br>
					<input type="text" value="<%=menu2 %>" name="input"><br>
					<input type="text" value="<%=menu3 %>" name="input"><br>
					<input type="text" value="<%=menu4 %>" name="input">
				</fieldset>
				<fieldset>
					<legend>안내문 관리</legend>
					<input type="text" value="<%=noti%>" name="input">
				</fieldset>
				<input type="submit" value="변경">
			</form>
		</div>
		
	</body>
</html>