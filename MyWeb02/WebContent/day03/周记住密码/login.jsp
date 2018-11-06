<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="com.sys.model.User"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.net.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		List<User> list = new ArrayList<User>();
		list.add(new User(1001, "冻结账户", "123", 0));
		list.add(new User(1002, "普通账户", "123", 1));
		list.add(new User(1002, "admin", "123", 2));
		Cookie[] cookies = request.getCookies();
		String name=null;
		String password=null;
		if(cookies!=null){
			session.setAttribute("cookie", cookies);
			for (Cookie c : cookies) {
				if("name".equals(c.getName())){
					name=c.getValue();
				}
				if("password".equals(c.getName())){
					password=c.getValue();
				}
			
			}
		}
		boolean flag=false;
		User loginUser = null;
		for(User u:list){
			if(name!=null&&name.equals(u.getName())&&u.getPassword().equals(password)){
				flag=true;
				loginUser=u;
			}
		}
		
		if(flag){
			session.setAttribute("user", loginUser);
			response.sendRedirect("main.jsp");
		}
		System.out.print(name);
	%>


	<form action="dologin.jsp" method="post">
		<table>
			<tr>
				<td><span>用户名：</span> <input type="text" name="name"></td>
				<td><span>密码：</span> <input type="password" name="password">
				</td>
				<td><input type="checkbox" name="remberpassword">记住密码
				</td>
				<td><input type="submit" name="submit" value="提交"></td>
			</tr>

		</table>
	</form>

</body>
</html>