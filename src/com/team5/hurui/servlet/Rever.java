package com.team5.hurui.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team5.hurui.bean.Message;
import com.team5.hurui.bean.Reply;
import com.team5.hurui.service.impl.Getmessageimpl;
import com.team5.hurui.service.impl.Getreplyimpl;

public class Rever extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public Rever() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
        String id=request.getParameter("messageID");
        if(id==null||id.equals("")){
        	response.sendRedirect("../messageBoard.jsp");
        }else{
		this.doPost(request, response);
        }
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;chatset=UTF-8");
		int n=Integer.parseInt(request.getParameter("messageID"));
		int pno=Integer.parseInt(request.getParameter("pageNo"));
		Getmessageimpl gmi=new Getmessageimpl();
		Message m=gmi.getMessage(n);
		Getreplyimpl gri=new Getreplyimpl();
		List<Reply> replylist=gri.selectAll(n);
		request.setAttribute("message", m);
		request.setAttribute("replylist", replylist);
		request.setAttribute("mid",n);
		request.setAttribute("pageNo",pno);
		//response.sendRedirect("../revertMessage.jsp?messageID="+n);
		request.getRequestDispatcher("../revertMessage.jsp").forward(request, response);
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
