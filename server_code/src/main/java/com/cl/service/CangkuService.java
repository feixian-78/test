package com.cl.service;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.extension.service.IService;
import com.cl.utils.PageUtils;
import com.cl.entity.CangkuEntity;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.CangkuView;


/**
 * 仓库
 *
 * @author 
 * @email 
 * @date 2025-02-19 14:42:17
 */
public interface CangkuService extends IService<CangkuEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<CangkuView> selectListView(Wrapper<CangkuEntity> wrapper);
   	
   	CangkuView selectView(@Param("ew") Wrapper<CangkuEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<CangkuEntity> wrapper);
   	
   
}

