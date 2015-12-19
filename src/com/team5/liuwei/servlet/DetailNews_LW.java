package com.team5.liuwei.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team5.liuwei.bean.News;
import com.team5.liuwei.service.impl.SelectNews;

public class DetailNews_LW extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private SelectNews selectnews = new SelectNews();
	
	public DetailNews_LW() {
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
		int newsid = Integer.parseInt(request.getParameter("newsId"));
		News newslist = selectnews.selectOne(newsid);
		String title = newslist.getNews_title();
		String content = newslist.getNews_content();
		String time = newslist.getNews_date().toString();
		request.setAttribute("title", title);
		request.setAttribute("content", content);
		request.setAttribute("time", time);
		request.getRequestDispatcher("detailNews.jsp").forward(request, response);
	}


	public void init() throws ServletException {
		// Put your code here
	}

}
