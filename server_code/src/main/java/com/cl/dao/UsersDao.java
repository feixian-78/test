package com.cl.dao;

import com.cl.entity.UsersEntity;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.UsersView;


/**
 * 管理员
 * 
 * @author 
 * @email 
 * @date 2025-02-19 14:42:17
 */
public interface UsersDao extends BaseMapper<UsersEntity> {
	
	List<UsersView> selectListView(@Param("ew") Wrapper<UsersEntity> wrapper);

	List<UsersView> selectListView(Page page,@Param("ew") Wrapper<UsersEntity> wrapper);
	
	UsersView selectView(@Param("ew") Wrapper<UsersEntity> wrapper);


}
