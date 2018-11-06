<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="Login.do" method="post">
	账户：<input type="text" name="user">
	密码：<input type="password" name="pwd">
	重复密码：<input type="checkbox" name="rpwd">
	<input type="submit" value="登录">
	</form>
</body>
</html>