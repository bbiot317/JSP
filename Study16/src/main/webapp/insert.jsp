<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
	<title>데이터 입력 처리기</title>
	</head>
	<body>
		<%
			Connection conn=null;
			Statement stmt=null;
			ResultSet rs= null;
			String url="jdbc:mysql://127.0.0.1:3306/study";
			String db_id="root";
			String db_pw="iotiot";
			
			request.setCharacterEncoding("utf-8"); //한글깨짐 방지
			String id=request.getParameter("id");
			String pw=request.getParameter("pw");
			String name=request.getParameter("nm");
			String mail=request.getParameter("em");
			String phone=request.getParameter("ph");
			String addr=request.getParameter("ad");
			try{
				conn=DriverManager.getConnection(url,db_id,db_pw);
				stmt=conn.createStatement();

				Class.forName("com.mysql.cj.jdbc.Driver");
				
				String sql= "insert into register (id,pass,name,email,phone,address) values(";
				sql+="'"+id+"','"+pw+" ',' "+name+ "',' "+mail+"','"+phone+"','"+addr+"');";
				out.print(sql);
				boolean result = stmt.execute(sql);
				//Statement.executeQuery(String) : return ResultSet, Select문에서 발생한 결과를 반환
				//Statement.execute(String) : return boolean, insert에서 성공결과를 반환
				response.sendRedirect("member.jsp");
			}catch(Exception e){
				out.print("오류발생 : "+e);
			}
			
		%>
	</body>
</html>