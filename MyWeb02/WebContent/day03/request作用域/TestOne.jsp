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
		String name="request";
	request.setAttribute("name", name);
	request.getRequestDispatcher("TestTwo.jsp").forward(request, response);
	//转发     request  传递到TestTwo.jsp    执行了TestTwo.jsp的表达式
	%>
</body>
</html>