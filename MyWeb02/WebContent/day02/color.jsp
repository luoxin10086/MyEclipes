<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>喜欢的颜色</title>
</head>
<body>
	<%
	String color = request.getParameter("color");
	%>
	你最喜欢的颜色：<%=color %>
</body>
</html>