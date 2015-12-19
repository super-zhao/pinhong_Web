package com.team5.zhaochao.dao;

import java.util.List;

import com.team5.util.PageUtil;
import com.team5.zhaochao.bean.Product;
/**
 * 商品的dao类
 * @author superzhao
 *
 */
public interface ProDao {
	public boolean proAdd(Product pro);//添加商品
	public Product proUpdateForm(int pro_id);//修改商品前传值到表单中
	public boolean proUpdate(Product pro,int old_pro_id);//修改商品
	public List<Product> proShow();//展示所有商品
	public boolean proDelete(int pro_id); //删除商品
	public PageUtil getPage(int pageNo,int pageSize);  //根据页码和每页的容量来得到数据
	public boolean proAddWithFile(Product pro);  //使用commons.fileupload和commons.io来实现上传图片的添加商品方法,上一个图片不能添加到服务器中
}
