package com.team5.zhaochao.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.team5.util.DBManager;
import com.team5.zhaochao.bean.Administrator;
import com.team5.zhaochao.dao.AdminDao;


/**
 * Administrator  dao 的实现类
 * @author superzhao
 *
 */
public class AdminDaoImpl implements AdminDao {

	//添加用户名
	@Override
	public boolean admin_Add(Administrator admin) {
		Connection conn = DBManager.getConnection();
		PreparedStatement ps = null;
		boolean flag = false;
		try {
			ps = conn.prepareStatement("insert into administrator(username,password) values(?,?)"); 
			ps.setString(1, admin.getUsername());
			ps.setString(2, admin.getPassword());
			int row = ps.executeUpdate();
			if(row>0){
				flag = true; //代表数据库中有被影响的行
			}
					
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBManager.closeAll(null, ps, conn);//关闭数据库
		}
		
		return flag;
	}

	//检查用户名是否重复
	@Override
	public boolean checkName(String str) {
		boolean flag  = true;
		Connection conn = DBManager.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			ps = conn.prepareStatement("select * from administrator where username = ?");
			ps.setString(1, str);
			rs = ps.executeQuery();
			if(!rs.next()){
				flag = false;//代表数据库表中没有这个用户名
			}else{
				flag = true;//代表数据库中存在这个用户名
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBManager.closeAll(rs, ps, conn); //关闭数据库
		}
		return flag; 
	}

	//管理员登录,检查用户名和密码的正确性
	public boolean checkValidity(String username,String password ) {
		boolean flag = false;
		Connection conn = DBManager.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			ps = conn.prepareStatement("select password from administrator where username = ?");
			ps.setString(1, username);
			rs = ps.executeQuery();
			if(rs.next()){
				if(password.equals(rs.getString(1))){
					flag = true;
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return flag;
	}

}
