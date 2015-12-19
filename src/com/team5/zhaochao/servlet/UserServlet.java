package com.team5.zhaochao.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team5.util.PageUtil;
import com.team5.zhaochao.bean.User;
import com.team5.zhaochao.service.impl.UserServiceImpl;

public class UserServlet extends HttpServlet {
	UserServiceImpl usi = new UserServiceImpl();
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doPost(request, response);
		
		
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			String method = request.getParameter("method");
			if(method.equals("showUser")){
				doShowUSer(request, response);
			}else if(method.equals("removeUser")){
				doRemoveUSer(request, response);
			}else if(method.equals("showPage")){
				doUserShowPage(request, response);
			}else if(method.equals("removeSelUser")){
				doRemoveSelUSer(request, response);
			}
			
			

	}
	
	//显示所有用户
	public void doShowUSer(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		List<User> list = new ArrayList<User>();
		list = usi.userShow();
		request.setAttribute("userList", list);
		request.getRequestDispatcher("admin/showUserList.jsp").forward(request, response);
		out.close();
	}
	
	//删除所选用户
	public void doRemoveUSer(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		int user_id = Integer.parseInt(request.getParameter("user_id"));
		boolean flag = usi.userRemove(user_id);
		if(flag == true){
			request.getRequestDispatcher("zcUserServlet?method=showPage&pageNo=1").forward(request, response);
		}else{
			out.print("删除失败!");
		}
		
		out.close();
	}
	
	//批量删除用户
	public void doRemoveSelUSer(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String user_id_str[] = request.getParameterValues("item"); 
		int a[] = new int [user_id_str.length];
		boolean flag = false;
		for (int i = 0; i < user_id_str.length; i++) {
			a[i] = Integer.parseInt(user_id_str[i]);
			flag = usi.userRemove(a[i]);
		}
			request.getRequestDispatcher("zcUserServlet?method=showPage&pageNo=1").forward(request, response);
	}
	//根据分页来显示数据
		public void doUserShowPage(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			int pageNo =  Integer.parseInt(request.getParameter("pageNo"));
			//设置每页显示八条数据
			PageUtil page = usi.getPage(pageNo, 10);
			page.setPageNo(pageNo);
			request.setAttribute("page", page);
			request.getRequestDispatcher("admin/showUserList.jsp").forward(request, response);;
		}
		
}
