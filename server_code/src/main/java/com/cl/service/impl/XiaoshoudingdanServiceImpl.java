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


import com.cl.dao.XiaoshoudingdanDao;
import com.cl.entity.XiaoshoudingdanEntity;
import com.cl.service.XiaoshoudingdanService;
import com.cl.entity.view.XiaoshoudingdanView;

@Service("xiaoshoudingdanService")
public class XiaoshoudingdanServiceImpl extends ServiceImpl<XiaoshoudingdanDao, XiaoshoudingdanEntity> implements XiaoshoudingdanService {

    	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<XiaoshoudingdanEntity> page = this.page(
                new Query<XiaoshoudingdanEntity>(params).getPage(),
                new QueryWrapper<XiaoshoudingdanEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<XiaoshoudingdanEntity> wrapper) {
		  Page<XiaoshoudingdanView> page =new Query<XiaoshoudingdanView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
	@Override
	public List<XiaoshoudingdanView> selectListView(Wrapper<XiaoshoudingdanEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public XiaoshoudingdanView selectView(Wrapper<XiaoshoudingdanEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}
	
	

    @Override
    public List<Map<String, Object>> selectValue(Map<String, Object> params, Wrapper<XiaoshoudingdanEntity> wrapper) {
        return baseMapper.selectValue(params, wrapper);
    }

    @Override
    public List<Map<String, Object>> selectTimeStatValue(Map<String, Object> params, Wrapper<XiaoshoudingdanEntity> wrapper) {
        return baseMapper.selectTimeStatValue(params, wrapper);
    }

    @Override
    public List<Map<String, Object>> selectGroup(Map<String, Object> params, Wrapper<XiaoshoudingdanEntity> wrapper) {
        return baseMapper.selectGroup(params, wrapper);
    }




}
