<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>获取页面</title>
</head>
<body>
<%
	//out.println(request.getLocalAddr()+"||"+request.getLocalPort());
	//out.println(request.getContextPath());
	//1.设置接受编码
	request.setCharacterEncoding("UTF-8");
	//2.获取参数
	String name = request.getParameter("username");
	String password = request.getParameter("password");
	String repassword = request.getParameter("repassword");
	String[] info = request.getParameterValues("channel");
%>
<p>账号：<%=name %></p>
<p>密码：<%=password %></p>
<p>信息来源：
	<%
		for(String str : info){
	 %>
		<span style="color:red;"><%=str %></span>
	<%	
		}
	%>
</p>
</body>
</html>