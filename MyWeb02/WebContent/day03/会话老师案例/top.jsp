<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.sys.model.User" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	//会话失效或登陆失败
	User user = (User)session.getAttribute("user");
	if(user == null){
		//重定向
		response.sendRedirect("login.jsp");
		return;
	}
	%>
	<span>欢迎<%=user.getName() %>:</span>
	<a href="loginOut.jsp">注销</a>
	<a href="main.jsp">菜单一</a>
	<a href="main2.jsp">菜单二</a>
	<%
		if(user.getSole() == 2){
	%>
	<a href="admin1.jsp">后台页面</a>
	<%		
		}
	%>
</body>
</html>