package com.team5.zhaochao.dao;

import java.util.List;

import com.team5.zhaochao.bean.News;

/**
 * 新闻的dao类
 * @author superzhao
 *
 */
public interface NewsDao {
	public boolean newsAdd(News news);//添加新闻
	public List<News> newsShow();//新闻的显示
	public boolean newsUpdate(News news);//新闻的修改
	public boolean newsRemove(News news);//新闻的删除
	public com.team5.util.PageUtil getPage(int pageNo,int pageSize);  //根据页码和每页的容量来得到数据
}
