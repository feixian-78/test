package com.cl.dao;

import com.cl.entity.ConfigEntity;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.ConfigView;


/**
 * 轮播图
 * 
 * @author 
 * @email 
 * @date 2025-02-19 14:42:17
 */
public interface ConfigDao extends BaseMapper<ConfigEntity> {
	
	List<ConfigView> selectListView(@Param("ew") Wrapper<ConfigEntity> wrapper);

	List<ConfigView> selectListView(Page page,@Param("ew") Wrapper<ConfigEntity> wrapper);
	
	ConfigView selectView(@Param("ew") Wrapper<ConfigEntity> wrapper);


}
