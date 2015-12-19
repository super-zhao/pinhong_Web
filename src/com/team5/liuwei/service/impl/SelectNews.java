package com.team5.liuwei.service.impl;

import java.util.List;

import com.team5.liuwei.bean.News;
import com.team5.liuwei.dao.impl.NewsDaoImpl;
import com.team5.liuwei.service.NewsService;
import com.team5.util.PageUtil;

public class SelectNews implements NewsService{
//获取所有新闻信息
	public List<News> selectAll() {
		NewsDaoImpl news = new NewsDaoImpl();
		List<News> allnews = news.selectAll();
		return allnews;
	}

	
	//获取某条新闻信息
	public News selectOne(int index) {
			NewsDaoImpl news = new NewsDaoImpl();
			List<News> allnews = news.selectAll();
			News onenews = null;
			for(int i=0;i<allnews.size();i++){
				if(index==allnews.get(i).getNews_id()){
					onenews = allnews.get(i);
					break;
				}
			}
			return onenews;
	}
	
	//根据页码和每页的容量来得到数据
		public PageUtil getPage(int pageNo,int pageSize){
			NewsDaoImpl news = new NewsDaoImpl();
			PageUtil page = news.getPage(pageNo, pageSize);
			return page;
		}
	
}

