<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Insert title here</title>
		<style>
			body{
				background-color:#0000ff;
			}
			#wrap{
				bgcolor:white;
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
	<body>
			<%
				
			%>
			
		<div id="wrap">
			<form method="post" action="change.jsp">
				<h1 id="h1">안내문을 입력</h1>	
				<ul>
					<li>미지정</li><li>미지정</li><li>미지정</li><li>미지정</li>
				</ul>
				<fieldset>
					<legend>배경색상 관리</legend>
					<input type="color" name="color1"> 
				</fieldset>
				<fieldset>
					<legend>전경색상 관리</legend>
					<input type="color" name="color2">
				</fieldset>
				<fieldset>
					<legend>메뉴명 변경</legend>
					<input type="text" value="미지정" name="menu1"><br>
					<input type="text" value="미지정" name="menu2"><br>
					<input type="text" value="미지정" name="menu3"><br>
					<input type="text" value="미지정" name="menu4">
				</fieldset>
				<fieldset>
					<legend>안내문 관리</legend>
					<input type="text" value="미지정" name="noti">
				</fieldset>
				<input type="submit" value="변경">
			</form>
		</div>
		
	</body>
</html>