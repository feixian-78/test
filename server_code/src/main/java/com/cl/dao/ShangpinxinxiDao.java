package com.cl.dao;

import com.cl.entity.ShangpinxinxiEntity;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.ShangpinxinxiView;


/**
 * 商品信息
 * 
 * @author 
 * @email 
 * @date 2025-02-19 14:42:17
 */
public interface ShangpinxinxiDao extends BaseMapper<ShangpinxinxiEntity> {
	
	List<ShangpinxinxiView> selectListView(@Param("ew") Wrapper<ShangpinxinxiEntity> wrapper);

	List<ShangpinxinxiView> selectListView(Page page,@Param("ew") Wrapper<ShangpinxinxiEntity> wrapper);
	
	ShangpinxinxiView selectView(@Param("ew") Wrapper<ShangpinxinxiEntity> wrapper);


    List<Map<String, Object>> selectValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<ShangpinxinxiEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<ShangpinxinxiEntity> wrapper);

    List<Map<String, Object>> selectGroup(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<ShangpinxinxiEntity> wrapper);



}
