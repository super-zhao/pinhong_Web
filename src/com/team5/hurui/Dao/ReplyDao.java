package com.team5.hurui.Dao;

import java.util.List;

import com.team5.hurui.bean.Reply;

public interface ReplyDao {
    public void add(Reply r);
    public List<Reply> selectAll(int n);
}
