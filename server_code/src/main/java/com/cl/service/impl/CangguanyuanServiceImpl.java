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


import com.cl.dao.CangguanyuanDao;
import com.cl.entity.CangguanyuanEntity;
import com.cl.service.CangguanyuanService;
import com.cl.entity.view.CangguanyuanView;

@Service("cangguanyuanService")
public class CangguanyuanServiceImpl extends ServiceImpl<CangguanyuanDao, CangguanyuanEntity> implements CangguanyuanService {

    	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<CangguanyuanEntity> page = this.page(
                new Query<CangguanyuanEntity>(params).getPage(),
                new QueryWrapper<CangguanyuanEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<CangguanyuanEntity> wrapper) {
		  Page<CangguanyuanView> page =new Query<CangguanyuanView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
	@Override
	public List<CangguanyuanView> selectListView(Wrapper<CangguanyuanEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public CangguanyuanView selectView(Wrapper<CangguanyuanEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}
	
	


}
