<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登陆处理页面</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	//获取请求数据
	String name = request.getParameter("userName").trim();//忽略前后空格
	String pwd = request.getParameter("pwd").trim();
	boolean valid = false;//判断用户验证成功
	//这里暂时不访问数据库，如果用户名和密码都是'admin',则通过验证
	if("admin".equals(name) && "admin".equals(pwd)){
		//设置用户登陆信息
		session.setAttribute("login", name);
		//设置session过期时间
		session.setMaxInactiveInterval(10);
		//默认会话时间
		//System.out.println(session.getMaxInactiveInterval());
		//转发
		//request.getRequestDispatcher("admin.jsp").forward(request, response);
		//重定向   页面要重定向      跳转了页面    才会重新向服务器请求     才有session失效的意义
		response.sendRedirect("admin.jsp");
	}else{
		response.sendRedirect("index.jsp");
	}
	%>
</body>
</html>