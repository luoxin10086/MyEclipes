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
	String name = request.getParameter("userid");
	String pass = request.getParameter("passwd");
	
	if("lucky".equals(name) && "123456".equals(pass)){
		//转发  改变内容
		request.getRequestDispatcher("hello.jsp").forward(request, response);
	}else{
		//重定向  改变地址
		response.sendRedirect("mailLogin.jsp");
	}
	%>
</body>
</html>