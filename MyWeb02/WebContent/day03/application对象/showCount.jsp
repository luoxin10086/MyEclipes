<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	当前访问量是：<%=application.getAttribute("count") %>
	<!-- 储存的真实路径 -->
	真实路径为：<%=application.getRealPath("showCount.jsp") %>
</body>
</html>