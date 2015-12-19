package com.team5.zhaochao.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.team5.zhaochao.bean.Administrator;
import com.team5.zhaochao.service.impl.AdminServiceImpl;

public class AdminServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			String method = request.getParameter("method");
			if(method.equals("doAdd")){
				doAdd(request,response);
			}else if(method.equals("checkName")){
				doCheckName(request, response);
			}else if(method.equals("CheckValidity")){
				doCheckValidity(request, response);
			}else if(method.equals("AdminOut")){
				doAdminOut(request, response);
			}
			
	}
		
	//添加管理员功能
	public void doAdd(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Administrator admin = new Administrator();
		AdminServiceImpl asi = new AdminServiceImpl();
		PrintWriter out = response.getWriter();
		String username = request.getParameter("userName");
		String password = request.getParameter("password");
		String confirmpassword = request.getParameter("confirmpassword");
		
		
			if(password.equals(confirmpassword)&&password.length()!=0&&confirmpassword!=null&&username!=null){
				admin.setUsername(username);
				admin.setPassword(password);
				boolean flag = asi.admin_Add(admin);
				if(flag == true){
					request.getRequestDispatcher("/admin/addManager.jsp").forward(request, response);
				}
			}else{
				out.print("添加管理员失败!");
			}
		
		out.close();
	}
	
	//检查用户名是否存在
		public void doCheckName(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			AdminServiceImpl asi = new AdminServiceImpl();
			PrintWriter out = response.getWriter();
			String str = request.getParameter("username");
				boolean flag = asi.checkName(str);
				if(flag == true){
					out.print("用户已存在,请换一个用户名添加");
				}else if(flag == false){
					out.print("用户名可用!");
				}
			
			out.close();
		}
		
		//检查管理员登录的正确性
		public void doCheckValidity(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			AdminServiceImpl asi = new AdminServiceImpl();
			PrintWriter out = response.getWriter();
			String username = request.getParameter("userName");
			String password = request.getParameter("password");
			boolean flag = asi.checkValidity(username, password);
			if(flag == false){
				out.print("用户名或密码错误!");
			}else{
				
				HttpSession session = request.getSession();
				session.setAttribute("username",username);
				session.setMaxInactiveInterval(3600);
				//response.sendRedirect("../webPro/admin/index.htm");
				//request.getRequestDispatcher("/admin/index.jsp").forward(request, response);
			}
			out.close();
		}
		
		//管理员退出登录
		public void doAdminOut(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			HttpSession session  = request.getSession();
			session.setAttribute("username", null);
			request.getRequestDispatcher("/initindex_lw").forward(request, response);
		}
}
