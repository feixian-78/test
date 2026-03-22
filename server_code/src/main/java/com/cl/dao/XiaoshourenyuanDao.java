package com.cl.dao;

import com.cl.entity.XiaoshourenyuanEntity;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.XiaoshourenyuanView;


/**
 * 销售人员
 * 
 * @author 
 * @email 
 * @date 2025-02-19 14:42:17
 */
public interface XiaoshourenyuanDao extends BaseMapper<XiaoshourenyuanEntity> {
	
	List<XiaoshourenyuanView> selectListView(@Param("ew") Wrapper<XiaoshourenyuanEntity> wrapper);

	List<XiaoshourenyuanView> selectListView(Page page,@Param("ew") Wrapper<XiaoshourenyuanEntity> wrapper);
	
	XiaoshourenyuanView selectView(@Param("ew") Wrapper<XiaoshourenyuanEntity> wrapper);


}
