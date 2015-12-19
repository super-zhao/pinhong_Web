package com.team5.zhaochao.dao;

import com.team5.zhaochao.bean.Administrator;

/**
 * 管理员的dao类
 * @author superzhao
 *
 */
public interface AdminDao {
	public boolean admin_Add(Administrator admin);  //添加管理员
	public boolean checkName(String str); //检查用户名是否重复
	public boolean checkValidity(String username,String password);//检查登录时账号和密码是否正确
	
}
