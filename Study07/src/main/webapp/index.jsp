<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Insert title here</title>
        <style>
			#wrap{
			margin:0 auto;
			width:300px;
			border:5px solid lightgray;
			padding:30px;
			}
			#wrap input{
				width:70%;
			}
			#wrap fieldset input{
				width:15px;
			}
			#wrap > form > input:last-child{
				display:block;
				margin:0 auto;
			}
			input[name="id"]{
			
				margin-left: 48px;
			}
			input[name="name"]{
				margin-left: 32px;
			}
			input[name="phone"]{
				margin-left: 16px;
			}
        </style>
	</head>
	<body>
		<div id="wrap">
			<form method="post" action="welcome.jsp">
				<h1>회원가입</h1>
				<hr>
				ID : <input type="text" placeholder="아이디를" name="id"><br>
				비밀번호 : <input type="password" placeholder="비밀번호를" name="pw"><br>
				이름 : <input type="text" name="name" placeholder="성명을"><br>
		        연락처 : <input type="text" name="phone" placeholder="아이디를"><br>
		        <fieldset>
		            <legend>관심분야</legend>
		            <label>JAVA<input type="radio" value="java" name="ra"></label>
		            <label>IOT<input type="radio" value="iot" name="ra"></label>
		            <label>HTML<input type="radio" value="html" name="ra"></label>
        		</fieldset>
        		<fieldset>
		            <legend>수강과목</legend>
		            <label>JSP<input type="checkbox" name="jsp"></label>
		            <label>ANDROID<input type="checkbox" name="android"></label>
	        	</fieldset>	
	        	<hr>
        		<input type="submit" value="회원가입">
        		
			</form>
		</div>
        
        
       <!--  <form>
		<h1>회원가입</h1>
		<hr>
		id:<input type="text" placeholder="" name="id"><br>
		비밀번호:<input type="password" name="pw"><br>
		이름:<input type="text" name="name"><br>
        연락처:<input type="text"><br>
        <fieldset>
            <legend>관심분야</legend>
            <label><input type="radio" value="java" name="ra"></label>
            <label><input type="radio" value="iot" name="ra"></label>
            <label><input type="radio" value="html" name="ra"></label>
        </fieldset>
        <fieldset>
            <legend>수강과목</legend>
            <label><input type="checkbox" value="1"></label>
            <label><input type="checkbox" value="2"></label>
            <label><input type="checkbox" value="3"></label>

        </fieldset>
	    </form> -->
	</body>
</html>