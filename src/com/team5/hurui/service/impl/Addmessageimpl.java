package com.team5.hurui.service.impl;

import com.team5.hurui.Dao.impl.MessageDaoimpl;
import com.team5.hurui.bean.Message;
import com.team5.hurui.service.Addmessage;

public class Addmessageimpl implements Addmessage {

	@Override
	public void addmessage(Message m) {
		// TODO Auto-generated method stub
        MessageDaoimpl md=new MessageDaoimpl();
        md.add(m);
	}

}
