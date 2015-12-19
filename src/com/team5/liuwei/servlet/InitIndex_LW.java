package com.team5.liuwei.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team5.liuwei.bean.News;
import com.team5.liuwei.bean.Product;
import com.team5.liuwei.service.impl.SelectNews;
import com.team5.liuwei.service.impl.SelectProduct;

public class InitIndex_LW extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private SelectNews selectnews = new SelectNews();
    private SelectProduct selectpro = new SelectProduct();
	public InitIndex_LW() {
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
        List<News> newslist = selectnews.selectAll();
        List<News> showlist = new ArrayList<News>();
        if(newslist.size()>=7){
        	for(int i=0;i<7;i++){
            	showlist.add(newslist.get(i));
            }
        }else{
        	showlist=newslist;
        }
        
        List<Product> prolist = selectpro.selectAll();
        request.setAttribute("nlist", showlist);
        request.setAttribute("prolist", prolist);
        request.getRequestDispatcher("index.jsp").forward(request, response);
	}


	public void init() throws ServletException {
		
	}

}
