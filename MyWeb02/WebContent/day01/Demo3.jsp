<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat,com.sys.model.Student,java.util.List,java.util.ArrayList" %>    
<%!
	List<Student> list = new ArrayList<Student>();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	String message="JAVA";
	int[] array={1,2,3,4};
%>	
<%
	list.add(new Student(1001,"张三1",90,sdf.parse("2000-01-01")));
	list.add(new Student(1002,"张三2",80,sdf.parse("1999-01-01")));
	list.add(new Student(1003,"张三3",70,sdf.parse("2000-02-01")));
	list.add(new Student(1004,"张三4",65,sdf.parse("2001-03-01")));
	list.add(new Student(1005,"张三5",100,sdf.parse("2002-08-01")));
	
	for(int i=0;i<list.size();i++){
		System.out.println(list.get(i));
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1" width="500px" cellPadding="0">
	<tr>
		<th>序号</th>
		<th>学号</th>
		<th>姓名</th>
		<th>分数</th>
		<th>生日</th>
		<th>操作</th>
	</tr>
	<tr>
		<td>1</td>
		<td>10000</td>
		<td>张三</td>
		<td>100</td>
		<td>2000年1月20日</td>
		<td>
			<a href="#">修改</a>&nbsp;&nbsp;
			<a href="#">删除</a>
		</td>
	</tr>
	<% for(int i=0;i<list.size();++i){
		Student stu = list.get(i);
	 %>
	<tr>
	<td><%=i %></td>
	<td><%=stu.getId() %></td>
	<td><%=stu.getName() %></td>
	<td><%=stu.getScore() %></td>
	<td><%=sdf.format(stu.getBirthday()) %></td>
	<td>
		<a href="#">修改</a>&nbsp;&nbsp;
		<a href="#">删除</a>
	</td>
</tr>
	<% 
	}
	%>
	<script type="text/javascript">
	var myMessage="<%=message%>";
	var myArray="<%=list%>";
	alert( myArray);
	/* for(var li in myArray){
		alert(li)
	} */
	</script>
</table>
</body>
</html>
