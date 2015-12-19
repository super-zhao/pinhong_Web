package com.team5.hurui.service.impl;

import com.team5.hurui.Dao.impl.MessageDaoimpl;
import com.team5.hurui.bean.Message;
import com.team5.hurui.service.Getmessage;

public class Getmessageimpl implements Getmessage {

	@Override
	public Message getMessage(int n) {
		MessageDaoimpl mil=new MessageDaoimpl();
		Message m=mil.get(n);
		return m;
	}

}
