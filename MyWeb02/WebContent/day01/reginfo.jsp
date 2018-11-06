<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    request.setCharacterEncoding("UTF-8");
    String name=request.getParameter("name");
    String pwd=request.getParameter("pwd");
    String[] channels = request.getParameterValues("channel");
    %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">你输入的注册信息
		<table border="0" align="center">
		<tr>
			<td width="80" height="20">用户名：</td>
			<td><%=name %></td>
		</tr>
		<tr>
			<td height="20">密码：</td>
			<td><%=pwd %></td>
		</tr>
		<tr>
			<td height="20">信息来源</td>
			<td>
			<%
				if(channels != null){/*遍历多个选框的值  */
					for(String channel : channels){
						out.print(channel + "&nbsp;");
					}
				}
			%>
			</td>
		</tr>
		</table>
	</div>
</body>
</html>