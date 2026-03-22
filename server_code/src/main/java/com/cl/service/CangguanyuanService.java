package com.cl.service;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.extension.service.IService;
import com.cl.utils.PageUtils;
import com.cl.entity.CangguanyuanEntity;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.CangguanyuanView;


/**
 * 仓管员
 *
 * @author 
 * @email 
 * @date 2025-02-19 14:42:17
 */
public interface CangguanyuanService extends IService<CangguanyuanEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<CangguanyuanView> selectListView(Wrapper<CangguanyuanEntity> wrapper);
   	
   	CangguanyuanView selectView(@Param("ew") Wrapper<CangguanyuanEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<CangguanyuanEntity> wrapper);
   	
   
}

