package com.team5.liuwei.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.team5.liuwei.bean.Product;
import com.team5.liuwei.dao.ProductDao;
import com.team5.util.DBManager;
import com.team5.util.PageUtil;

public class ProductDaoImpl implements ProductDao {

	public List<Product> selectAll() {
		List<Product> prolist = null;
		String sql = "select * from product order by pro_id";
		Connection conn = DBManager.getConnection();
		PreparedStatement st = null;
		ResultSet res = null;
		try {
			st = conn.prepareStatement(sql);
			res = st.executeQuery();
			prolist = new ArrayList<Product>();
			while(res!=null&&res.next()){
				Product pro = new Product();
				pro.setPro_id(res.getInt(1));
				pro.setPro_name(res.getString(2));
				pro.setPro_brand(res.getString(3));
				pro.setPro_version(res.getString(4));
				pro.setPro_price(res.getDouble(5));
				pro.setPro_image(res.getString(6));
				pro.setPro_introduce(res.getString(7));
				prolist.add(pro);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBManager.closeAll(res, st, conn);
		}
		return prolist;
	}
	//分页
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
				ps = conn.prepareStatement("select * from product limit " + (pageNo-1)*pageSize+","+pageSize);
				rs = ps.executeQuery();
				while(rs.next()){
					Product pro = new Product();
					pro.setPro_id(rs.getInt(1));
					pro.setPro_name(rs.getString(2));
					pro.setPro_brand(rs.getString(3));
					pro.setPro_version(rs.getString(4));
					pro.setPro_price(rs.getDouble(5));
					pro.setPro_image(rs.getString(6));
					pro.setPro_introduce(rs.getString(7));
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

}
