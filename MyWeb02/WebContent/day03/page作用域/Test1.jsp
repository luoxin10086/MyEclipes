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
	String name="page";
	pageContext.setAttribute("name", name);
	%>
	<strong>
	test1:<%=pageContext.getAttribute("name") %>
	</strong>
	<%
		pageContext.include("Test2.jsp");
	/* a.jsp include b.jsp
		b.jsp -> b.java ->编译，执行->c   已经打印结果
		c + a.jsp ->c.jsp -> c.java -> 编译，执行
	*/
	%>
	
	
	<%@ include file="Test2.jsp"	%>
	<!--在一个作用域
	a.jsp include b.jsp
	a.jsp + b.jsp = c.jsp ->c.java->编译->执行
	  -->
</body>
</html>