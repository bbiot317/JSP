<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>정보수정 처리기</title>
	</head>
	<body>
		<%
			Connection conn=null; //데이터베이스 접속 회선
			Statement stmt=null;  //회선을 따라 이동하며 query문과 resultset을 전달해줄 객체
			ResultSet rs=null;	 //	select문의 결과값를 담을수 있는 타입
			
			//데이터베이스 접속을 위한 파라미터들
			String url="jdbc:mysql://127.0.0.1:3306/study";	//"프로토콜://위치:포트번호/데이터베이스명"
			String db_id="root";		
			String db_pw="iotiot";		
			
			
			//post를 통해 edit.jsp파일에서 전송받아올 패러미터 들
			request.setCharacterEncoding("utf-8");		//한글깨짐 방지
			String number=request.getParameter("number");	//primary key 값, 수정할 데이터를 수정할 목적
			String id=request.getParameter("id");			//아디디값
			String pw=request.getParameter("pw");			//비밀번호값
			String name=request.getParameter("nm");			//이름값
			String email=request.getParameter("em");		//이메일값
			String phone=request.getParameter("ph");		//전화번호값
			String address=request.getParameter("ad");		//주소값
			
			
			
			try{
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn=DriverManager.getConnection(url, db_id, db_pw);
				stmt=conn.createStatement();
				String sql="update register set id='"+id+"', pass='"+pw+"', name='"+name+"',";
				sql += "email='"+email+"', phone='"+phone+"', address='"+address+"' where num="+number+";";
				
				int result=stmt.executeUpdate(sql);
				//Statement.execute(String query) : return boolean, query문의 동작여부를 반환,insert문에 사용
				//Statement.executeQuery(String query) : return ResultSet, 화면을 반환, select문에 사용
				//Statement.executeUpdate(String query): return int, 영향받은 튜플의 수를 반환, update delete에
				response.sendRedirect("member.jsp");
			}catch(Exception e){
				out.print("<h1>오류발생 :" +e+"</h1>");
			}
			
		%>
		<h1><%=number %></h1><h1><%=pw%></h1><h1><%=name %></h1><h1><%=email %></h1><h1><%=phone %></h1>
		<h1><%=address %></h1>
	</body>
</html>