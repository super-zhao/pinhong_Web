package com.team5.hurui.Dao;

import java.util.List;

import com.team5.hurui.bean.Dope;
import com.team5.util.PageUtil;

public interface DopeDao {
    public List<Dope> selectAll();
    public PageUtil getPage(int pageNo, int pageSize);
}
