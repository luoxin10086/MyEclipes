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
		String login = (String)session.getAttribute("login");//获取的是对象，强转未字符串
		if(login == null){
			response.sendRedirect("index.jsp");
			return;
		}
	%>
</body>
</html>