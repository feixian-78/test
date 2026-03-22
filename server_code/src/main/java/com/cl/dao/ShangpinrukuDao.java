package com.cl.dao;

import com.cl.entity.ShangpinrukuEntity;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.ShangpinrukuView;


/**
 * 商品入库
 * 
 * @author 
 * @email 
 * @date 2025-02-19 14:42:17
 */
public interface ShangpinrukuDao extends BaseMapper<ShangpinrukuEntity> {
	
	List<ShangpinrukuView> selectListView(@Param("ew") Wrapper<ShangpinrukuEntity> wrapper);

	List<ShangpinrukuView> selectListView(Page page,@Param("ew") Wrapper<ShangpinrukuEntity> wrapper);
	
	ShangpinrukuView selectView(@Param("ew") Wrapper<ShangpinrukuEntity> wrapper);


}
