package com.team5.zhaochao.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Encoding implements Filter {

	@Override
	public void doFilter(ServletRequest req, ServletResponse res,
			FilterChain chain) throws IOException, ServletException {
				HttpServletRequest request = (HttpServletRequest)req;
				HttpServletResponse response = (HttpServletResponse) res;
				request.setCharacterEncoding("UTF-8");
				response.setContentType("text/html;charset=UTF-8");
				chain.doFilter(req, res);
	}

	@Override
	public void destroy() {
		
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		
	}

}
