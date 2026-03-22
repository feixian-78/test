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


import com.cl.dao.CangkuDao;
import com.cl.entity.CangkuEntity;
import com.cl.service.CangkuService;
import com.cl.entity.view.CangkuView;

@Service("cangkuService")
public class CangkuServiceImpl extends ServiceImpl<CangkuDao, CangkuEntity> implements CangkuService {

    	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<CangkuEntity> page = this.page(
                new Query<CangkuEntity>(params).getPage(),
                new QueryWrapper<CangkuEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<CangkuEntity> wrapper) {
		  Page<CangkuView> page =new Query<CangkuView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
	@Override
	public List<CangkuView> selectListView(Wrapper<CangkuEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public CangkuView selectView(Wrapper<CangkuEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}
	
	


}
