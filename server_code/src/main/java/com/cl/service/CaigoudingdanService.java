package com.cl.service;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.extension.service.IService;
import com.cl.utils.PageUtils;
import com.cl.entity.CaigoudingdanEntity;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.CaigoudingdanView;


/**
 * 采购订单
 *
 * @author 
 * @email 
 * @date 2025-02-19 14:42:17
 */
public interface CaigoudingdanService extends IService<CaigoudingdanEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<CaigoudingdanView> selectListView(Wrapper<CaigoudingdanEntity> wrapper);
   	
   	CaigoudingdanView selectView(@Param("ew") Wrapper<CaigoudingdanEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<CaigoudingdanEntity> wrapper);
   	
   
    List<Map<String, Object>> selectValue(Map<String, Object> params,Wrapper<CaigoudingdanEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(Map<String, Object> params,Wrapper<CaigoudingdanEntity> wrapper);

    List<Map<String, Object>> selectGroup(Map<String, Object> params,Wrapper<CaigoudingdanEntity> wrapper);



}

