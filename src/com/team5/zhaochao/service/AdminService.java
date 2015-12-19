package com.team5.zhaochao.service;

import com.team5.zhaochao.bean.Administrator;
/**
 * 用户的service类
 * @author superzhao
 *
 */
public interface AdminService {
	public boolean admin_Add(Administrator admin);  //添加管理员
	public boolean checkName(String str); //检查管理员的用户名是否存在
	public boolean checkValidity(String username,String password);//检查登录时账号和密码是否正确
}
