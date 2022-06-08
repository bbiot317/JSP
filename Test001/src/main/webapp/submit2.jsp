<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%

			int tr = Integer.parseInt(request.getParameter("tr"));
			int td = Integer.parseInt(request.getParameter("td"));
			String wd = request.getParameter("wd");
			String ht = request.getParameter("ht");
			
			String[] color=request.getParameterValues("color");
			String border = request.getParameter("border");
			
			String style="style='width:"+wd+"px; height:"+ht+"px; border:"+border+"px solid "+color[0]+"; background-color:"+color[1]+";'";
			
		%>
		<table>
		<%
			for(int i=0; i<tr; i++){
				%><tr><%
				for(int j=0; j<td; j++){
					%><td <%=style%>></td><%
				}
				%></tr><%
			}
		%>
		</table>
		
		
		
		<p>스타일태그 모양: <%=style %></p>
	</body>
</html>