package com.team5.hurui.test;

import com.team5.hurui.Dao.impl.UserDaoimpl;
import com.team5.hurui.bean.User;

public class Test {
   public static void main(String[] args) {
	User u=new User();
	u.setUsername("");
	u.setPassword("");
	UserDaoimpl udi=new UserDaoimpl();
	boolean flg=udi.check(u);
	System.out.println(flg);
}
}
