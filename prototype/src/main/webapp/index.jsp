<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>처음화면</title>
		<style>
			*{
				margin:0;
				padding:0;}
			header{
				margin:0px;
				padding:0px;
				height:60px;
				background-color:black;}
			#wrap div{
				display:inline-block;
				width:150px;
				height:100px;
				border:4px solid lightgray;
				padding:20px;
				margin:15px;
				text-align:center;
				}
			#wrap a{
				display:inline-block;
				text-decoration:none;
				font-size:2em;
				margin-top:25px;}
			#wrap{
				width:800px;
				margin:200px auto;
				}
			form{
				display:inline;}
			header>form>input[type="text"]{
				width:300px;
				height:40px;
				margin:7px 0px 7px 100px;}	
			header>form>input[type="submit"]{
				height:40px;
				margin:7px 0px 7px 0px;}
			ul{
				display:lnline;
				float:right;}
			header>ul li{
				display:inline;
				float:right;
				height:40px;
				width:110px;
				margin:7px 10px 7px 0px;}
			ul li a{
				display:inline-block;
				text-decoration:none;
				font-size:30px;}
			
		</style>
	</head>
	<body>
		<header>
			<form>
				<input type="text" placeholder="검색어를 입력하세요" name="search"><input type="submit" value="검색">
			</form>
			<ul>
				<li><a href="#">등록</a></li>
				<li><a href="#">로그인</a></li>
			</ul>
		</header>
		<div id="wrap">
			<div style="width:250px;">
				<a href="">데이터베이스</a>
			</div>
				
			<div>
				<a href="">게시판</a>
			</div>
			<div>
				<a href="">회원메뉴</a>
			</div>
			<!-- 
			<ul>
				<li></li><li></li>
			</ul>
			 -->
		</div>
		<%
		
		%>
		
	</body>
</html>
