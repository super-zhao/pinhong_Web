package com.team5.hurui.Dao;

import com.team5.hurui.bean.User;

public interface UserDao {
    public void add(User u);
    public boolean check(User u);
}
