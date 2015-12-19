package com.team5.hurui.service;

import java.util.List;

import com.team5.hurui.bean.Dope;
import com.team5.util.PageUtil;

public interface Getdopeall {
    public List<Dope> selectAll();
    public PageUtil getPage(int pageNo, int pageSize);
}
