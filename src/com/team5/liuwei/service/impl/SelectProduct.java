package com.team5.liuwei.service.impl;

import java.util.List;

import com.team5.liuwei.bean.Product;
import com.team5.liuwei.dao.impl.NewsDaoImpl;
import com.team5.liuwei.dao.impl.ProductDaoImpl;
import com.team5.liuwei.service.ProductService;
import com.team5.util.PageUtil;

public class SelectProduct implements ProductService {

	public List<Product> selectAll() {
		ProductDaoImpl pro = new ProductDaoImpl();
		List<Product> allpro = pro.selectAll();
		return allpro;
	}

	public Product selectOne(int index) {
		ProductDaoImpl pro = new ProductDaoImpl();
		List<Product> allpro = pro.selectAll();
		Product onepro = null;
		for(int i=0;i<allpro.size();i++){
			if(index==(allpro.get(i).getPro_id())){
				onepro = allpro.get(i);
				break;
			}
		}
		return onepro;
	}
	//根据页码和每页的容量来得到数据
			public PageUtil getPage(int pageNo,int pageSize){
				ProductDaoImpl pro = new ProductDaoImpl();
				PageUtil page = pro.getPage(pageNo, pageSize);
				return page;
			}
}
