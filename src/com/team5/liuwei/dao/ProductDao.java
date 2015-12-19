package com.team5.liuwei.dao;

import java.util.List;

import com.team5.liuwei.bean.Product;

public interface ProductDao {
	List<Product> selectAll();
	public com.team5.util.PageUtil getPage(int pageNo,int pageSize);  //根据页码和每页的容量来得到数据
}
