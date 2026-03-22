package com.cl.service;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.extension.service.IService;
import com.cl.utils.PageUtils;
import com.cl.entity.XiaoshourenyuanEntity;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.XiaoshourenyuanView;


/**
 * 销售人员
 *
 * @author 
 * @email 
 * @date 2025-02-19 14:42:17
 */
public interface XiaoshourenyuanService extends IService<XiaoshourenyuanEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<XiaoshourenyuanView> selectListView(Wrapper<XiaoshourenyuanEntity> wrapper);
   	
   	XiaoshourenyuanView selectView(@Param("ew") Wrapper<XiaoshourenyuanEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<XiaoshourenyuanEntity> wrapper);
   	
   
}

