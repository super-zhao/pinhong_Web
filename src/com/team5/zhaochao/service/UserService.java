package com.team5.zhaochao.service;

import java.util.List;

import com.team5.util.PageUtil;
import com.team5.zhaochao.bean.User;

public interface UserService {
	public boolean userAdd(User user); //添加用户
	public boolean userRemove(int user_id);  //删除用户
	public List<User> userShow();  //显示所有用户
	//public boolean userUpdate(); //修改用户信息
	public PageUtil getPage(int pageNo,int pageSize); //根据页码和每页的容量来得到数据
}
