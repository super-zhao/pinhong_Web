package com.team5.liuwei.service;

import java.util.List;

import com.team5.liuwei.bean.News;
import com.team5.util.PageUtil;

public interface NewsService  {
    List<News> selectAll();	
    News selectOne(int index);
    public PageUtil getPage(int pageNo,int pageSize); //根据页码和每页的容量来得到数据
}
