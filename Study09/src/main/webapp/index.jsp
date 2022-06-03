<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Input태그의 전송방식</title>
	</head>
	<body>
		<div id="wrap">
			<form method="post" action="submit.jsp">
				<input type="button" value="버튼데이터" name="button"><br>
				<!-- 같은 name을 가진 input이 여러개 존재하는 경우 -->
				<input type="checkbox" value="체크1" name="checkbox">
				<input type="checkbox" value="체크2" name="checkbox">
				<input type="checkbox" value="체크3" name="checkbox"><br>
				
				<fieldset>
					<legend>특이 태그들</legend>
					<input type="color" name="color"><br>
					<input type="date" name="date"><br>
					<input type="datetime-local" name="datetime"><br>
					<input type="range" name="range">
					
				</fieldset>
				<input type="submit" value="전송" name="submit">
			</form>
			<!-- 특정태그는 input에 value,name이 있어도 데이터가 전송되지 않음 
				 이 경우 JS를 이용해 전송 가능 -->
		</div>
	</body>
</html>