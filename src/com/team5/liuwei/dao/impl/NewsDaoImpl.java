package com.team5.liuwei.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.team5.liuwei.bean.News;
import com.team5.liuwei.dao.NewsDao;
import com.team5.util.DBManager;
import com.team5.util.PageUtil;

 public class NewsDaoImpl implements NewsDao {

	public List<News> selectAll(){
		List<News> list = null;
		String sql = "select * from news order by news_date desc";
		Connection conn = DBManager.getConnection();
		PreparedStatement st = null;
		ResultSet res = null;
		try {
			st = conn.prepareStatement(sql);
			res = st.executeQuery();
			list = new ArrayList<News>();
			while(res!=null&&res.next()){
				News news = new News();
				news.setNews_title(res.getString(1));
				news.setNews_date(res.getDate(2));
				news.setNews_content(res.getString(3));
				news.setNews_id(res.getInt(4));
				list.add(news);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			DBManager.closeAll(res, st, conn);
		}
		return list;
	}
	//分页
	@Override
	public PageUtil getPage(int pageNo, int pageSize) {
		Connection conn = DBManager.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<News> list = new ArrayList<News>();
		PageUtil page = null;
		try {
			//获取总数据条数
			int totalCount = 0; 
			ps = conn.prepareStatement("select count(news_id) from news");
			rs = ps.executeQuery();
			while(rs.next()){
				totalCount = rs.getInt(1);
			}
			ps = conn.prepareStatement("select news_id,news_title,news_date from news limit " + (pageNo-1)*pageSize+","+pageSize);
			rs = ps.executeQuery();
			while(rs.next()){
				News news = new News();
				news.setNews_id(rs.getInt(1));
				news.setNews_title(rs.getString(2));
				news.setNews_date(rs.getDate(3));
				list.add(news);
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
