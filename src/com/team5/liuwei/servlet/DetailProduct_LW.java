package com.team5.liuwei.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team5.liuwei.bean.Product;
import com.team5.liuwei.service.impl.SelectProduct;

public class DetailProduct_LW extends HttpServlet {
	private SelectProduct selectpro = new SelectProduct();

	public DetailProduct_LW() {
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
		int proId = Integer.parseInt(request.getParameter("proId"));
		Product onepro = selectpro.selectOne(proId);
		request.setAttribute("pro_id", onepro.getPro_id());
		request.setAttribute("pro_name", onepro.getPro_name());
		request.setAttribute("pro_brand", onepro.getPro_brand());
		request.setAttribute("pro_version", onepro.getPro_version());
		request.setAttribute("pro_price", Double.toString(onepro.getPro_price()));
		request.setAttribute("pro_image", onepro.getPro_image());
		request.setAttribute("pro_introduce", onepro.getPro_introduce());
		request.getRequestDispatcher("detailProduct.jsp").forward(request, response);
	}

	public void init() throws ServletException {
		// Put your code here
	}

}
