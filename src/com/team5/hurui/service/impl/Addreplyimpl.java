package com.team5.hurui.service.impl;

import com.team5.hurui.Dao.impl.ReplyDaoimpl;
import com.team5.hurui.bean.Reply;
import com.team5.hurui.service.Addreply;

public class Addreplyimpl implements Addreply {

	@Override
	public void addreply(Reply r) {
		ReplyDaoimpl rd=new ReplyDaoimpl();
        rd.add(r);
	}

}
