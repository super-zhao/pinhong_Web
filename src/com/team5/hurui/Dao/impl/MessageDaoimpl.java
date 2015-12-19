package com.team5.hurui.Dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.team5.hurui.Dao.MessageDao;
import com.team5.hurui.bean.Message;
import com.team5.util.DBManager;

public class MessageDaoimpl implements MessageDao {

	@Override
	public void add(Message m) {
		// TODO Auto-generated method stub
        Connection conn=null;
        PreparedStatement pst=null;
        try {
			conn=DBManager.getConnection();
			String sql="INSERT INTO message_board (message_title,message_author,message_content,date) VALUES(?,?,?,Now())";
			pst=conn.prepareStatement(sql);
			pst.setString(1,m.getTitle());
			pst.setString(2, m.getAuthor());
			pst.setString(3,m.getContent());
			pst.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			DBManager.closeAll(null, pst, conn);
		}
	}

	@Override
	public Message get(int n) {
		// TODO Auto-generated method stub
		Connection conn=null;
		PreparedStatement pst=null;
		ResultSet rs=null;
		Message m=new Message();
		try {
			conn=DBManager.getConnection();
			String sql="select message_title,message_content,message_author,date FROM message_board WHERE message_id=?";
			pst=conn.prepareStatement(sql);
			pst.setInt(1, n);
			rs=pst.executeQuery();
			while(rs!=null&&rs.next()){
				m.setTitle(rs.getString(1));
				m.setContent(rs.getString(2));
				m.setAuthor(rs.getString(3));
				m.setTime(rs.getTimestamp(4)+"");
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			DBManager.closeAll(rs,pst,conn);
		}
		return m;
	}
    public static void main(String[] args) {
		MessageDaoimpl mdi=new MessageDaoimpl();
		Message m=mdi.get(1);
		System.out.print(m.getTitle());
	}
}
