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
	String ses="session";
	String app="application";
	session.setAttribute("ses", ses);
	//浏览器和服务器建立session  保存了session （ses） 的值
	application.setAttribute("app", app);
	//
	response.sendRedirect("testTwo.jsp");
	%>
</body>
</html>