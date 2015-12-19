package com.team5.hurui.filter;

import java.io.IOException;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team5.hurui.bean.Dope;
import com.team5.hurui.service.impl.Getdopeallimpl;
import com.team5.util.PageUtil;

public class IndexFilter implements Filter {

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1,
			FilterChain arg2) throws IOException, ServletException {
		HttpServletRequest request=(HttpServletRequest)arg0;
		HttpServletResponse response=(HttpServletResponse)arg1;
		request.setCharacterEncoding("UTF-8");
		response.setContentType("UTF-8");
		Getdopeallimpl gdi=new Getdopeallimpl();
		//PageUtil pu=gdi.getPage(pageNo, pageSize);
		String as=request.getParameter("pageNo");
		int pno;
		if(as==null&&as.equals("")){
			pno=0;
		}else{
			pno=Integer.parseInt(as);
		}
		PageUtil pb=gdi.getPage(pno, 5);
		//List<Dope> list=gdi.selectAll();
		request.setAttribute("pb", pb);
		//request.setAttribute("",);
		arg2.doFilter(request, response);
		// TODO Auto-generated method stub
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub

	}

}
