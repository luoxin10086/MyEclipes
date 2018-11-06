<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登陆处理页面</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("userName");
	String pwd = request.getParameter("pwd");
	if("sa".equals(name) && "sa".equals(pwd)){
		request.getRequestDispatcher("welcome.jsp").forward(request,response);
	}
	%>
</body>
</html>