package com.cl.service;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.extension.service.IService;
import com.cl.utils.PageUtils;
import com.cl.entity.ChukuxinxiEntity;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.ChukuxinxiView;


/**
 * 出库信息
 *
 * @author 
 * @email 
 * @date 2025-02-19 14:42:17
 */
public interface ChukuxinxiService extends IService<ChukuxinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ChukuxinxiView> selectListView(Wrapper<ChukuxinxiEntity> wrapper);
   	
   	ChukuxinxiView selectView(@Param("ew") Wrapper<ChukuxinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ChukuxinxiEntity> wrapper);
   	
   
}

