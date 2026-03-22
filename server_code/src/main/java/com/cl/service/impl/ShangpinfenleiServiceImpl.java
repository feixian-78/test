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


import com.cl.dao.ShangpinfenleiDao;
import com.cl.entity.ShangpinfenleiEntity;
import com.cl.service.ShangpinfenleiService;
import com.cl.entity.view.ShangpinfenleiView;

@Service("shangpinfenleiService")
public class ShangpinfenleiServiceImpl extends ServiceImpl<ShangpinfenleiDao, ShangpinfenleiEntity> implements ShangpinfenleiService {

    	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ShangpinfenleiEntity> page = this.page(
                new Query<ShangpinfenleiEntity>(params).getPage(),
                new QueryWrapper<ShangpinfenleiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ShangpinfenleiEntity> wrapper) {
		  Page<ShangpinfenleiView> page =new Query<ShangpinfenleiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
	@Override
	public List<ShangpinfenleiView> selectListView(Wrapper<ShangpinfenleiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ShangpinfenleiView selectView(Wrapper<ShangpinfenleiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}
	
	


}
