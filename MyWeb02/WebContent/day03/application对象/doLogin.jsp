<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登陆验证页面</title>
</head>
<body>
<%
	String name = request.getParameter("user");
	String pwd = request.getParameter("pwd");
	System.out.println("doLogin.jsp--name:"+name+",pwd:"+pwd);
	if("".equals(name)){
		out.write("账号不能为空！");
	}else if("admin".equals(name) && "admin".equals(pwd)){
		Integer count = (Integer)application.getAttribute("count");
		if(count == null){
			application.setAttribute("count", 1);
		}else{
			application.setAttribute("count", count+1);
		}
		
		//重定向      两次请求，地址栏发生改变
		//response.sendRedirect("welcome.jsp?user="+name+"&pwd"+pwd);//不推荐写法
		//System.out.println("响应之后的代码。。。");
		//存储会话                                           键			值 对
		session.setAttribute("user", name);
		//session.setMaxInactiveInterval(5);
		//2.转发   同一次请求，地址栏不发生改变     适用于导航菜单内联                                      请求                      响应
		request.getRequestDispatcher("welcome.jsp").forward(request, response);
	}else{
		//3.信息打印  整个页面被重新书写
		PrintWriter print = response.getWriter();
		print.write("登录失败！！！");
		print.write("<a href='javascript:window.history.back()'>返回</a>");
		print.close();
	}
%>

</body>
</html>