<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Insert title here</title>
		<style>
		
		</style>
	</head>
	<body>
	
	<%
		request.setCharacterEncoding("utf-8");

		int wd = Integer.parseInt(request.getParameter("wd"));
		int ht = Integer.parseInt(request.getParameter("ht"));
		int tr = Integer.parseInt(request.getParameter("tr"));
		int td = Integer.parseInt(request.getParameter("td"));

		String[] color=request.getParameterValues("color");

		int border = Integer.parseInt(request.getParameter("border"));
		
		
		%><table><%
		for(int i=0; i<tr;i++){
			%><tr><%
			for(int j=0; j<td; j++){
				%><td style="width:<%=wd%>px; 
				height:<%=ht%>px;
				background-color:<%=color[0]%>;
				border:<%=border %>px solid <%=color[1]%>;"
				></td><%
			}%>
			</tr><%
		}
		%></table><%
	%>
	</body>
</html>