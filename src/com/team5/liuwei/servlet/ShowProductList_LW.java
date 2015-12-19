package com.team5.liuwei.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team5.liuwei.bean.Product;
import com.team5.liuwei.service.impl.SelectProduct;
import com.team5.util.PageUtil;

public class ShowProductList_LW extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private SelectProduct selectpro = new SelectProduct();

	public ShowProductList_LW() {
		super();
	}

	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		/*List<Product> allprolist = selectpro.selectAll();*/
		int pageNo  = Integer.parseInt(request.getParameter("pageNo"));
		PageUtil page = selectpro.getPage(pageNo, 4);
		page.setPageNo(pageNo);
		request.setAttribute("allprolist", page);
		request.getRequestDispatcher("ShowProductList.jsp").forward(request, response);
	}

	
	public void init() throws ServletException {
		// Put your code here
	}

}
