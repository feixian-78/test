package com.cl.dao;

import com.cl.entity.CaigoudingdanEntity;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.CaigoudingdanView;


/**
 * 采购订单
 * 
 * @author 
 * @email 
 * @date 2025-02-19 14:42:17
 */
public interface CaigoudingdanDao extends BaseMapper<CaigoudingdanEntity> {
	
	List<CaigoudingdanView> selectListView(@Param("ew") Wrapper<CaigoudingdanEntity> wrapper);

	List<CaigoudingdanView> selectListView(Page page,@Param("ew") Wrapper<CaigoudingdanEntity> wrapper);
	
	CaigoudingdanView selectView(@Param("ew") Wrapper<CaigoudingdanEntity> wrapper);


    List<Map<String, Object>> selectValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<CaigoudingdanEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<CaigoudingdanEntity> wrapper);

    List<Map<String, Object>> selectGroup(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<CaigoudingdanEntity> wrapper);



}
