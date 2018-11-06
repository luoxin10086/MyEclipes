<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
    	<%! 
	SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy-MM--dd HH:mm:ss");
	public String getNow(){
		return sdf2.format(new Date());
	} %>
    <%
	String color="yellow";
    String timeColor = "red";
    %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
	p{
		color:<%=color %>;
	}
</style>
<script type="text/javascript">	
	window.onload = function(){
		var time = document.getElementById("now");
		var color = "<%=timeColor %>";
		time.style.color = color;
		time.style.fontSize = "16px";
		
		//var timeInterval = setInterval(getTime,1000);
	}
	function getTime(){
		var time = document.getElementById("now");
		console.log("<%=getNow()%>");
		time.innerHTML = "<%=getNow()%>";
	}
</script>
<title>显示时间</title>
</head>
<body>
	<p>欢迎你。。。</p>
	<span style="color:<%=color%>">当前时间：<span id='now'>2018-08-01 12:12:12</span></span>
</body>
</html>
	<%
	while(true){
		%>
		<script type="text/javascript">
		document.getElementById("now").innerHTML = "<%=getNow()%>";
</script>
		<%
	}
	%>