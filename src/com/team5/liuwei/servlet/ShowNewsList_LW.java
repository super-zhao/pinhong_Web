package com.team5.liuwei.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team5.liuwei.bean.News;
import com.team5.liuwei.service.impl.SelectNews;
import com.team5.util.PageUtil;

public class ShowNewsList_LW extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private SelectNews selectnews = new SelectNews();
	public ShowNewsList_LW() {
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
/*		response.setContentType("text/html");
		List<News> shownewslist = selectnews.selectAll();*/
		int pageNo =  pageNo = Integer.parseInt(request.getParameter("pageNo"));
		//设置每页显示八条数据
		
		PageUtil page = selectnews.getPage(pageNo, 10);
		page.setPageNo(pageNo);
        request.setAttribute("slist", page);
        request.getRequestDispatcher("showNewsList.jsp").forward(request, response);
		
	}

	public void init() throws ServletException {
		// Put your code here
	}

}
