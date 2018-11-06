<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>1.java小脚本:service方法中</h1>
	<%
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM--dd HH:mm:ss");
		Date date = new Date();
		String time = sdf.format(date);
	%>
	<h1>2.java表达式：out.print()</h1>
	<p>当前时间：<%=time %></p>
	<h1>3.java声明:成员属性，成员方法</h1>
	<%! 
	SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy-MM--dd HH:mm:ss");
	public String getNow(){
		return sdf2.format(new Date());
	} %>
	<% System.out.print("你好呀"); %>
</body>
</html>