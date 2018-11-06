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
	//清除
	session.removeAttribute("user");//清空属性
	//session.invalidate();//清除全部属性！ 购物车
	response.sendRedirect("login.jsp");
	%>
	注册成功1！！
	<%-- <%
	session.setAttribute("user", null);
	%>
	注册成功2！！ --%>
</body>
</html>