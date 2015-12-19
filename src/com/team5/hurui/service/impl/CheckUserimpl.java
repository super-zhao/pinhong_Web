package com.team5.hurui.service.impl;

import com.team5.hurui.Dao.impl.UserDaoimpl;
import com.team5.hurui.bean.User;
import com.team5.hurui.service.CheckUser;

public class CheckUserimpl implements CheckUser {

	@Override
	public boolean CheckUser(User u) {
		boolean flg=false;
		UserDaoimpl udi=new UserDaoimpl();
	    flg=udi.check(u);
		return flg;
	}

}
