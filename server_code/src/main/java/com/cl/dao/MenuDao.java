package com.cl.dao;

import com.cl.entity.MenuEntity;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.MenuView;


/**
 * 菜单
 * 
 * @author 
 * @email 
 * @date 2025-02-19 14:42:18
 */
public interface MenuDao extends BaseMapper<MenuEntity> {
	
	List<MenuView> selectListView(@Param("ew") Wrapper<MenuEntity> wrapper);

	List<MenuView> selectListView(Page page,@Param("ew") Wrapper<MenuEntity> wrapper);
	
	MenuView selectView(@Param("ew") Wrapper<MenuEntity> wrapper);


}
