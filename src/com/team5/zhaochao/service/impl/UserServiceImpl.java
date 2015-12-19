package com.team5.zhaochao.service.impl;

import java.util.ArrayList;
import java.util.List;

import com.team5.util.PageUtil;
import com.team5.zhaochao.bean.User;
import com.team5.zhaochao.dao.impl.UserDaoImpl;
import com.team5.zhaochao.service.UserService;
/**
 * 用户的service类的实现类
 * @author superzhao
 *
 */
public class UserServiceImpl implements UserService {
	UserDaoImpl udi = new UserDaoImpl();
	
	//添加用户
	@Override
	public boolean userAdd(User user) {
		return false;
	}
	//删除用户
	@Override
	public boolean userRemove(int user_id) {
		boolean flag = udi.userRemove(user_id);
		return flag;
	}

	//显示所有用户
	@Override
	public List<User> userShow() {
		List<User> list = new ArrayList<User>();
		list = udi.userShow();
		return list;
	}

	 //根据页码和每页的容量来得到数据
	public PageUtil getPage(int pageNo,int pageSize){
		PageUtil page = udi.getPage(pageNo, pageSize);
		return page;
	}

}
