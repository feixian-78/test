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


import com.cl.dao.CaigoudingdanDao;
import com.cl.entity.CaigoudingdanEntity;
import com.cl.service.CaigoudingdanService;
import com.cl.entity.view.CaigoudingdanView;

@Service("caigoudingdanService")
public class CaigoudingdanServiceImpl extends ServiceImpl<CaigoudingdanDao, CaigoudingdanEntity> implements CaigoudingdanService {

    	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<CaigoudingdanEntity> page = this.page(
                new Query<CaigoudingdanEntity>(params).getPage(),
                new QueryWrapper<CaigoudingdanEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<CaigoudingdanEntity> wrapper) {
		  Page<CaigoudingdanView> page =new Query<CaigoudingdanView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
	@Override
	public List<CaigoudingdanView> selectListView(Wrapper<CaigoudingdanEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public CaigoudingdanView selectView(Wrapper<CaigoudingdanEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}
	
	

    @Override
    public List<Map<String, Object>> selectValue(Map<String, Object> params, Wrapper<CaigoudingdanEntity> wrapper) {
        return baseMapper.selectValue(params, wrapper);
    }

    @Override
    public List<Map<String, Object>> selectTimeStatValue(Map<String, Object> params, Wrapper<CaigoudingdanEntity> wrapper) {
        return baseMapper.selectTimeStatValue(params, wrapper);
    }

    @Override
    public List<Map<String, Object>> selectGroup(Map<String, Object> params, Wrapper<CaigoudingdanEntity> wrapper) {
        return baseMapper.selectGroup(params, wrapper);
    }




}
