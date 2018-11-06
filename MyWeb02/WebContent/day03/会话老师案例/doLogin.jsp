<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List,java.util.ArrayList,com.sys.model.User" %>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%	
	//1.模拟后台数据
	List<User> list = new ArrayList<User>();
	list.add(new User(1001,"冻结账户","123123",0));
	list.add(new User(1002,"user","123123",1));
	list.add(new User(1003,"admin","123123",2));
	
	//2.接受参数
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("user");
	String pwd = request.getParameter("pwd");
	//3.判断角色
	User loginUser = null;
	for(User user:list){
		if(name != null && name.equals(user.getName())){
			loginUser = user;
			break;
		}
	}
	//4.判断登录
	if(loginUser == null){//账号不存在
		
	}else{
		if(pwd != null && pwd.equals(loginUser.getPassword())){
			//冻结账户判断
			
			//session存储用户信息
			session.setAttribute("user", loginUser);
			session.setMaxInactiveInterval(10);
			response.sendRedirect("main.jsp");
		}else{//账号与密码不匹配
			
		}
	}
	
%>
</body>
</html>