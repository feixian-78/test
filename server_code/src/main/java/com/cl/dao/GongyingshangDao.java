package com.cl.dao;

import com.cl.entity.GongyingshangEntity;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.GongyingshangView;


/**
 * 供应商
 * 
 * @author 
 * @email 
 * @date 2025-02-19 14:42:17
 */
public interface GongyingshangDao extends BaseMapper<GongyingshangEntity> {
	
	List<GongyingshangView> selectListView(@Param("ew") Wrapper<GongyingshangEntity> wrapper);

	List<GongyingshangView> selectListView(Page page,@Param("ew") Wrapper<GongyingshangEntity> wrapper);
	
	GongyingshangView selectView(@Param("ew") Wrapper<GongyingshangEntity> wrapper);


}
