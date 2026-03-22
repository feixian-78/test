package com.cl.dao;

import com.cl.entity.CangguanyuanEntity;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.CangguanyuanView;


/**
 * 仓管员
 * 
 * @author 
 * @email 
 * @date 2025-02-19 14:42:17
 */
public interface CangguanyuanDao extends BaseMapper<CangguanyuanEntity> {
	
	List<CangguanyuanView> selectListView(@Param("ew") Wrapper<CangguanyuanEntity> wrapper);

	List<CangguanyuanView> selectListView(Page page,@Param("ew") Wrapper<CangguanyuanEntity> wrapper);
	
	CangguanyuanView selectView(@Param("ew") Wrapper<CangguanyuanEntity> wrapper);


}
