<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登陆页面</title>
</head>
<body>
	<form action="doLogin.jsp" method="post">
		账号：<input type="text" name="userName">
		密码：<input type="password" name="pwd">
		<input type="submit" value="登陆">
	</form>
</body>
</html>