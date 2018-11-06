<%@page import="com.sys.model.User"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.net.*"%>
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
		//模拟后台 数据
		List<User> list = new ArrayList<User>();
		list.add(new User(1001, "冻结用户", "123", 0));
		list.add(new User(1002, "user", "123", 1));
		list.add(new User(1002, "admin", "123",2));
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String rembpassword = request.getParameter("remberpassword");
		User loginUser = null;
		for (User u : list) {
			System.out.print("\n"+u.getName()+"|"+u.getPassword()+"\n");
			if (name != null && name.equals(u.getName())) {
				loginUser = u;
				break;
			}
		}
		if (loginUser == null) {
			session.setAttribute("loginfaild", "账户不存在");
			response.sendRedirect("loginfaild.jsp");
		} else {

			if (password != null && password.equals(loginUser.getPassword())) {
				if (loginUser.getSole() == 0) {
					session.setAttribute("loginfaild", "账户已注销");
					response.sendRedirect("loginfaild.jsp");
				} else {
					if(rembpassword.equals("on")){
						System.out.print("name"+name+"password"+password);
						Cookie cookieName=new Cookie("name",name);
						Cookie cookiepassword=new Cookie("password",password);
						cookieName.setMaxAge(60*60*24*7);
						response.addCookie(cookieName);
						
						cookiepassword.setMaxAge(60*60*24*7);
						response.addCookie(cookiepassword);
						
					}
					session.setAttribute("user", loginUser);
					session.setMaxInactiveInterval(10);
					response.sendRedirect(" main.jsp");
					
				}
			}

			else {
				session.setAttribute("loginfaild", "密码错误");
				response.sendRedirect("loginfaild.jsp");
			}

		}
	%>


</body>
</html>