package com.cl.dao;

import com.cl.entity.CangkuEntity;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.CangkuView;


/**
 * 仓库
 * 
 * @author 
 * @email 
 * @date 2025-02-19 14:42:17
 */
public interface CangkuDao extends BaseMapper<CangkuEntity> {
	
	List<CangkuView> selectListView(@Param("ew") Wrapper<CangkuEntity> wrapper);

	List<CangkuView> selectListView(Page page,@Param("ew") Wrapper<CangkuEntity> wrapper);
	
	CangkuView selectView(@Param("ew") Wrapper<CangkuEntity> wrapper);


}
