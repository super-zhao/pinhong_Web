package com.team5.hurui.service.impl;

import com.team5.hurui.Dao.impl.UserDaoimpl;
import com.team5.hurui.bean.User;
import com.team5.hurui.service.AddUser;

public class AddUserimpl implements AddUser{

	@Override
	public void addUser(User u) {
		// TODO Auto-generated method stub
		UserDaoimpl udi=new UserDaoimpl();
		udi.add(u);
	}

}
