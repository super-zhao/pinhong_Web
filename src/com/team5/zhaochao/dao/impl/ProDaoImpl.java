package com.team5.zhaochao.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.team5.util.DBManager;
import com.team5.util.PageUtil;
import com.team5.zhaochao.bean.Product;
import com.team5.zhaochao.dao.ProDao;
/**
 * 商品dao类的实现类
 * @author superzhao
 *
 */
public class ProDaoImpl implements ProDao {
	//添加商品信息
	@Override
	public boolean proAdd(Product pro) {
		Connection conn = DBManager.getConnection();
		PreparedStatement ps = null;
		boolean flag = false;
		try {
			ps = conn.prepareStatement("insert into product values(?,?,?,?,?,?,?)");
			ps.setInt(1, pro.getPro_id());
			ps.setString(2, pro.getPro_name());
			ps.setString(3, pro.getPro_brand());
			ps.setString(4, pro.getPro_version());
			ps.setLong(5, pro.getPro_price());
			ps.setString(6, pro.getPro_image());
			ps.setString(7, pro.getPro_introduce());
			int row = ps.executeUpdate();
			if(row>0){
				flag = true;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBManager.closeAll(null, ps, conn);
		}	
		return flag;

	}
	

	
	//更新商品信息
	@Override
	public boolean proUpdate(Product pro,int old_pro_id) {
		Connection conn = DBManager.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		boolean flag = false;
		try {
			int pro_id = pro.getPro_id();
			if(old_pro_id == pro_id){
				ps = conn.prepareStatement("update product set pro_name = ?,pro_brand = ?,"
						+ "pro_version = ?,pro_price = ?,pro_image = ?,pro_introduce = ? where pro_id = ?");
				ps.setString(1, pro.getPro_name());
				ps.setString(2, pro.getPro_brand());
				ps.setString(3, pro.getPro_version());
				ps.setLong(4, pro.getPro_price());
				ps.setString(5, pro.getPro_image());
				ps.setString(6, pro.getPro_introduce());
				ps.setInt(7,pro_id );
				int row = ps.executeUpdate();
				if(row>0){
					flag = true;
				}
			}else{
				ps = conn.prepareStatement("delete from product where pro_id = ?");
				ps.setInt(1, old_pro_id);
				ps.execute();
				flag = this.proAdd(pro);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		
		
		return flag;
	}
	//显示商品信息
	@Override
	public List<Product> proShow() {
		List<Product> list = new ArrayList<Product>();
		Connection conn = DBManager.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			ps = conn.prepareStatement("select * from product");
			rs = ps.executeQuery();
			while(rs.next()){
				Product pro = new Product();
				pro.setPro_id(rs.getInt(1));
				pro.setPro_name(rs.getString(2));
				pro.setPro_brand(rs.getString(3));
				pro.setPro_version(rs.getString(4));
				pro.setPro_price(rs.getLong(5));
				pro.setPro_image(rs.getString(6));
				pro.setPro_introduce(rs.getString(7));
				list.add(pro);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBManager.closeAll(rs, ps, conn);
		}
		return list;
	}
	//删除商品信息
	@Override
	public boolean proDelete(int pro_id) {
		Connection conn = DBManager.getConnection();
		PreparedStatement ps = null;
		boolean flag = false;
		try {
			ps = conn.prepareStatement("delete from product where pro_id = ?");
			ps.setInt(1,pro_id );
			if(ps.executeUpdate()>0){  //返回执行成功的条数
				flag = true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBManager.closeAll(null, ps, conn);
		}	
		return flag;
	}


	//修改商品前传值到表单中
	@Override
	public Product proUpdateForm(int pro_id) {
		Connection conn = DBManager.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		boolean flag = false;
		Product pro = new Product();
		try {
			ps = conn.prepareStatement("select * from product where pro_id = ?");
			ps.setInt(1, pro_id);
			rs = ps.executeQuery();
			if(rs.next()){
				pro.setPro_id(rs.getInt(1));
				pro.setPro_name(rs.getString(2));
				pro.setPro_brand(rs.getString(3));
				pro.setPro_version(rs.getString(4));
				pro.setPro_price(rs.getLong(5));
				pro.setPro_image(rs.getString(6));
				pro.setPro_introduce(rs.getString(7));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

			return pro;
			
	}


	//根据页码和每页的容量来得到数据
	@Override
	public PageUtil getPage(int pageNo, int pageSize) {
		Connection conn = DBManager.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<Product> list = new ArrayList<Product>();
		PageUtil page = null;
		try {
			//获取总数据条数
			int totalCount = 0; 
			ps = conn.prepareStatement("select count(pro_id) from product");
			rs = ps.executeQuery();
			while(rs.next()){
				totalCount = rs.getInt(1);
			}
			ps = conn.prepareStatement("select pro_id,pro_name,pro_brand,pro_version,pro_price from product limit " + (pageNo-1)*pageSize+","+pageSize);
			rs = ps.executeQuery();
			while(rs.next()){
				Product pro = new Product();
				pro.setPro_id(rs.getInt(1));
				pro.setPro_name(rs.getString(2));
				pro.setPro_brand(rs.getString(3));
				pro.setPro_version(rs.getString(4));
				pro.setPro_price(rs.getLong(5));
				list.add(pro);
			}
			page = new PageUtil(pageSize, totalCount);
			page.setData(list);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBManager.closeAll(rs, ps, conn);
		}
		
		
		return page;
	}


	//使用commons.fileupload和commons.io来实现上传图片的添加商品方法
	@Override
	public boolean proAddWithFile(Product pro) {
		Connection conn = DBManager.getConnection();
		PreparedStatement ps = null;
		boolean flag = false;
		try {
			ps = conn.prepareStatement("insert into product values(?,?,?,?,?,?,?)");
			ps.setInt(1, pro.getPro_id());
			ps.setString(2, pro.getPro_name());
			ps.setString(3, pro.getPro_brand());
			ps.setString(4, pro.getPro_version());
			ps.setLong(5, pro.getPro_price());
			ps.setString(6, pro.getPro_image());
			ps.setString(7, pro.getPro_introduce());
			int row = ps.executeUpdate();
			if(row>0){
				flag = true;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBManager.closeAll(null, ps, conn);
		}	
		return flag;

	}

}
