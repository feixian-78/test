package com.cl.dao;

import com.cl.entity.KehuEntity;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.KehuView;


/**
 * 客户
 * 
 * @author 
 * @email 
 * @date 2025-02-19 14:42:18
 */
public interface KehuDao extends BaseMapper<KehuEntity> {
	
	List<KehuView> selectListView(@Param("ew") Wrapper<KehuEntity> wrapper);

	List<KehuView> selectListView(Page page,@Param("ew") Wrapper<KehuEntity> wrapper);
	
	KehuView selectView(@Param("ew") Wrapper<KehuEntity> wrapper);


}
