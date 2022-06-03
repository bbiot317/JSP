<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Insert title here</title>
		<style>
			input{
			width:300px;
			margin:0 auto;
			display:block;}
			#wrap{
			border:4px solid lightgray;
			width:400px;
			margin: 0 auto;}
			input[type="submit"]{
			width:330px}
		</style>
	</head>
	<body>
		<div id="wrap">
			<form method="post" action="submit.jsp">
			<fieldset>
				<legend>크기 설정</legend>
				<div>
				<input type="number" name="tr" placeholder="tr수" min="1" max="5">
				<input type="number" name="td" placeholder="td수" min="1" max="5">
				<input type="number" name="wd" placeholder="td width" min="10" max="50" step="10">
				<input type="number" name="ht" placeholder="td height" min="10" max="50" step="10">
				</div>
			</fieldset>
			
			<fieldset>
				<legend>테두리 설정</legend>
				<div>
				<input type="color" name="color">
				<input type="number" name="border" placeholder="두께를">
				</div>
			</fieldset>
			
			<fieldset>
				<legend>배경색 설정</legend>
				<input type="color" name="color">
			</fieldset>
			<input type="submit" value="만들기">
			</form>
		</div>
	</body>
</html>