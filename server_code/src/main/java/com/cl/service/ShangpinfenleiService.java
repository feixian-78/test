package com.cl.service;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.extension.service.IService;
import com.cl.utils.PageUtils;
import com.cl.entity.ShangpinfenleiEntity;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.ShangpinfenleiView;


/**
 * 商品分类
 *
 * @author 
 * @email 
 * @date 2025-02-19 14:42:17
 */
public interface ShangpinfenleiService extends IService<ShangpinfenleiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ShangpinfenleiView> selectListView(Wrapper<ShangpinfenleiEntity> wrapper);
   	
   	ShangpinfenleiView selectView(@Param("ew") Wrapper<ShangpinfenleiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ShangpinfenleiEntity> wrapper);
   	
   
}

