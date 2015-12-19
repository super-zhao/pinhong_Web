package com.team5.hurui.Dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.team5.hurui.Dao.ReplyDao;
import com.team5.hurui.bean.Reply;
import com.team5.util.DBManager;

public class ReplyDaoimpl implements ReplyDao {

	@Override
	public void add(Reply r) {
		// TODO Auto-generated method stub
		Connection conn=null;
		PreparedStatement pst=null;
	    try {
			conn=DBManager.getConnection();
			String sql="INSERT INTO reply(username,reply_title,reply_content,reply_date,message_id) VALUES(?,?,?,NOW(),?)";
			pst=conn.prepareStatement(sql);
			pst.setString(1, r.getUsername());
			pst.setString(2,r.getTitle());
			pst.setString(3,r.getContent());
			pst.setInt(4,r.getId());
			pst.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			DBManager.closeAll(null, pst, conn);
		}
	}

	@Override
	public List<Reply> selectAll(int n) {
		// TODO Auto-generated method stub
		Connection conn=null;
		PreparedStatement pst=null;
		List<Reply> replylist=null;
		ResultSet rs=null;
		try {
			replylist=new ArrayList<Reply>();
			conn=DBManager.getConnection();
			String sql="select reply_title,reply_content,username,reply_date From reply where message_id=? ORDER BY reply_date";
			pst=conn.prepareStatement(sql);
			pst.setInt(1, n);
			rs=pst.executeQuery();
			while(rs!=null&&rs.next()){
				Reply r=new Reply();
				r.setTitle(rs.getString(1));
				r.setContent(rs.getString(2));
				r.setUsername(rs.getString(3));
				r.setTime(rs.getTimestamp(4)+"");
				replylist.add(r);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}finally{
			DBManager.closeAll(rs, pst, conn);
		}
		return replylist;
	}

}
