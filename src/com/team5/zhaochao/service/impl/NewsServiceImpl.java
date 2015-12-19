package com.team5.zhaochao.service.impl;

import java.util.ArrayList;
import java.util.List;

import com.team5.util.PageUtil;
import com.team5.zhaochao.bean.News;
import com.team5.zhaochao.dao.impl.NewsDaoImpl;
import com.team5.zhaochao.service.NewsService;
//新闻service类的实现类
public class NewsServiceImpl implements NewsService {
	NewsDaoImpl ndi = new  NewsDaoImpl();
	//添加新闻
	@Override
	public boolean newsAdd(News news) {
		boolean flag = ndi.newsAdd(news);
		return flag;
	}

	//展示新闻
	@Override
	public List<News> newsShow() {
		List<News> list = new ArrayList<News>();
		list = ndi.newsShow();
		return list;
	}

	//修改新闻
	@Override
	public boolean newsUpdate(News news) {
		return false;
	}

	//删除新闻
	@Override
	public boolean newsRemove(News news) {
		boolean flag = ndi.newsRemove(news);
		return flag;
	}
	
	  //根据页码和每页的容量来得到数据
	public PageUtil getPage(int pageNo,int pageSize){
		PageUtil page = ndi.getPage(pageNo, pageSize);
		return page;
	}
}
