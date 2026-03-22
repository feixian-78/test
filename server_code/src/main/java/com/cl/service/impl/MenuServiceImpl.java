package com.cl.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.cl.utils.PageUtils;
import com.cl.utils.Query;


import com.cl.dao.MenuDao;
import com.cl.entity.MenuEntity;
import com.cl.service.MenuService;
import com.cl.entity.view.MenuView;

@Service("menuService")
public class MenuServiceImpl extends ServiceImpl<MenuDao, MenuEntity> implements MenuService {

    	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<MenuEntity> page = this.page(
                new Query<MenuEntity>(params).getPage(),
                new QueryWrapper<MenuEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<MenuEntity> wrapper) {
		  Page<MenuView> page =new Query<MenuView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
	@Override
	public List<MenuView> selectListView(Wrapper<MenuEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public MenuView selectView(Wrapper<MenuEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}
	
	


}
