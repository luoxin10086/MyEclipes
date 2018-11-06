package com.sys.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MyServlet extends HttpServlet{
	
	public MyServlet() {
		System.out.println("servlet被创建,被访问时创建，只创建一次");
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("get请求");
		this.doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("post请求");
		resp.setContentType("text/html;charset=utf-8");
		resp.setCharacterEncoding("UTF-8");
		PrintWriter out = resp.getWriter();
		out.print("访问成功！");
		out.close();
	}

	@Override
	protected void service(HttpServletRequest arg0, HttpServletResponse arg1) throws ServletException, IOException {
		System.out.println("service() 每次被访问时调用");
		super.service(arg0, arg1);
	}

	@Override
	public void destroy() {//销毁
		System.out.println("destroy(),web应用重启或关闭时调用,只调用一次");
		super.destroy();
	}

	@Override
	public void init() throws ServletException {//初始化
		System.out.println("init()，web项目启动时调用");
		super.init();
	}
}
