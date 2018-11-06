<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="loginControl.jsp" %><!-- 引入外部验证文件 -->
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- session:会话 客户端与服务器在时间段内的连续对话 -->
<%=session.getId() %>
<%-- <%
	String login = (String)session.getAttribute("login");
	if(login == null){//登陆失败，未登录
		%>
		<p>未登录请重新登陆<a href="index.jsp">登陆</a></p>
		<%
	}else{
		%> --%>
		欢迎你：<%=login %>,登陆成功！
		<a href="zhuxiao1.jsp">注销1</a>
		<a href="zhuxiao2.jsp">注销2</a>
	<%-- 	<%
	}
%> --%>
</body>
</html>