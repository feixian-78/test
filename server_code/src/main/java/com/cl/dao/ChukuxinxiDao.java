package com.cl.dao;

import com.cl.entity.ChukuxinxiEntity;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.ChukuxinxiView;


/**
 * 出库信息
 * 
 * @author 
 * @email 
 * @date 2025-02-19 14:42:17
 */
public interface ChukuxinxiDao extends BaseMapper<ChukuxinxiEntity> {
	
	List<ChukuxinxiView> selectListView(@Param("ew") Wrapper<ChukuxinxiEntity> wrapper);

	List<ChukuxinxiView> selectListView(Page page,@Param("ew") Wrapper<ChukuxinxiEntity> wrapper);
	
	ChukuxinxiView selectView(@Param("ew") Wrapper<ChukuxinxiEntity> wrapper);


}
