<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理员</title>
</head>
<body>
	<%
	String login = (String)session.getAttribute("login");
	if(login == null){
		//重定向
		response.sendRedirect("index.jsp");
		return;
	}
	%>
	你好<%=login %>，欢迎你！<a href="main.jsp">个人页面</a>
</body>
</html>