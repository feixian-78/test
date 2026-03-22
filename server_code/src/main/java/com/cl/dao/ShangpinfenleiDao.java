package com.cl.dao;

import com.cl.entity.ShangpinfenleiEntity;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.ShangpinfenleiView;


/**
 * 商品分类
 * 
 * @author 
 * @email 
 * @date 2025-02-19 14:42:17
 */
public interface ShangpinfenleiDao extends BaseMapper<ShangpinfenleiEntity> {
	
	List<ShangpinfenleiView> selectListView(@Param("ew") Wrapper<ShangpinfenleiEntity> wrapper);

	List<ShangpinfenleiView> selectListView(Page page,@Param("ew") Wrapper<ShangpinfenleiEntity> wrapper);
	
	ShangpinfenleiView selectView(@Param("ew") Wrapper<ShangpinfenleiEntity> wrapper);


}
