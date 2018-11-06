<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String req="request";
	String ses="session";
	request.setAttribute("req", req);//request为空   两次请求是获取不到的
	session.setAttribute("ses", ses);//session不为空    会话   是服务器创建唯一对象
	response.sendRedirect("testTwo.jsp");//重定向
	
	%>
</body>
</html>