package com.sys.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sys.model.Admin;

public class MyLogin extends HttpServlet{
	
	public MyLogin() {
		System.out.println("创建Mylogin");
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//1.设置requset编码
		req.setCharacterEncoding("UTF-8");
		//2.获取参数
		String name = req.getParameter("user");
		String pwd = req.getParameter("pwd");
		System.out.println(name+"|"+pwd);
		//3.响应格式
		resp.setContentType("text/html;charset=UTF-8");
		//创建out
		PrintWriter out = resp.getWriter();
		if (name.equals("admin") && pwd.equals("123")) {
			//4.响应内容
			out.print("<h1>"+name+"登陆成功！</h1>");
		}else {
			out.print("<h1>登陆失败</h1>");
		}
		//5.关闭流
		out.close();
	}
}
