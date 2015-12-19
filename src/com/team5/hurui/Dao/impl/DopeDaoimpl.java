package com.team5.hurui.Dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.team5.hurui.Dao.DopeDao;
import com.team5.hurui.bean.Dope;
import com.team5.util.DBManager;
import com.team5.util.PageUtil;

public class DopeDaoimpl implements DopeDao {

	@Override
	public List<Dope> selectAll() {
		List<Dope> list=null;
		Connection conn=null;
		PreparedStatement pst=null;
		ResultSet rs=null;
		try {
			list=new ArrayList<Dope>();
		    conn=DBManager.getConnection();
		    String sql="select m.message_id,m.message_title,m.message_author,m.date,ifnull(count(r.reply_id),0) from message_board m LEFT JOIN reply r ON m.message_id=r.message_id GROUP BY m.message_id ORDER BY IFNULL(Max(r.reply_date),m.date) desc";
		    pst=conn.prepareStatement(sql);
		    rs=pst.executeQuery();
		    while(rs!=null&&rs.next()){
		    	Dope dop=new Dope();
		    	dop.setId(rs.getInt(1));
		    	dop.setTitle(rs.getString(2));
		    	dop.setUsername(rs.getString(3));
		    	dop.setTime(rs.getTimestamp(4)+"");
		    	dop.setNum(rs.getInt(5));
		    	list.add(dop);
		    }
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			DBManager.closeAll(rs, pst, conn);
		}
		return list;
	}

	@Override
	public PageUtil getPage(int pageNo, int pageSize) {
		// TODO Auto-generated method stub
		PageUtil page = null;
		//获取总条数
		String sql="select count(message_id) as totalCount from message_board";
		Connection conn=DBManager.getConnection();
		PreparedStatement st=null;
		ResultSet rs=null;
		try {
			st=conn.prepareStatement(sql);
			rs=st.executeQuery();
			//总记录数
			int totalCount=0;
			if(rs.next()){
				totalCount=rs.getInt(1); 
			
			}
			
			 page=new PageUtil(pageSize, totalCount);
			 sql="select m.message_id,m.message_title,m.message_author,m.date,ifnull(count(r.reply_id),0) from message_board m LEFT JOIN reply r ON m.message_id=r.message_id GROUP BY m.message_id ORDER BY IFNULL(Max(r.reply_date),m.date) desc  limit "+(pageNo-1)*pageSize+","+pageSize;
			// System.out.println("sql:"+sql);
			 st=conn.prepareStatement(sql);
			 rs=st.executeQuery();
			 //当前页的数据集合
			 List<Dope>  List=new ArrayList<Dope>();
			  while(rs!=null&&rs.next()){
			    	Dope dop=new Dope();
			    	dop.setId(rs.getInt(1));
			    	dop.setTitle(rs.getString(2));
			    	dop.setUsername(rs.getString(3));
			    	dop.setTime(rs.getTimestamp(4)+"");
			    	dop.setNum(rs.getInt(5));
			    	List.add(dop);
			    }
			  //当前页数据集合
			 page.setData(List);
			 //设置页码
			 page.setPageNo(pageNo);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			DBManager.closeAll(rs, st, conn);
		}
		
		
		return page;
	}
}
