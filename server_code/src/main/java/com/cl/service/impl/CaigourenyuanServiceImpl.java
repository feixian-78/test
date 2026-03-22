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


import com.cl.dao.CaigourenyuanDao;
import com.cl.entity.CaigourenyuanEntity;
import com.cl.service.CaigourenyuanService;
import com.cl.entity.view.CaigourenyuanView;

@Service("caigourenyuanService")
public class CaigourenyuanServiceImpl extends ServiceImpl<CaigourenyuanDao, CaigourenyuanEntity> implements CaigourenyuanService {

    	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<CaigourenyuanEntity> page = this.page(
                new Query<CaigourenyuanEntity>(params).getPage(),
                new QueryWrapper<CaigourenyuanEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<CaigourenyuanEntity> wrapper) {
		  Page<CaigourenyuanView> page =new Query<CaigourenyuanView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
	@Override
	public List<CaigourenyuanView> selectListView(Wrapper<CaigourenyuanEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public CaigourenyuanView selectView(Wrapper<CaigourenyuanEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}
	
	


}
