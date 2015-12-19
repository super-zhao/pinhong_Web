package com.team5.zhaochao.service;

import java.util.List;

import com.team5.util.PageUtil;
import com.team5.zhaochao.bean.News;
/**
 * 新闻的service接口类
 * @author superzhao
 *
 */
public interface NewsService {
	public boolean newsAdd(News news);//添加新闻
	public List<News> newsShow();//新闻的显示
	public boolean newsUpdate(News news);//新闻的修改
	public boolean newsRemove(News news);//新闻的删除
	public PageUtil getPage(int pageNo,int pageSize); //根据页码和每页的容量来得到数据
}
