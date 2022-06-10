<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>회워 조회</title>
		<style>
		#wrap{margin:50px auto;
			width:600px;
			padding:50px;
			border:10px solid lightgray;}
		td,th{border:1px solid black; 
				padding:10px;
				text-aligh:center;}
		td{border:1px solid;}
		</style>
	</head>
	<body>
		<%
			Connection conn=null; //mysql과 java를 연결할 회선
			Statement stmt=null; // 회선 사이를 오가면서 query를 전달해줄 상태값
			ResultSet rs=null;	//select의 결과물을 전송받아 저장할 규격
			String url="jdbc:mysql://127.0.0.1:3306/study";
			String db_id="root";
			String db_pw="iotiot";
			
			try{
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn=DriverManager.getConnection(url,db_id,db_pw);
				stmt = conn.createStatement();
				String sql="select * from register;";
				rs= stmt.executeQuery(sql);
				
				%><div id="wrap">
					<table>
						<tr>					
							<th>회원번호</th>
							<th>아이디</th>
							<th>비밀번호</th>
							<th>이름</th>
							<th>이메일</th>
							<th>연락처</th>
							<th>주소</th>
							<th>삭제</th>
						</tr><%
				while(rs.next()){
					String num=rs.getString("num");
					String id=rs.getString("id");
					String pass=rs.getString("pass");
					String name=rs.getString("name");
					String mail=rs.getString("email");
					String phone=rs.getString("phone");
					String addr=rs.getString("address");
					%><tr>
						<td><%=num %></td>
						<td><%=id %></td>
						<td><%=pass %></td>
						<td><%=name %></td>
						<td><%=mail %></td>
						<td><%=phone %></td>
						<td><%=addr %></td>
						<td>
							<form method="post" action="delete.jsp">
								<input type="hidden" value="<%=num %>" name="del">
								<input type="submit" value="삭제">
							</form></td>
					</tr><%
				}		
				%></table>
				</div><%
			}catch(Exception e){
				out.print("<h1>오류 발생: "+e+"</h1>");
			}
		%>
	</body>
</html>