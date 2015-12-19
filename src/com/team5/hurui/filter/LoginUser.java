package com.team5.hurui.filter;
import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginUser implements Filter{

	@Override
	public void destroy() {
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		HttpServletRequest rs=(HttpServletRequest) request;
		HttpServletResponse rp=(HttpServletResponse) response;
		HttpSession hs=rs.getSession();
		try {
			if(hs.getAttribute("uname")==null&hs.getAttribute("uname").equals("")){
				rp.sendRedirect("index.jsp");
				}
		} catch (Exception e) {
			// TODO: handle exception
			rp.sendRedirect("index.jsp");
		}
		chain.doFilter(rs, rp);
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		
	}

}

