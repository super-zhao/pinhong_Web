package com.team5.hurui.service.impl;

import java.util.List;

import com.team5.hurui.Dao.impl.ReplyDaoimpl;
import com.team5.hurui.bean.Reply;
import com.team5.hurui.service.Getreply;

public class Getreplyimpl implements Getreply {

	@Override
	public List<Reply> selectAll(int n) {
		ReplyDaoimpl rdi=new ReplyDaoimpl();
		List<Reply> replylist=rdi.selectAll(n);
		return replylist;
	}

}
