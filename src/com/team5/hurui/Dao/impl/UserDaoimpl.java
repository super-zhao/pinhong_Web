package com.team5.hurui.Dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.team5.hurui.Dao.UserDao;
import com.team5.hurui.bean.User;
import com.team5.util.DBManager;

public class UserDaoimpl implements UserDao {

	@Override
	public void add(User u) {
		// TODO Auto-generated method stub
		Connection conn=null;
		PreparedStatement pst=null;
	    try {
			conn=DBManager.getConnection();
			String sql="INSERT INTO user(username,password,register_date) VALUES(?,?,Now())";
			pst=conn.prepareStatement(sql);
			pst.setString(1, u.getUsername());
			pst.setString(2,u.getPassword());
			pst.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			DBManager.closeAll(null, pst, conn);
		}
	}

	@Override
	public boolean check(User u) {
		// TODO Auto-generated method stub
		boolean flg=false;
		Connection conn=null;
		PreparedStatement pst=null;
		ResultSet rs=null;
		try {
			conn=DBManager.getConnection();
			String sql="SELECT * FROM `user` where username=? and password=?";
			pst=conn.prepareStatement(sql);
			pst.setString(1, u.getUsername());
			pst.setString(2,u.getPassword());
			rs=pst.executeQuery();
			if(rs!=null&&rs.next()){
				flg=true;
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			DBManager.closeAll(rs, pst, conn);
		}
		return flg;
	}

}
