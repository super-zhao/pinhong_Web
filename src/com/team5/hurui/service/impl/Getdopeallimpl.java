package com.team5.hurui.service.impl;

import java.util.List;

import com.team5.hurui.Dao.impl.DopeDaoimpl;
import com.team5.hurui.bean.Dope;
import com.team5.hurui.service.Getdopeall;
import com.team5.util.PageUtil;

public class Getdopeallimpl implements Getdopeall {
    private DopeDaoimpl ddi=new DopeDaoimpl();
	@Override
	public List<Dope> selectAll() {
		List<Dope> list=ddi.selectAll();
		return list;
	}

	@Override
	public PageUtil getPage(int pageNo, int pageSize) {
		// TODO Auto-generated method stub
		return ddi.getPage(pageNo, pageSize);
	}

}
