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
//判断账户是否存在或超时
User user=(User)session.getAttribute("user");
if(user==null){
	response.sendRedirect("login.jsp");
	return;
}

%>
<p>欢迎你！<%=((User)session.getAttribute("user")).getName()%></p>


<p>
<a href="user1.jsp">菜单一</a>
<a href="user2.jsp">菜单二</a>
<%
if(user.getSole()==2){
	%>
		<a href="admin1.jsp">管理菜单</a>
<% 	
}
%>


</p>

<p>
<a href="loginout.jsp" >注销</a>
</p>
</body>
</html>