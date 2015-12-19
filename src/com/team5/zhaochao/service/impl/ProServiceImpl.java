package com.team5.zhaochao.service.impl;

import java.util.List;

import com.team5.util.PageUtil;
import com.team5.zhaochao.bean.Product;
import com.team5.zhaochao.dao.impl.ProDaoImpl;
import com.team5.zhaochao.service.ProService;
/**
 * 商品的service的实现类
 * @author superzhao
 *
 */
public class ProServiceImpl implements ProService {
	
	ProDaoImpl pdi = new ProDaoImpl();
	//添加商品
	@Override
	public boolean proAdd(Product pro) {
		boolean flag = pdi.proAdd(pro);		
		return flag;
	}
	//更新商品
	@Override
	public boolean proUpdate(Product pro,int old_pro_id) {
		boolean flag = pdi.proUpdate(pro, old_pro_id);
		return flag;
	}
	//展示商品
	@Override
	public List<Product> proShow() {
		List<Product> list = pdi.proShow();
		return list;
	}
	//删除商品
	@Override
	public boolean proDelete(int pro_id) {
		boolean flag = pdi.proDelete(pro_id);
		return flag;
	}
	
	//修改商品前传值到表单中
	@Override
	public Product proUpdateForm(int pro_id) {
		Product pro = pdi.proUpdateForm(pro_id);
		return pro;
	}
	  //根据页码和每页的容量来得到数据
	public PageUtil getPage(int pageNo,int pageSize){
		PageUtil page = pdi.getPage(pageNo, pageSize);
		return page;
	}
	
	//使用commons.fileupload和commons.io来实现上传图片的添加商品方法
	@Override
	public boolean proAddWithFile(Product pro) {
		boolean flag = pdi.proAddWithFile(pro);
		return flag;
	}

}
