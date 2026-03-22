package com.cl.service;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.extension.service.IService;
import com.cl.utils.PageUtils;
import com.cl.entity.KehuEntity;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.KehuView;


/**
 * 客户
 *
 * @author 
 * @email 
 * @date 2025-02-19 14:42:18
 */
public interface KehuService extends IService<KehuEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<KehuView> selectListView(Wrapper<KehuEntity> wrapper);
   	
   	KehuView selectView(@Param("ew") Wrapper<KehuEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<KehuEntity> wrapper);
   	
   
}

