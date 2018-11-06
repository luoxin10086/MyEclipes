<%@page import="com.sys.model.Admin" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	Admin admin = new Admin();
	admin.setTxtUser(request.getParameter("txtUser")); //姓名
	admin.setTxtPass(request.getParameter("txtPass")); //密码
	admin.setTxtRPass(request.getParameter("txtRPass"));//重复密码
	admin.setGen(request.getParameter("gen"));//性别
	admin.setTxtEmail(request.getParameter("txtEmail"));//邮箱
	admin.setYear(request.getParameter("year"));//年
	admin.setMonth(request.getParameter("month"));//月
	admin.setDay(request.getParameter("day"));//日
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	姓名：<%=admin.getTxtUser() %>
	密码：<%=admin.getTxtPass() %>
	重复密码：<%=admin.getTxtRPass() %>
	性别：<%=admin.getGen() %>
	邮箱：<%=admin.getTxtEmail() %>
	出生日期： <%=admin.getYear() %> 年<%=admin.getMonth() %>月<%=admin.getDay() %>日
</body>
</html>