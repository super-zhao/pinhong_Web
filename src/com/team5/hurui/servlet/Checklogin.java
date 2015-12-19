package com.team5.hurui.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Checklogin extends HttpServlet {



	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doPost(request, response);
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("UTF-8");
		HttpSession hs=request.getSession();
		String name=(String)hs.getAttribute("uname");
		if(name!=null&&!name.equals("")){
			response.sendRedirect("../chat/main.jsp");
		}else{
			response.sendRedirect("../chat/index.jsp");
		}
	}


}