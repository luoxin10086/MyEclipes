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
	System.out.print(session.getId());
	//1.创建Cookie
	Cookie cookie = new Cookie("name","admin");
	Cookie cookie2 = new Cookie("pwd","123123");
	//2.添加Cookie
	cookie.setMaxAge(60*60*24);
	response.addCookie(cookie);
	cookie2.setMaxAge(60*60*24);
	response.addCookie(cookie2);
	//3.获取Cookie
	Cookie[] cookies = request.getCookies();
	if(cookies != null){
		for(Cookie c:cookies){
			out.print(c.getName()+"="+c.getValue());
		}
	}
%>
</body>
</html>